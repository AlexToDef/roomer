  window.users = {
    368: {
      id: 368
      coords: { x: 779, y: 459 },
      name: 'Илья Рогозин',
      status: 3,
      avatar: 'http://avatarfiles.alphacoders.com/454/45468.png',
      roomId: 1
      lastOnline: '3 минуты назад'
      occupation: 'Тимлид'
    },
    1076: {
      id: 1076
      coords: { x: 645, y: 544 },
      name: 'Олег Федоткин',
      status: 1,
      avatar: 'http://avatarfiles.alphacoders.com/516/51684.png',
      roomId: 1
      lastOnline: '3 минуты назад'
      occupation: 'Программист'
    },
    101: {
      id: 101
      coords: { x: 682, y: 521 },
      name: 'Антон Сатин',
      status: 2,
      avatar: 'http://s019.radikal.ru/i601/1601/28/4377252fe114.png',
      roomId: 1
      lastOnline: '3 минуты назад'
      occupation: 'Программист'
    },
    102: {
      id: 102
      coords: { x: 572, y: 591 },
      name: 'Юрий Костылев',
      status: 1,
      avatar: 'http://avatarfiles.alphacoders.com/454/45468.png',
      roomId: 1
      lastOnline: '3 минуты назад'
      occupation: 'Программист'
    },
    103: {
      id: 103
      coords: { x: 623, y: 533 },
      name: 'Алексей',
      status: 4,
      avatar: 'http://avatarfiles.alphacoders.com/454/45468.png',
      roomId: 1
      lastOnline: '3 минуты назад'
      occupation: 'Программист'
    },
    104: {
      id: 104
      coords: { x: 658, y: 509 },
      name: 'Борис Гущин',
      status: 3,
      avatar: 'http://avatarfiles.alphacoders.com/454/45468.png',
      roomId: 1
      occupation: 'Программист'
    },
    105: {
      id: 105
      coords: { x: 695, y: 483 },
      name: 'Андрей',
      status: 2,
      avatar: 'http://avatarfiles.alphacoders.com/454/45468.png',
      roomId: 1
      lastOnline: '3 минуты назад'
    },
    106: {
      id: 106
      coords: { x: 730, y: 458 },
      name: 'Александр',
      status: 1,
      avatar: 'http://avatarfiles.alphacoders.com/454/45468.png',
      roomId: 1
      lastOnline: '3 минуты назад'
      occupation: 'Программист'
    },
    107: {
      id: 107
      coords: { x: 764, y: 434 },
      name: 'Артур Егоров',
      status: 1,
      avatar: 'http://avatarfiles.alphacoders.com/454/45468.png',
      roomId: 1
      lastOnline: '3 минуты назад'
      occupation: 'Программист'
    },

    501: {
      id: 501
      coords: { x: 85, y: 427 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 3
    },
    502: {
      id: 502
      coords: { x: 412, y: 39 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    503: {
      id: 503
      coords: { x: 392, y: 66 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
  }

document.addEventListener 'DOMContentLoaded', ->

  window.sqRoomer = class Roomer

    constructor: (svg, users) ->
      @svg = d3.select(svg)
      @users = users
      @svgOffset = @getContainerTranslate(d3.select('.roomer'))
      @width = d3.select(svg).attr('width')
      @height = d3.select(svg).attr('height')
      @scale = 2.5

    svgOffsetToString: =>
      "-#{@svgOffset.x}, -#{@svgOffset.y}"

    getOriginalElement: (element) ->
      element[0][0]

    getContainerTranslate: (container) ->
      transformArray = container.attr('transform').match(/\d+/g)
      { x: parseInt(transformArray[0]) || 0, y: parseInt(transformArray[1]) || 0 }

    getElementTranslate: (container) ->
      transformArray = container.style('transform').match(/\d+/g)
      { x: parseInt(transformArray[0]) || 0, y: parseInt(transformArray[1]) || 0 }


    setUserElementsVisibility: (zoomed) ->
      d3.selectAll('.roomer__user-contour').classed('invisible', zoomed)
      d3.selectAll('.roomer__user-dot').classed('invisible', zoomed)
      d3.selectAll('.roomer__user-info').classed('invisible', !zoomed)

    hideOtherUsers: (element) ->
      roomId = element.attr 'data-room-id'
      d3.selectAll(".roomer__user:not([data-room-id='#{roomId}'])").classed 'invisible', true

    showAllUsers: ->
      d3.selectAll('.roomer__user').classed 'invisible', false

    zoomOnElement: (element) ->
      d3.selectAll('.roomer__room-contour_zoomed').classed 'roomer__room-contour_zoomed', false

      el = element
      parentEl = d3.select(@getOriginalElement(el).parentElement)
      rectEl = d3.select(@getOriginalElement(parentEl)).select('rect')

      zoomCoordinates = @getContainerTranslate(parentEl)

      scale = 2.5
      @xTranslate = -zoomCoordinates.x - @svgOffset.x + @width/(2*scale) - rectEl.attr('width')/2
      @yTranslate = -zoomCoordinates.y - @svgOffset.y + @height/(2*scale) - rectEl.attr('height')/2

      translateMatrix = "scale(#{scale})"
      translateMatrix += "translate(#{@xTranslate}, #{@yTranslate})"

      d3.select('.roomer').transition().duration(500).attr("transform", translateMatrix)

      el.classed 'roomer__room-contour_zoomed', true
      @setUserElementsVisibility(true)
      @showAllUsers()
      @hideOtherUsers(element)

      d3.selectAll('.roomer__user-avatar').transition().duration(500)
        .attr('height', +14)
        .attr('width', +14)

    releaseZoomOnElement: (element) ->
      element = @getOriginalElement(element)
      translateMatrix = "translate(" + -@svgOffset.x + "," + -@svgOffset.y + ")scale(" + 1 + ")"

      d3.select('.roomer').transition().duration(500).attr("transform", translateMatrix);

      d3.select(element).classed 'roomer__room-contour_zoomed', false
      setTimeout (->
        @setUserElementsVisibility(false)
        @showAllUsers()
        ).bind(@),
      400

      d3.selectAll('.roomer__user-avatar').transition().duration(500)
        .attr('height', +10)
        .attr('width', +10)

    setListeners: ->
      self = @
      d3.selectAll('.roomer__room')
        .on('click', ->
          element = d3.select(d3.event.toElement)

          unless element.classed('roomer__room-contour')
            element = d3.select(self.getOriginalElement(element).parentElement).select('path')

          if element.classed('roomer__room-contour_zoomed')
            self.releaseZoomOnElement(element)
          else
            self.zoomOnElement(element)
        )
        .on('mouseenter', ->
          d3.select(this).classed('roomer__room_hovered', true)
        )
        .on('mouseleave', ->
          d3.select(this).classed('roomer__room_hovered', false)
        )
      d3.selectAll('.roomer__user-avatar')
        .on 'click', ->
          user = users[d3.select(@).attr('data-user-id')]

          console.log d3.select(@)


          modal = d3.select('.roomer-modal')
          modal.classed 'roomed-modal__visible', true

          d3.select('.roomer-modal__title').html(user.name)
          d3.select('.roomer-modal__description').html(user.occupation)
          if user.status == 2
            d3.select('.roomer-modal__info').html(user.lastOnline)
          else
            d3.select('.roomer-modal__info').html('Online')

          offset = self.getContainerTranslate(d3.select('.roomer'))

          console.log parseInt(d3.select(@).attr('x'))
          widthDifference = $(r.svg[0][0]).width() - r.svg.attr('width')
          heightDifference = $(r.svg[0][0]).height() - r.svg.attr('height')

          trX = ((parseInt(d3.select(@).attr('x'))) - Math.abs(self.xTranslate))*self.scale + widthDifference/2 + Math.abs(self.svgOffset.x/2) - $(modal[0][0]).width()/2 - 17
          trY = (parseInt(d3.select(@).attr('y')) - Math.abs(self.yTranslate))*self.scale + heightDifference - $(modal[0][0]).height() - 24

          modal
          .style 'left', "#{trX}px"
          .style 'top', "#{trY}px"
          .classed 'roomed-modal_visible', true
      d3.select('body')
        .on 'click', ->
          if self.getOriginalElement(d3.select('.roomer__user:hover')) == null
            d3.select('.roomer-modal').classed 'roomed-modal_visible', false

    setData: ->
      console.log 'setdata'
      (new sqRoomBuilder(@svg, @users)).initialize()

    initialize: ->
      @setListeners()
      @setData()


  (new sqRoomer('svg', users)).initialize()

