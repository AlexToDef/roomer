document.addEventListener 'DOMContentLoaded', ->

  window.sqRoomBuilder = class RoomBuilder

    constructor: (svg, users) ->
      @svg = svg
      @users = users

      @iconPlane = 'M8.81636723,0.990120933 C8.98302397,1.1870789 9.00574955,1.46736103 8.88454464,1.83097573 C8.76333974,2.19459044 8.55880954,2.52032372 8.2709479,2.80818536 L7.35623423,3.72289903 L8.26526645,7.67718917 C8.28420471,7.74915458 8.26147914,7.81164992 8.19708903,7.86467706 L7.46986326,8.41009639 C7.44334969,8.43282231 7.40736752,8.4441851 7.36191568,8.4441851 C7.34676507,8.4441851 7.33350848,8.4422913 7.32214552,8.43850365 C7.26533073,8.42714069 7.22556096,8.39683992 7.20283505,8.34760043 L5.61771012,5.46142314 L4.14621422,6.93291904 L4.44733114,8.0351206 C4.46626941,8.09951071 4.45111902,8.15821845 4.40187953,8.21124559 L3.8564602,8.75666492 C3.82237132,8.7907538 3.77881397,8.80779799 3.72578682,8.80779799 L3.71442392,8.80779799 C3.65760912,8.80022268 3.61215797,8.7756033 3.57806909,8.73393912 L2.50427478,7.30221338 L1.07254904,6.22841907 C1.03088486,6.2019055 1.00626548,6.15834814 0.998690175,6.09774569 C0.994902522,6.0485062 1.01194671,6.00116125 1.04982324,5.95570941 L1.59524257,5.40460863 C1.62933145,5.37051975 1.6728888,5.35347557 1.72591595,5.35347557 C1.74864187,5.35347557 1.76379225,5.35536937 1.77136756,5.35915702 L2.87356912,5.66027394 L4.34506502,4.18877804 L1.45888773,2.60365312 C1.40586059,2.57335189 1.37366602,2.52790073 1.36230306,2.46729828 C1.35472776,2.40669583 1.37177194,2.35556328 1.41343612,2.3138991 L2.1406619,1.58667332 C2.19368904,1.53743383 2.25050299,1.52228345 2.31110544,1.54122171 L6.08927058,2.44457248 L6.9983028,1.53554026 C7.28616444,1.24767862 7.61189772,1.04314842 7.97551243,0.921943517 C8.33912713,0.800738615 8.61940926,0.823464194 8.81636723,0.990120933 L8.81636723,0.990120933 Z'
      @userDotRadius = 4
      @userDotContourRadius = 8
      @avatarRadius = 7
      @avatarStatusDotRadius = 1.5
      @mainTransforms = {
        x: -55
        y: -65
      }


    userStatusDot: (d, refObject) ->
      switch d.status
        when 4
          d3.select(document.createElementNS(d3.ns.prefix.svg, 'svg'))
          .append('path')
          .attr('d', refObject.iconPlane)
          .attr('transform', "translate(#{d.coords.x - 4 - refObject.mainTransforms.x - 1}, #{d.coords.y - refObject.mainTransforms.y - 4 -1})")
          .classed('roomer__user-dot', true)
          .classed('roomer__user-dot_on-vacation', true)
          .attr 'fill', 'red'
        else
          d3.select(document.createElementNS(d3.ns.prefix.svg, 'circle'))
          .attr('cx', d.coords.x + Math.abs refObject.mainTransforms.x)
          .attr('cy', d.coords.y + Math.abs refObject.mainTransforms.y)
          .classed('roomer__user-dot', true)
          .classed('roomer__user-dot_active', d.status == 1)
          .classed('roomer__user-dot_inactive', d.status == 2)
          .classed('roomer__user-dot_absent', d.status == 3)
          .attr('r', refObject.userDotRadius)

    userAvatarDot: (d, refObject) =>
      console.log @
      scale = 2.5
      switch d.status
        when 4
          d3.select(document.createElementNS(d3.ns.prefix.svg, 'svg'))
          .append('path')
          .attr('d', @iconPlane)
          .attr('transform', "scale(#{1/scale})translate(#{d.coords.x*scale + refObject.avatarRadius*scale + Math.abs(refObject.mainTransforms.x*scale) - 1*scale}, #{d.coords.y*scale - refObject.avatarRadius*scale + Math.abs(refObject.mainTransforms.y*scale) - 1*scale})")
          .classed('roomer__user-info-status', true)
          .classed('roomer__user-info-status_on-vacation', true)
          .attr 'fill', 'red'
        else
          d3.select(document.createElementNS(d3.ns.prefix.svg, 'circle'))
          .attr('cx', d.coords.x + Math.abs @mainTransforms.x - @avatarRadius)
          .attr('cy', d.coords.y + Math.abs @mainTransforms.y + @avatarRadius)
          .classed('roomer__user-info-status', true)
          .classed('roomer__user-dot_active', d.status == 1)
          .classed('roomer__user-dot_inactive', d.status == 2)
          .classed('roomer__user-dot_absent', d.status == 3)
          .attr('r', @avatarStatusDotRadius)

    initialize: =>
      self = @
      containers = d3.select('svg > g')
        .selectAll('circle')
        .data(d3.values(@users))
        .enter()
        .append('g')
        .classed('roomer__user', true)
        .attr('data-room-id', (d) -> d.roomId)
        .attr('data-user-id', (d) -> d.id)
        .attr('cx', (d) -> d.coords.x + Math.abs self.mainTransforms.x)
        .attr('cy', (d) -> d.coords.y + Math.abs self.mainTransforms.y)
      containers
        .append('circle')
        .attr('cx', (d) -> d.coords.x + Math.abs self.mainTransforms.x)
        .attr('cy', (d) -> d.coords.y + Math.abs self.mainTransforms.y)
        .attr('r', self.userDotContourRadius)
        .classed('roomer__user-contour', true)
      containers
        .append((d) -> self.userStatusDot(d, self)[0][0])
      userInfo = d3.selectAll('.roomer__user')
        .append('g')
        .classed('roomer__user-info', true)
        .classed('invisible', true)
        .attr('cx', (d) -> d.coords.x + Math.abs self.mainTransforms.x)
        .attr('cy', (d) -> d.coords.y + Math.abs self.mainTransforms.y)
      userInfo
        .append('circle')
        .attr('cx', (d) -> d.coords.x + Math.abs self.mainTransforms.x)
        .attr('cy', (d) -> d.coords.y + Math.abs self.mainTransforms.y)
        .attr('r', 7)
        .classed('roomer__user-avatar-container', true)
      userInfo
        .append('image')
        .classed('roomer__user-avatar', true)
        .attr('x', (d) -> d.coords.x + Math.abs self.mainTransforms.x + self.avatarRadius)
        .attr('y', (d) -> d.coords.y + Math.abs self.mainTransforms.y + self.avatarRadius)
        .attr('data-user-id', (d) -> d.id)
        .attr('width', self.avatarRadius*2 - 4)
        .attr('height', self.avatarRadius*2 - 4)
        .attr('href', (d) -> d.avatar || '')
      userInfo
        .append((d) -> self.userAvatarDot(d, self)[0][0])

      modal = d3.select('.rcontainer')
        .append('div')
        .classed 'roomer-modal', true
        .classed 'roomed-modal_visible', false
      header = modal
        .append 'div'
        .classed 'roomer-modal__header', true
      header
        .append 'div'
        .classed 'roomer-modal__title', true
      header
        .append 'div'
        .classed 'roomer-modal__description', true
      modal
        .append 'div'
        .classed 'roomer-modal__info', true