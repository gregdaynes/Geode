# Avoid `console` errors in browsers that lack a console.
() ->
  method;
  noop = () ->

  methods = [
    'assert', 'clear', 'debug', 'dir', 'dirxml', 'error', 'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log', 'markTimeline', 'profile', 'profileEnd', 'table', 'time', 'timeEnd', 'timeStamp', 'trace', 'warn'
  ]

  length = methods.length
  console = ( window.console = window.console || {} );

  while length > 0
    method = methods[length]
    
    # Only stub undefined methods.
    if console[method]?
      console[method] = noop

    length - 1