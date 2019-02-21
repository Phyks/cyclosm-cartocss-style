/* ==================================================================
                    ROAD & RAIL LINES
/* ================================================================== */

/* At lower zoomlevels, just show major automobile routes: motorways
and trunks. */

#roads_low[zoom>=5][zoom<=8] {
  [type='motorway'] { line-color: @motorway-line; }
  [type='trunk'] { line-color: @trunk-line; }
  [zoom=5] {
    [type='motorway'] { line-width: 0.4; }
  [type='trunk'] { line-width: 0.2; } }
  [zoom=6] {
    [type='motorway'] { line-width: 0.5; }
  [type='trunk'] { line-width: 0.25; } }
  [zoom=7] {
    [type='motorway'] { line-width: 0.6; }
  [type='trunk'] { line-width: 0.3; } }
  [zoom=8] {
    [type='motorway'] { line-width: 1; }
  [type='trunk'] { line-width: 0.5; } }
}

/* At mid-level scales start to show primary and secondary routes
as well. */

#roads_med[zoom>=9][zoom<=10] {
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway-line;
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk-line;
  }
  [type='primary'] { line-color: @primary-line; }
  [type='secondary'] { line-color: @secondary-line; }
  [type='tertiary'] { line-color: @standard-line; }
  [zoom=9] {
    [type='motorway'],[type='trunk'] { line-width: 1.4; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.6; }
  }
  [zoom=10] {
    [type='motorway'],[type='trunk'] { line-width: 1.8; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.8; }
  }
}

/* At higher levels the roads become more complex. We're now showing
more than just automobile routes - railways, footways, and cycleways
come in as well.

/* ---------------------------------------------------------- */
/* ---------------- Variables ------------------------------- */
/* ---------------------------------------------------------- */
/*
 * Road width variables that are used in road & bridge styles.
 *
 * Roads are drawn in two steps. First, a line if the width of the road + the
 * two borders is drawn and then a line of the width of the road is drawn on
 * top, to make a road with borders. Here, the width of the ways is the width
 * of the fill of the road and the border width is the width of a single
 * border, on one side (first line is drawn with a width of way with + 2 *
 * border_width).
 */

/* -- Zoom 11 -- */
/* Width of ways */
@rdz11_motorway: 1.6;
@rdz11_mainroad: 0.8;
@rdz11_minorroad: 0;
@rdz11_service: 0;
@rdz11_pedestrian: 0;
@rdz11_steps: @rdz11_pedestrian;
@rdz11_cycle: 0.5;
@rdz11_railway: 0.2;
/* Border width (one side of the road only) */
@rdz11_motorway_outline: 1;
@rdz11_mainroad_outline: 0.8;
@rdz11_minorroad_outline: 0.15;
@rdz11_service_outline: 0;
@rdz11_pedestrian_outline: 0;
@rdz11_steps_outline: 0;
@rdz11_cycle_outline: 0;
@rdz11_railway_outline: 0;

/* -- Zoom 12 -- */
@rdz12_motorway: 2.5;
@rdz12_mainroad: 1.2;
@rdz12_minorroad: 0.5;
@rdz12_service: 0;
@rdz12_pedestrian: 0;
@rdz12_steps: @rdz12_pedestrian;
@rdz12_cycle: 1;
@rdz12_railway: 0.4;
/* Border width (one side of the road only) */
@rdz12_motorway_outline: 1;
@rdz12_mainroad_outline: 1;
@rdz12_minorroad_outline: 0.25;
@rdz12_service_outline: 0;
@rdz12_pedestrian_outline: 0;
@rdz12_steps_outline: 0;
@rdz12_cycle_outline: 0;
@rdz12_railway_outline: 0;

/* -- Zoom 13 -- */
@rdz13_motorway: 3;
@rdz13_mainroad: 1.5;
@rdz13_minorroad: 0.6;
@rdz13_tertiary: 1;
@rdz13_service: @rdz13_minorroad / 3;
@rdz13_pedestrian: 0.20;
@rdz13_steps: @rdz13_pedestrian;
@rdz13_cycle: 1;
@rdz13_railway: 0.8;
/* Border width (one side of the road only) */
@rdz13_motorway_outline: 1;
@rdz13_mainroad_outline: 1;
@rdz13_minorroad_outline: 0.6;
@rdz13_tertiary_outline: 1;
@rdz13_service_outline: 0;
@rdz13_pedestrian_outline: 0;
@rdz13_steps_outline: 0;
@rdz13_cycle_outline: 0;
@rdz13_railway_outline: 0;

/* -- Zoom 14 -- */
@rdz14_motorway: 4;
@rdz14_mainroad: 2.8;
@rdz14_minorroad: 1;
@rdz14_service: @rdz14_minorroad / 3;
@rdz14_pedestrian: 0.25;
@rdz14_steps: @rdz14_pedestrian;
@rdz14_cycle: 2;
@rdz14_railway: 1.0;
/* Border width */
/* Border width (one side of the road only) */
@rdz14_motorway_outline: 1;
@rdz14_mainroad_outline: 1;
@rdz14_minorroad_outline: 1;
@rdz14_service_outline: 0;
@rdz14_pedestrian_outline: 0;
@rdz14_steps_outline: 0;
@rdz14_cycle_outline: 0;
@rdz14_railway_outline: 0;

/* -- Zoom 15 -- */
@rdz15_motorway: 6;
@rdz15_mainroad: 4;
@rdz15_minorroad: 1.5;
@rdz15_service: @rdz15_minorroad / 3;
@rdz15_pedestrian: 0.5;
@rdz15_steps: @rdz15_pedestrian;
@rdz15_cycle: 2;
@rdz15_railway: 1.5;
/* Border width (one side of the road only) */
@rdz15_motorway_outline: 1.25;
@rdz15_mainroad_outline: 1;
@rdz15_minorroad_outline: 1;
@rdz15_service_outline: 1;
@rdz15_pedestrian_outline: 0;
@rdz15_steps_outline: 1;
@rdz15_cycle_outline: 0;
@rdz15_railway_outline: 1;

/* -- Zoom 16 -- */
@rdz16_motorway: 10;
@rdz16_mainroad: 8;
@rdz16_minorroad: 4;
@rdz16_service: @rdz16_minorroad / 3;
@rdz16_pedestrian: 0.75;
@rdz16_steps: @rdz16_pedestrian;
@rdz16_cycle: 2;
@rdz16_railway: 2;
/* Border width (one side of the road only) */
@rdz16_motorway_outline: 1.25;
@rdz16_mainroad_outline: 1.25;
@rdz16_minorroad_outline: 1;
@rdz16_service_outline: 1;
@rdz16_pedestrian_outline: 0;
@rdz16_steps_outline: 1;
@rdz16_cycle_outline: 0;
@rdz16_railway_outline: 1;

/* -- Zoom 17 -- */
@rdz17_motorway: 17;
@rdz17_mainroad: 15;
@rdz17_minorroad: 10;
@rdz17_service: @rdz17_minorroad / 3;
@rdz17_pedestrian: 1;
@rdz17_steps: @rdz17_pedestrian;
@rdz17_cycle: 3;
@rdz17_railway: 3;
/* Border width (one side of the road only) */
@rdz17_motorway_outline: 1.5;
@rdz17_mainroad_outline: 1.25;
@rdz17_minorroad_outline: 1;
@rdz17_service_outline: 1;
@rdz17_pedestrian_outline: 0;
@rdz17_steps_outline: 1;
@rdz17_cycle_outline: 0;
@rdz17_railway_outline: 2;

/* -- Zoom 18 -- */
@rdz18_motorway: 23;
@rdz18_mainroad: 20;
@rdz18_minorroad: 14;
@rdz18_service: @rdz18_minorroad / 2;
@rdz18_pedestrian: 1.5;
@rdz18_steps: 2;
@rdz18_cycle: 4;
@rdz18_railway: 4;
/* Border width (one side of the road only) */
@rdz18_motorway_outline: 2;
@rdz18_mainroad_outline: 2;
@rdz18_minorroad_outline: 1.75;
@rdz18_service_outline: 1.75;
@rdz18_pedestrian_outline: 0;
@rdz18_steps_outline: 1;
@rdz18_cycle_outline: 0;
@rdz18_railway_outline: 3;


/* ---- Casing ----------------------------------------------- */

/* Line to draw both borders (left and right) */
#roads_high::outline[zoom>=11],
#tunnel::outline[zoom>=11],
#bridge::outline[zoom>=11] {
  line-cap: round;

  line-join: round;

  line-color: @standard-case;
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway-case;
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk-case;
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: @primary-case;
  }
  [type='secondary'],
  [type='secondary_link'] {
    line-color: @secondary-case;
  }
  [cycleway='lane'],
  [cycleway='opposite_lane'] {
    line-color: @cycle_lane_case;
    line-dasharray: 6,3;
    line-cap: butt;
  }
  [cycleway='track'],
  [cycleway='opposite_track'] {
    line-color: @cycle_track_case;
    line-cap: butt;
  }
  [cycleway='share_busway'],
  [cycleway='opposite_share_busway'] {
    line-color: @cycle_busway_case;
    line-dasharray: 6,10;
    line-cap: butt;
  }
  [stylegroup='steps']{
    line-color: @steps-case;
    [ramp_cycle='yes'],[ramp_wheelchair='yes'],[ramp_stroller='yes']{
      line-color: fadeout(@cycle_lane_case, 50%);
    }
  }
  [stylegroup='railway'] {
    line-color: fadeout(@land,50%);
  }
  [stylegroup='pedestrian'][bicycle='no'] {
    line-opacity: 0;
  }

  /* -- widths -- */
  [zoom=11] {
    [stylegroup='motorway']     { line-width: @rdz11_motorway + (2 * @rdz11_motorway_outline); }
    [stylegroup='mainroad']     { line-width: @rdz11_mainroad + (2 * @rdz11_mainroad_outline); }
    [stylegroup='minorroad']    { line-width: @rdz11_minorroad + (2 * @rdz11_minorroad_outline); }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz11_service + (2 * @rdz11_service_outline); }
    [stylegroup='pedestrian']   { line-width: @rdz11_pedestrian + (2 * @rdz11_pedestrian_outline); }
    [stylegroup='steps']        { line-width: @rdz11_steps + (2 * @rdz11_steps_outline); }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz11_cycle + (2 * @rdz11_cycle_outline);
    }
    [stylegroup='railway']      { line-width: @rdz11_railway + (2 * @rdz11_railway_outline); }
  }
  [zoom=12] {
    [stylegroup='motorway']     { line-width: @rdz12_motorway + (2 * @rdz12_motorway_outline); }
    [stylegroup='mainroad']     { line-width: @rdz12_mainroad + (2 * @rdz12_mainroad_outline); }
    [stylegroup='minorroad']    { line-width: @rdz12_minorroad + (2 * @rdz12_minorroad_outline); }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz12_service + (2 * @rdz12_service_outline); }
    [stylegroup='pedestrian']   { line-width: @rdz12_pedestrian + (2 * @rdz12_pedestrian_outline); }
    [stylegroup='steps']        { line-width: @rdz12_steps + (2 * @rdz12_steps_outline); }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz12_cycle + (2 * @rdz12_cycle_outline);
    }
    [stylegroup='railway']      { line-width: @rdz12_railway + (2 * @rdz12_railway_outline); }
  }
  [zoom=13] {
    [stylegroup='motorway']     { line-width: @rdz13_motorway + (2 * @rdz13_motorway_outline); }
    [stylegroup='mainroad']     { line-width: @rdz13_mainroad + (2 * @rdz13_mainroad_outline); }
    [stylegroup='minorroad']    { line-width: @rdz13_minorroad + (2 * @rdz13_minorroad_outline); }
    [stylegroup='minorroad'] [type='tertiary']   { line-width: @rdz13_tertiary + (2 * @rdz13_tertiary_outline); }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz13_service + (2 * @rdz13_service_outline); }
    [stylegroup='pedestrian']   { line-width: @rdz13_pedestrian + (2 * @rdz13_pedestrian_outline); }
    [stylegroup='steps']        { line-width: @rdz13_steps + (2 * @rdz13_steps_outline); }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz13_cycle + (2 * @rdz13_cycle_outline);
    }
    [stylegroup='railway']      { line-width: @rdz13_railway + (2 * @rdz13_railway_outline); }
  }
  [zoom=14] {
    [stylegroup='motorway']     { line-width: @rdz14_motorway + (2 * @rdz14_motorway_outline); }
    [stylegroup='mainroad']     { line-width: @rdz14_mainroad + (2 * @rdz14_mainroad_outline); }
    [stylegroup='minorroad']    { line-width: @rdz14_minorroad + (2 * @rdz14_minorroad_outline); }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz14_service + (2 * @rdz14_service_outline); }
    [stylegroup='pedestrian']   { line-width: @rdz14_pedestrian + (2 * @rdz14_pedestrian_outline); }
    [stylegroup='steps']        { line-width: @rdz14_steps + (2 * @rdz14_steps_outline); }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz14_cycle + (2 * @rdz14_cycle_outline);
    }
    [stylegroup='railway']      { line-width: @rdz14_railway + (2 * @rdz14_railway_outline); }
  }
  [zoom=15] {
    [stylegroup='motorway']     { line-width: @rdz15_motorway + (2 * @rdz15_motorway_outline); }
    [stylegroup='mainroad']     { line-width: @rdz15_mainroad + (2 * @rdz15_mainroad_outline); }
    [stylegroup='minorroad']    { line-width: @rdz15_minorroad + (2 * @rdz15_minorroad_outline); }
    [stylegroup='service']      { line-width: @rdz15_service + (2 * @rdz15_service_outline); }
    [stylegroup='pedestrian']   { line-width: @rdz15_pedestrian + (2 * @rdz15_pedestrian_outline); }
    [stylegroup='steps']        { line-width: @rdz15_steps + (2 * @rdz15_steps_outline); }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz15_cycle + (2 * @rdz15_cycle_outline);
    }
    [stylegroup='railway']      { line-width: @rdz15_railway + (2 * @rdz15_railway_outline); }
  }
  [zoom=16] {
    [stylegroup='motorway']     { line-width: @rdz16_motorway + (2 * @rdz16_motorway_outline); }
    [stylegroup='mainroad']     { line-width: @rdz16_mainroad + (2 * @rdz16_mainroad_outline); }
    [stylegroup='minorroad']    { line-width: @rdz16_minorroad + (2 * @rdz16_minorroad_outline); }
    [stylegroup='service']      { line-width: @rdz16_service + (2 * @rdz16_service_outline); }
    [stylegroup='pedestrian']   { line-width: @rdz16_pedestrian + (2 * @rdz16_pedestrian_outline); }
    [stylegroup='steps']        { line-width: @rdz16_steps + (2 * @rdz16_steps_outline); }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz16_cycle + (2 * @rdz16_cycle_outline);
    }
    [stylegroup='railway']      { line-width: @rdz16_railway + (2 * @rdz16_railway_outline); }
  }
  [zoom>=17] {
    [stylegroup='motorway']     { line-width: @rdz17_motorway + (2 * @rdz17_motorway_outline); }
    [stylegroup='mainroad']     { line-width: @rdz17_mainroad + (2 * @rdz17_mainroad_outline); }
    [stylegroup='minorroad']    { line-width: @rdz17_minorroad + (2 * @rdz17_minorroad_outline); }
    [stylegroup='service']      { line-width: @rdz17_service + (2 * @rdz17_service_outline); }
    [stylegroup='pedestrian']   { line-width: @rdz17_pedestrian + (2 * @rdz17_pedestrian_outline); }
    [stylegroup='steps']        { line-width: @rdz17_steps + (2 * @rdz17_steps_outline); }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz17_cycle + (2 * @rdz17_cycle_outline);
    }
    [stylegroup='railway']      { line-width: @rdz17_railway + (2 * @rdz17_railway_outline); }
  }
  [zoom>=18] {
    [stylegroup='motorway']     { line-width: @rdz18_motorway + (2 * @rdz18_motorway_outline); }
    [stylegroup='mainroad']     { line-width: @rdz18_mainroad + (2 * @rdz18_mainroad_outline); }
    [stylegroup='minorroad']    { line-width: @rdz18_minorroad + (2 * @rdz18_minorroad_outline); }
    [stylegroup='service']      { line-width: @rdz18_service + (2 * @rdz18_service_outline); }
    [stylegroup='pedestrian']   { line-width: @rdz18_pedestrian + (2 * @rdz18_pedestrian_outline); }
    [stylegroup='steps']        { line-width: @rdz18_steps + (2 * @rdz18_steps_outline); }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz18_cycle + (2 * @rdz18_cycle_outline);
    }
    [stylegroup='railway']      { line-width: @rdz18_railway + (2 * @rdz18_railway_outline); }
  }
}

#tunnel::outline[zoom>=11],
#bridge::outline[zoom>=11] {
  line-cap: butt;
}

#bridge::outline[zoom>=11] {
  line-color: @standard-case * 0.8;

  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway-case * 0.8;
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk-case * 0.8;
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: @primary-case * 0.8;
  }
  [type='secondary'],
  [type='secondary_link'] {
    line-color: @secondary-case * 0.8;
  }
  [stylegroup='railway'] {
    line-color: @secondary-case * 0.8;
  }
}

#tunnel::outline[zoom>=11] {
  line-dasharray: 3,3;
}

/* Eventually overload right border for cycleways
 *
 * First hide the casing on this side of the road, then show cycleway.
 */
#roads_high::reset_outline_right[zoom>=11][cycleway_right='lane'],
#roads_high::reset_outline_right[zoom>=11][cycleway_right='opposite_lane'],
#roads_high::reset_outline_right[zoom>=11][cycleway_right='track'],
#roads_high::reset_outline_right[zoom>=11][cycleway_right='opposite_track'],
#roads_high::reset_outline_right[zoom>=11][cycleway_right='share_busway'],
#roads_high::reset_outline_right[zoom>=11][cycleway_right='opposite_share_busway'],
#tunnel::reset_outline_right[zoom>=11][cycleway_right='lane'],
#tunnel::reset_outline_right[zoom>=11][cycleway_right='opposite_lane'],
#tunnel::reset_outline_right[zoom>=11][cycleway_right='track'],
#tunnel::reset_outline_right[zoom>=11][cycleway_right='opposite_track'],
#tunnel::reset_outline_right[zoom>=11][cycleway_right='share_busway'],
#tunnel::reset_outline_right[zoom>=11][cycleway_right='opposite_share_busway'],
#bridge::reset_outline_right[zoom>=11][cycleway_right='lane'],
#bridge::reset_outline_right[zoom>=11][cycleway_right='opposite_lane'],
#bridge::reset_outline_right[zoom>=11][cycleway_right='track'],
#bridge::reset_outline_right[zoom>=11][cycleway_right='opposite_track'],
#bridge::reset_outline_right[zoom>=11][cycleway_right='share_busway'],
#bridge::reset_outline_right[zoom>=11][cycleway_right='opposite_share_busway'] {
  /* -- colors & styles -- */
  line-color: @standard-fill;
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway-fill;
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk-fill;
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: @primary-fill;
  }
  [type='secondary'],
  [type='secondary_link'] {
    line-color: @secondary-fill;
  }
  [stylegroup='pedestrian'] {
    line-color: @pedestrian-fill;
  }
  [stylegroup='cycle'],
  [stylegroup='pedestrian'][bicycle='yes'],
  [stylegroup='pedestrian'][bicycle='designated'] {
    line-color: @cycle-fill;
  }
  [stylegroup='steps'] {
    line-color: @steps-fill;
  }

  /* widths */
  [zoom=11] {
    [stylegroup='motorway']     { line-width: @rdz11_motorway + @rdz11_motorway_outline; line-offset: @rdz11_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz11_mainroad + @rdz11_mainroad_outline; line-offset: @rdz11_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz11_minorroad + @rdz11_minorroad_outline; line-offset: @rdz11_minorroad_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz11_service + @rdz11_service_outline; line-offset: @rdz11_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz11_pedestrian + @rdz11_pedestrian_outline; line-offset: @rdz11_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz11_cycle + @rdz11_cycle_outline;
      line-offset: @rdz11_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz11_railway + @rdz11_railway_outline; line-offset: @rdz11_railway_outline; }
  }
  [zoom=12] {
    [stylegroup='motorway']     { line-width: @rdz12_motorway + @rdz12_motorway_outline; line-offset: @rdz12_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz12_mainroad + @rdz12_mainroad_outline; line-offset: @rdz12_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz12_minorroad + @rdz12_minorroad_outline; line-offset: @rdz12_minorroad_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz12_service + @rdz12_service_outline; line-offset: @rdz12_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz12_pedestrian + @rdz12_pedestrian_outline; line-offset: @rdz12_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz12_cycle + @rdz12_cycle_outline;
      line-offset: @rdz12_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz12_railway + @rdz12_railway_outline; line-offset: @rdz12_railway_outline; }
  }
  [zoom=13] {
    [stylegroup='motorway']     { line-width: @rdz13_motorway + @rdz13_motorway_outline; line-offset: @rdz13_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz13_mainroad + @rdz13_mainroad_outline; line-offset: @rdz13_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz13_minorroad + @rdz13_minorroad_outline; line-offset: @rdz13_minorroad_outline; }
    [stylegroup='minorroad'][type='tertiary']   { line-width: @rdz13_tertiary + @rdz13_tertiary_outline; line-offset: @rdz13_tertiary_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz13_service + @rdz13_service_outline; line-offset: @rdz13_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz13_pedestrian + @rdz13_pedestrian_outline; line-offset: @rdz13_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz13_cycle + @rdz13_cycle_outline;
      line-offset: @rdz13_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz13_railway + @rdz13_railway_outline; line-offset: @rdz13_railway_outline; }
  }
  [zoom=14] {
    [stylegroup='motorway']     { line-width: @rdz14_motorway + @rdz14_motorway_outline; line-offset: @rdz14_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz14_mainroad + @rdz14_mainroad_outline; line-offset: @rdz14_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz14_minorroad + @rdz14_minorroad_outline; line-offset: @rdz14_minorroad_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz14_service + @rdz14_service_outline; line-offset: @rdz14_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz14_pedestrian + @rdz14_pedestrian_outline; line-offset: @rdz14_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz14_cycle + @rdz14_cycle_outline;
      line-offset: @rdz14_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz14_railway + @rdz14_railway_outline; line-offset: @rdz14_railway_outline; }
  }
  [zoom=15] {
    [stylegroup='motorway']     { line-width: @rdz15_motorway + @rdz15_motorway_outline; line-offset: @rdz15_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz15_mainroad + @rdz15_mainroad_outline; line-offset: @rdz15_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz15_minorroad + @rdz15_minorroad_outline; line-offset: @rdz15_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz15_service + @rdz15_service_outline; line-offset: @rdz15_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz15_pedestrian + @rdz15_pedestrian_outline; line-offset: @rdz15_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz15_cycle + @rdz15_cycle_outline;
      line-offset: @rdz15_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz15_railway + @rdz15_railway_outline; line-offset: @rdz15_railway_outline; }
  }
  [zoom=16] {
    [stylegroup='motorway']     { line-width: @rdz16_motorway + @rdz16_motorway_outline; line-offset: @rdz16_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz16_mainroad + @rdz16_mainroad_outline; line-offset: @rdz16_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz16_minorroad + @rdz16_minorroad_outline; line-offset: @rdz16_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz16_service + @rdz16_service_outline; line-offset: @rdz16_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz16_pedestrian + @rdz16_pedestrian_outline; line-offset: @rdz16_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz16_cycle + @rdz16_cycle_outline;
      line-offset: @rdz16_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz16_railway + @rdz16_railway_outline; line-offset: @rdz16_railway_outline; }
  }
  [zoom>=17] {
    [stylegroup='motorway']     { line-width: @rdz17_motorway + @rdz17_motorway_outline; line-offset: @rdz17_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz17_mainroad + @rdz17_mainroad_outline; line-offset: @rdz17_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz17_minorroad + @rdz17_minorroad_outline; line-offset: @rdz17_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz17_service + @rdz17_service_outline; line-offset: @rdz17_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz17_pedestrian + @rdz17_pedestrian_outline; line-offset: @rdz17_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz17_cycle + @rdz17_cycle_outline;
      line-offset: @rdz17_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz17_railway + @rdz17_railway_outline; line-offset: @rdz17_railway_outline; }
  }
  [zoom>=18] {
    [stylegroup='motorway']     { line-width: @rdz18_motorway + @rdz18_motorway_outline; line-offset: @rdz18_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz18_mainroad + @rdz18_mainroad_outline; line-offset: @rdz18_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz18_minorroad + @rdz18_minorroad_outline; line-offset: @rdz18_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz18_service + @rdz18_service_outline; line-offset: @rdz18_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz18_pedestrian + @rdz18_pedestrian_outline; line-offset: @rdz18_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz18_cycle + @rdz18_cycle_outline;
      line-offset: @rdz18_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz18_railway + @rdz18_railway_outline; line-offset: @rdz18_railway_outline; }
  }
}

#tunnel::reset_outline_right[zoom>=11][cycleway_right='lane'],
#tunnel::reset_outline_right[zoom>=11][cycleway_right='opposite_lane'],
#tunnel::reset_outline_right[zoom>=11][cycleway_right='track'],
#tunnel::reset_outline_right[zoom>=11][cycleway_right='opposite_track'],
#tunnel::reset_outline_right[zoom>=11][cycleway_right='share_busway'],
#tunnel::reset_outline_right[zoom>=11][cycleway_right='opposite_share_busway'] {
  [type='motorway'],
  [type='motorway_link'] {
    line-color: lighten(@motorway-fill, 10%);
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: lighten(@trunk-fill, 10%);
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: lighten(@primary-fill, 10%);
  }
  [type='secondary'],
  [type='secondary_link'] {
    line-color: lighten(@secondary-fill, 10%);
  }
}

#roads_high::outline_right[zoom>=11][cycleway_right='lane'],
#roads_high::outline_right[zoom>=11][cycleway_right='opposite_lane'],
#roads_high::outline_right[zoom>=11][cycleway_right='track'],
#roads_high::outline_right[zoom>=11][cycleway_right='opposite_track'],
#roads_high::outline_right[zoom>=11][cycleway_right='share_busway'],
#roads_high::outline_right[zoom>=11][cycleway_right='opposite_share_busway'],
#tunnel::outline_right[zoom>=11][cycleway_right='lane'],
#tunnel::outline_right[zoom>=11][cycleway_right='opposite_lane'],
#tunnel::outline_right[zoom>=11][cycleway_right='track'],
#tunnel::outline_right[zoom>=11][cycleway_right='opposite_track'],
#tunnel::outline_right[zoom>=11][cycleway_right='share_busway'],
#tunnel::outline_right[zoom>=11][cycleway_right='opposite_share_busway'],
#bridge::outline_right[zoom>=11][cycleway_right='lane'],
#bridge::outline_right[zoom>=11][cycleway_right='opposite_lane'],
#bridge::outline_right[zoom>=11][cycleway_right='track'],
#bridge::outline_right[zoom>=11][cycleway_right='opposite_track'],
#bridge::outline_right[zoom>=11][cycleway_right='share_busway'],
#bridge::outline_right[zoom>=11][cycleway_right='opposite_share_busway'] {
  /* -- colors & styles -- */
  [cycleway_right='lane'],
  [cycleway_right='opposite_lane'] {
    line-color: @cycle_lane_case;
    line-dasharray: 6,3;
    line-cap: butt;
  }
  [cycleway_right='track'],
  [cycleway_right='opposite_track'] {
    line-color: @cycle_track_case;
    line-cap: butt;
  }
  [cycleway_right='share_busway'],
  [cycleway_right='opposite_share_busway'] {
    line-color: @cycle_busway_case;
    line-dasharray: 6,10;
    line-cap: butt;
  }

  /* widths */
  [zoom=11] {
    [stylegroup='motorway']     { line-width: @rdz11_motorway + @rdz11_motorway_outline; line-offset: @rdz11_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz11_mainroad + @rdz11_mainroad_outline; line-offset: @rdz11_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz11_minorroad + @rdz11_minorroad_outline; line-offset: @rdz11_minorroad_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz11_service + @rdz11_service_outline; line-offset: @rdz11_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz11_pedestrian + @rdz11_pedestrian_outline; line-offset: @rdz11_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz11_cycle + @rdz11_cycle_outline;
      line-offset: @rdz11_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz11_railway + @rdz11_railway_outline; line-offset: @rdz11_railway_outline; }
  }
  [zoom=12] {
    [stylegroup='motorway']     { line-width: @rdz12_motorway + @rdz12_motorway_outline; line-offset: @rdz12_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz12_mainroad + @rdz12_mainroad_outline; line-offset: @rdz12_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz12_minorroad + @rdz12_minorroad_outline; line-offset: @rdz12_minorroad_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz12_service + @rdz12_service_outline; line-offset: @rdz12_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz12_pedestrian + @rdz12_pedestrian_outline; line-offset: @rdz12_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz12_cycle + @rdz12_cycle_outline;
      line-offset: @rdz12_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz12_railway + @rdz12_railway_outline; line-offset: @rdz12_railway_outline; }
  }
  [zoom=13] {
    [stylegroup='motorway']     { line-width: @rdz13_motorway + @rdz13_motorway_outline; line-offset: @rdz13_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz13_mainroad + @rdz13_mainroad_outline; line-offset: @rdz13_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz13_minorroad + @rdz13_minorroad_outline; line-offset: @rdz13_minorroad_outline; }
    [stylegroup='minorroad'][type='tertiary']   { line-width: @rdz13_tertiary + @rdz13_tertiary_outline; line-offset: @rdz13_tertiary_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz13_service + @rdz13_service_outline; line-offset: @rdz13_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz13_pedestrian + @rdz13_pedestrian_outline; line-offset: @rdz13_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz13_cycle + @rdz13_cycle_outline;
      line-offset: @rdz13_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz13_railway + @rdz13_railway_outline; line-offset: @rdz13_railway_outline; }
  }
  [zoom=14] {
    [stylegroup='motorway']     { line-width: @rdz14_motorway + @rdz14_motorway_outline; line-offset: @rdz14_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz14_mainroad + @rdz14_mainroad_outline; line-offset: @rdz14_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz14_minorroad + @rdz14_minorroad_outline; line-offset: @rdz14_minorroad_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz14_service + @rdz14_service_outline; line-offset: @rdz14_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz14_pedestrian + @rdz14_pedestrian_outline; line-offset: @rdz14_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz14_cycle + @rdz14_cycle_outline;
      line-offset: @rdz14_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz14_railway + @rdz14_railway_outline; line-offset: @rdz14_railway_outline; }
  }
  [zoom=15] {
    [stylegroup='motorway']     { line-width: @rdz15_motorway + @rdz15_motorway_outline; line-offset: @rdz15_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz15_mainroad + @rdz15_mainroad_outline; line-offset: @rdz15_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz15_minorroad + @rdz15_minorroad_outline; line-offset: @rdz15_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz15_service + @rdz15_service_outline; line-offset: @rdz15_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz15_pedestrian + @rdz15_pedestrian_outline; line-offset: @rdz15_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz15_cycle + @rdz15_cycle_outline;
      line-offset: @rdz15_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz15_railway + @rdz15_railway_outline; line-offset: @rdz15_railway_outline; }
  }
  [zoom=16] {
    [stylegroup='motorway']     { line-width: @rdz16_motorway + @rdz16_motorway_outline; line-offset: @rdz16_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz16_mainroad + @rdz16_mainroad_outline; line-offset: @rdz16_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz16_minorroad + @rdz16_minorroad_outline; line-offset: @rdz16_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz16_service + @rdz16_service_outline; line-offset: @rdz16_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz16_pedestrian + @rdz16_pedestrian_outline; line-offset: @rdz16_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz16_cycle + @rdz16_cycle_outline;
      line-offset: @rdz16_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz16_railway + @rdz16_railway_outline; line-offset: @rdz16_railway_outline; }
  }
  [zoom>=17] {
    [stylegroup='motorway']     { line-width: @rdz17_motorway + @rdz17_motorway_outline; line-offset: @rdz17_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz17_mainroad + @rdz17_mainroad_outline; line-offset: @rdz17_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz17_minorroad + @rdz17_minorroad_outline; line-offset: @rdz17_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz17_service + @rdz17_service_outline; line-offset: @rdz17_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz17_pedestrian + @rdz17_pedestrian_outline; line-offset: @rdz17_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz17_cycle + @rdz17_cycle_outline;
      line-offset: @rdz17_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz17_railway + @rdz17_railway_outline; line-offset: @rdz17_railway_outline; }
  }
  [zoom>=18] {
    [stylegroup='motorway']     { line-width: @rdz18_motorway + @rdz18_motorway_outline; line-offset: @rdz18_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz18_mainroad + @rdz18_mainroad_outline; line-offset: @rdz18_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz18_minorroad + @rdz18_minorroad_outline; line-offset: @rdz18_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz18_service + @rdz18_service_outline; line-offset: @rdz18_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz18_pedestrian + @rdz18_pedestrian_outline; line-offset: @rdz18_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz18_cycle + @rdz18_cycle_outline;
      line-offset: @rdz18_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz18_railway + @rdz18_railway_outline; line-offset: @rdz18_railway_outline; }
  }
}

/* Eventually overload left border for cycleways
 *
 * First hide the casing on this side of the road, then show cycleway.
 */
#roads_high::reset_outline_left[zoom>=11][cycleway_left='lane'],
#roads_high::reset_outline_left[zoom>=11][cycleway_left='opposite_lane'],
#roads_high::reset_outline_left[zoom>=11][cycleway_left='track'],
#roads_high::reset_outline_left[zoom>=11][cycleway_left='opposite_track'],
#roads_high::reset_outline_left[zoom>=11][cycleway_left='share_busway'],
#roads_high::reset_outline_left[zoom>=11][cycleway_left='opposite_share_busway'],
#tunnel::reset_outline_left[zoom>=11][cycleway_left='lane'],
#tunnel::reset_outline_left[zoom>=11][cycleway_left='opposite_lane'],
#tunnel::reset_outline_left[zoom>=11][cycleway_left='track'],
#tunnel::reset_outline_left[zoom>=11][cycleway_left='opposite_track'],
#tunnel::reset_outline_left[zoom>=11][cycleway_left='share_busway'],
#tunnel::reset_outline_left[zoom>=11][cycleway_left='opposite_share_busway'],
#bridge::reset_outline_left[zoom>=11][cycleway_left='lane'],
#bridge::reset_outline_left[zoom>=11][cycleway_left='opposite_lane'],
#bridge::reset_outline_left[zoom>=11][cycleway_left='track'],
#bridge::reset_outline_left[zoom>=11][cycleway_left='opposite_track'],
#bridge::reset_outline_left[zoom>=11][cycleway_left='share_busway'],
#bridge::reset_outline_left[zoom>=11][cycleway_left='opposite_share_busway'] {
  /* -- colors & styles -- */
  line-color: @standard-fill;
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway-fill;
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk-fill;
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: @primary-fill;
  }
  [type='secondary'],
  [type='secondary_link'] {
    line-color: @secondary-fill;
  }
  [stylegroup='pedestrian'] {
    line-color: @pedestrian-fill;
  }
  [stylegroup='steps'] {
    line-color: @steps-fill;
  }
  [stylegroup='cycle'],
  [stylegroup='pedestrian'][bicycle='yes'],
  [stylegroup='pedestrian'][bicycle='designated'] {
    line-color: @cycle-fill;
  }

  /* widths */
  [zoom=11] {
    [stylegroup='motorway']     { line-width: @rdz11_motorway + @rdz11_motorway_outline; line-offset: -1 * @rdz11_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz11_mainroad + @rdz11_mainroad_outline; line-offset: -1 * @rdz11_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz11_minorroad + @rdz11_minorroad_outline; line-offset: -1 * @rdz11_minorroad_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz11_service + @rdz11_service_outline; line-offset: -1 * @rdz11_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz11_pedestrian + @rdz11_pedestrian_outline; line-offset: -1 * @rdz11_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz11_cycle + @rdz11_cycle_outline;
      line-offset: -1 * @rdz11_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz11_railway + @rdz11_railway_outline; line-offset: -1 * @rdz11_railway_outline; }
  }
  [zoom=12] {
    [stylegroup='motorway']     { line-width: @rdz12_motorway + @rdz12_motorway_outline; line-offset: -1 * @rdz12_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz12_mainroad + @rdz12_mainroad_outline; line-offset: -1 * @rdz12_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz12_minorroad + @rdz12_minorroad_outline; line-offset: -1 * @rdz12_minorroad_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz12_service + @rdz12_service_outline; line-offset: -1 * @rdz12_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz12_pedestrian + @rdz12_pedestrian_outline; line-offset: -1 * @rdz12_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz12_cycle + @rdz12_cycle_outline;
      line-offset: -1 * @rdz12_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz12_railway + @rdz12_railway_outline; line-offset: -1 * @rdz12_railway_outline; }
  }
  [zoom=13] {
    [stylegroup='motorway']     { line-width: @rdz13_motorway + @rdz13_motorway_outline; line-offset: -1 * @rdz13_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz13_mainroad + @rdz13_mainroad_outline; line-offset: -1 * @rdz13_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz13_minorroad + @rdz13_minorroad_outline; line-offset: -1 * @rdz13_minorroad_outline; }
    [stylegroup='minorroad'][type='tertiary']   { line-width: @rdz13_tertiary+ @rdz13_tertiary_outline; line-offset: -1 * @rdz13_tertiary_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz13_service + @rdz13_service_outline; line-offset: -1 * @rdz13_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz13_pedestrian + @rdz13_pedestrian_outline; line-offset: -1 * @rdz13_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz13_cycle + @rdz13_cycle_outline;
      line-offset: -1 * @rdz13_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz13_railway + @rdz13_railway_outline; line-offset: -1 * @rdz13_railway_outline; }
  }
  [zoom=14] {
    [stylegroup='motorway']     { line-width: @rdz14_motorway + @rdz14_motorway_outline; line-offset: -1 * @rdz14_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz14_mainroad + @rdz14_mainroad_outline; line-offset: -1 * @rdz14_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz14_minorroad + @rdz14_minorroad_outline; line-offset: -1 * @rdz14_minorroad_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz14_service + @rdz14_service_outline; line-offset: -1 * @rdz14_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz14_pedestrian + @rdz14_pedestrian_outline; line-offset: -1 * @rdz14_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz14_cycle + @rdz14_cycle_outline;
      line-offset: -1 * @rdz14_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz14_railway + @rdz14_railway_outline; line-offset: -1 * @rdz14_railway_outline; }
  }
  [zoom=15] {
    [stylegroup='motorway']     { line-width: @rdz15_motorway + @rdz15_motorway_outline; line-offset: -1 * @rdz15_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz15_mainroad + @rdz15_mainroad_outline; line-offset: -1 * @rdz15_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz15_minorroad + @rdz15_minorroad_outline; line-offset: -1 * @rdz15_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz15_service + @rdz15_service_outline; line-offset: -1 * @rdz15_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz15_pedestrian + @rdz15_pedestrian_outline; line-offset: -1 * @rdz15_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz15_cycle + @rdz15_cycle_outline;
      line-offset: -1 * @rdz15_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz15_railway + @rdz15_railway_outline; line-offset: -1 * @rdz15_railway_outline; }
  }
  [zoom=16] {
    [stylegroup='motorway']     { line-width: @rdz16_motorway + @rdz16_motorway_outline; line-offset: -1 * @rdz16_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz16_mainroad + @rdz16_mainroad_outline; line-offset: -1 * @rdz16_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz16_minorroad + @rdz16_minorroad_outline; line-offset: -1 * @rdz16_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz16_service + @rdz16_service_outline; line-offset: -1 * @rdz16_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz16_pedestrian + @rdz16_pedestrian_outline; line-offset: -1 * @rdz16_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz16_cycle + @rdz16_cycle_outline;
      line-offset: -1 * @rdz16_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz16_railway + @rdz16_railway_outline; line-offset: -1 * @rdz16_railway_outline; }
  }
  [zoom>=17] {
    [stylegroup='motorway']     { line-width: @rdz17_motorway + @rdz17_motorway_outline; line-offset: -1 * @rdz17_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz17_mainroad + @rdz17_mainroad_outline; line-offset: -1 * @rdz17_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz17_minorroad + @rdz17_minorroad_outline; line-offset: -1 * @rdz17_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz17_service + @rdz17_service_outline; line-offset: -1 * @rdz17_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz17_pedestrian + @rdz17_pedestrian_outline; line-offset: -1 * @rdz17_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz17_cycle + @rdz17_cycle_outline;
      line-offset: -1 * @rdz17_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz17_railway + @rdz17_railway_outline; line-offset: -1 * @rdz17_railway_outline; }
  }
  [zoom>=18] {
    [stylegroup='motorway']     { line-width: @rdz18_motorway + @rdz18_motorway_outline; line-offset: -1 * @rdz18_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz18_mainroad + @rdz18_mainroad_outline; line-offset: -1 * @rdz18_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz18_minorroad + @rdz18_minorroad_outline; line-offset: -1 * @rdz18_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz18_service + @rdz18_service_outline; line-offset: -1 * @rdz18_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz18_pedestrian + @rdz18_pedestrian_outline; line-offset: -1 * @rdz18_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz18_cycle + @rdz18_cycle_outline;
      line-offset: -1 * @rdz18_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz18_railway + @rdz18_railway_outline; line-offset: -1 * @rdz18_railway_outline; }
  }
}

#tunnel::reset_outline_left[zoom>=11][cycleway_left='lane'],
#tunnel::reset_outline_left[zoom>=11][cycleway_left='opposite_lane'],
#tunnel::reset_outline_left[zoom>=11][cycleway_left='track'],
#tunnel::reset_outline_left[zoom>=11][cycleway_left='opposite_track'],
#tunnel::reset_outline_left[zoom>=11][cycleway_left='share_busway'],
#tunnel::reset_outline_left[zoom>=11][cycleway_left='opposite_share_busway'] {
  [type='motorway'],
  [type='motorway_link'] {
    line-color: lighten(@motorway-fill, 10%);
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: lighten(@trunk-fill, 10%);
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: lighten(@primary-fill, 10%);
  }
  [type='secondary'],
  [type='secondary_link'] {
    line-color: lighten(@secondary-fill, 10%);
  }
}

#roads_high::outline_left[zoom>=11][cycleway_left='lane'],
#roads_high::outline_left[zoom>=11][cycleway_left='opposite_lane'],
#roads_high::outline_left[zoom>=11][cycleway_left='track'],
#roads_high::outline_left[zoom>=11][cycleway_left='opposite_track'],
#roads_high::outline_left[zoom>=11][cycleway_left='share_busway'],
#roads_high::outline_left[zoom>=11][cycleway_left='opposite_share_busway'],
#tunnel::outline_left[zoom>=11][cycleway_left='lane'],
#tunnel::outline_left[zoom>=11][cycleway_left='opposite_lane'],
#tunnel::outline_left[zoom>=11][cycleway_left='track'],
#tunnel::outline_left[zoom>=11][cycleway_left='opposite_track'],
#tunnel::outline_left[zoom>=11][cycleway_left='share_busway'],
#tunnel::outline_left[zoom>=11][cycleway_left='opposite_share_busway'],
#bridge::outline_left[zoom>=11][cycleway_left='lane'],
#bridge::outline_left[zoom>=11][cycleway_left='opposite_lane'],
#bridge::outline_left[zoom>=11][cycleway_left='track'],
#bridge::outline_left[zoom>=11][cycleway_left='opposite_track'],
#bridge::outline_left[zoom>=11][cycleway_left='share_busway'],
#bridge::outline_left[zoom>=11][cycleway_left='opposite_share_busway'] {
  /* -- colors & styles -- */
  line-cap: round;
  line-join: round;

  [cycleway_left='lane'],
  [cycleway_left='opposite_lane'] {
    line-color: @cycle_lane_case;
    line-dasharray: 6,3;
    line-cap: butt;
  }
  [cycleway_left='track'],
  [cycleway_left='opposite_track'] {
    line-color: @cycle_track_case;
    line-cap: butt;
  }
  [cycleway_left='share_busway'],
  [cycleway_left='opposite_share_busway'] {
    line-color: @cycle_busway_case;
    line-dasharray: 6,10;
    line-cap: butt;
  }

  /* widths */
  [zoom=11] {
    [stylegroup='motorway']     { line-width: @rdz11_motorway + @rdz11_motorway_outline; line-offset: -1 * @rdz11_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz11_mainroad + @rdz11_mainroad_outline; line-offset: -1 * @rdz11_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz11_minorroad + @rdz11_minorroad_outline; line-offset: -1 * @rdz11_minorroad_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz11_service + @rdz11_service_outline; line-offset: -1 * @rdz11_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz11_pedestrian + @rdz11_pedestrian_outline; line-offset: -1 * @rdz11_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz11_cycle + @rdz11_cycle_outline;
      line-offset: -1 * @rdz11_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz11_railway + @rdz11_railway_outline; line-offset: -1 * @rdz11_railway_outline; }
  }
  [zoom=12] {
    [stylegroup='motorway']     { line-width: @rdz12_motorway + @rdz12_motorway_outline; line-offset: -1 * @rdz12_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz12_mainroad + @rdz12_mainroad_outline; line-offset: -1 * @rdz12_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz12_minorroad + @rdz12_minorroad_outline; line-offset: -1 * @rdz12_minorroad_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz12_service + @rdz12_service_outline; line-offset: -1 * @rdz12_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz12_pedestrian + @rdz12_pedestrian_outline; line-offset: -1 * @rdz12_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz12_cycle + @rdz12_cycle_outline;
      line-offset: -1 * @rdz12_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz12_railway + @rdz12_railway_outline; line-offset: -1 * @rdz12_railway_outline; }
  }
  [zoom=13] {
    [stylegroup='motorway']     { line-width: @rdz13_motorway + @rdz13_motorway_outline; line-offset: -1 * @rdz13_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz13_mainroad + @rdz13_mainroad_outline; line-offset: -1 * @rdz13_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz13_minorroad + @rdz13_minorroad_outline; line-offset: -1 * @rdz13_minorroad_outline; }
    [stylegroup='minorroad'][type='tertiary']   { line-width: @rdz13_tertiary+ @rdz13_tertiary_outline; line-offset: -1 * @rdz13_tertiary_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz13_service + @rdz13_service_outline; line-offset: -1 * @rdz13_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz13_pedestrian + @rdz13_pedestrian_outline; line-offset: -1 * @rdz13_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz13_cycle + @rdz13_cycle_outline;
      line-offset: -1 * @rdz13_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz13_railway + @rdz13_railway_outline; line-offset: -1 * @rdz13_railway_outline; }
  }
  [zoom=14] {
    [stylegroup='motorway']     { line-width: @rdz14_motorway + @rdz14_motorway_outline; line-offset: -1 * @rdz14_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz14_mainroad + @rdz14_mainroad_outline; line-offset: -1 * @rdz14_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz14_minorroad + @rdz14_minorroad_outline; line-offset: -1 * @rdz14_minorroad_outline; }
    /* No minor bridges yet */
    [stylegroup='service']      { line-width: @rdz14_service + @rdz14_service_outline; line-offset: -1 * @rdz14_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz14_pedestrian + @rdz14_pedestrian_outline; line-offset: -1 * @rdz14_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz14_cycle + @rdz14_cycle_outline;
      line-offset: -1 * @rdz14_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz14_railway + @rdz14_railway_outline; line-offset: -1 * @rdz14_railway_outline; }
  }
  [zoom=15] {
    [stylegroup='motorway']     { line-width: @rdz15_motorway + @rdz15_motorway_outline; line-offset: -1 * @rdz15_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz15_mainroad + @rdz15_mainroad_outline; line-offset: -1 * @rdz15_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz15_minorroad + @rdz15_minorroad_outline; line-offset: -1 * @rdz15_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz15_service + @rdz15_service_outline; line-offset: -1 * @rdz15_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz15_pedestrian + @rdz15_pedestrian_outline; line-offset: -1 * @rdz15_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz15_cycle + @rdz15_cycle_outline;
      line-offset: -1 * @rdz15_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz15_railway + @rdz15_railway_outline; line-offset: -1 * @rdz15_railway_outline; }
  }
  [zoom=16] {
    [stylegroup='motorway']     { line-width: @rdz16_motorway + @rdz16_motorway_outline; line-offset: -1 * @rdz16_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz16_mainroad + @rdz16_mainroad_outline; line-offset: -1 * @rdz16_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz16_minorroad + @rdz16_minorroad_outline; line-offset: -1 * @rdz16_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz16_service + @rdz16_service_outline; line-offset: -1 * @rdz16_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz16_pedestrian + @rdz16_pedestrian_outline; line-offset: -1 * @rdz16_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz16_cycle + @rdz16_cycle_outline;
      line-offset: -1 * @rdz16_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz16_railway + @rdz16_railway_outline; line-offset: -1 * @rdz16_railway_outline; }
  }
  [zoom>=17] {
    [stylegroup='motorway']     { line-width: @rdz17_motorway + @rdz17_motorway_outline; line-offset: -1 * @rdz17_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz17_mainroad + @rdz17_mainroad_outline; line-offset: -1 * @rdz17_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz17_minorroad + @rdz17_minorroad_outline; line-offset: -1 * @rdz17_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz17_service + @rdz17_service_outline; line-offset: -1 * @rdz17_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz17_pedestrian + @rdz17_pedestrian_outline; line-offset: -1 * @rdz17_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz17_cycle + @rdz17_cycle_outline;
      line-offset: -1 * @rdz17_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz17_railway + @rdz17_railway_outline; line-offset: -1 * @rdz17_railway_outline; }
  }
  [zoom>=18] {
    [stylegroup='motorway']     { line-width: @rdz18_motorway + @rdz18_motorway_outline; line-offset: -1 * @rdz18_motorway_outline; }
    [stylegroup='mainroad']     { line-width: @rdz18_mainroad + @rdz18_mainroad_outline; line-offset: -1 * @rdz18_mainroad_outline; }
    [stylegroup='minorroad']    { line-width: @rdz18_minorroad + @rdz18_minorroad_outline; line-offset: -1 * @rdz18_minorroad_outline; }
    [stylegroup='service']      { line-width: @rdz18_service + @rdz18_service_outline; line-offset: -1 * @rdz18_service_outline; }
    [stylegroup='pedestrian']   { line-width: @rdz18_pedestrian + @rdz18_pedestrian_outline; line-offset: -1 * @rdz18_pedestrian_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz18_cycle + @rdz18_cycle_outline;
      line-offset: -1 * @rdz18_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz18_railway + @rdz18_railway_outline; line-offset: -1 * @rdz18_railway_outline; }
  }
}

/* ---- Bridge fill for dashed lines -------------------------------- */
#tunnel::line[zoom>=14],
#bridge::line[zoom>=14] {
  /* -- colors & styles -- */
  [stylegroup='pedestrian'] {
    line-color: @land;
    line-width: 0;
    line-join: round;
  }
  [stylegroup='steps'] {
    line-color: @land;
    line-width: 0;
    line-join: round;
  }
  [stylegroup='cycle'],
  [stylegroup='pedestrian'][bicycle='yes'],
  [stylegroup='pedestrian'][bicycle='designated'] {
    line-color: @land;
    line-width: 0;
    line-join: round;
  }
  [stylegroup='railway'] {
    line-color: @land;
    line-join: round;
  }
  /* -- widths -- */
  [zoom=14] {
    [stylegroup='pedestrian']   { line-width: @rdz14_pedestrian + @rdz14_pedestrian_outline; }
    [stylegroup='steps']        { line-width: @rdz14_steps + @rdz14_steps_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz14_cycle + @rdz14_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz14_railway + @rdz14_railway_outline; }
  }
  [zoom=15] {
    [stylegroup='pedestrian']   { line-width: @rdz15_pedestrian + @rdz15_pedestrian_outline; }
    [stylegroup='steps']        { line-width: @rdz15_steps + @rdz15_steps_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz15_cycle + @rdz15_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz15_railway + @rdz15_railway_outline; }
  }
  [zoom=16] {
    [stylegroup='pedestrian']   { line-width: @rdz16_pedestrian + @rdz16_pedestrian_outline; }
    [stylegroup='steps']        { line-width: @rdz16_steps + @rdz16_steps_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz16_cycle + @rdz16_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz16_railway + @rdz16_railway_outline; }
  }
  [zoom=17] {
    [stylegroup='pedestrian']   { line-width: @rdz17_pedestrian + @rdz17_pedestrian_outline; }
    [stylegroup='steps']        { line-width: @rdz17_steps + @rdz17_steps_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz17_cycle + @rdz17_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz17_railway + @rdz17_railway_outline; }
  }
  [zoom>=18] {
    [stylegroup='pedestrian']   { line-width: @rdz18_pedestrian + @rdz18_pedestrian_outline; }
    [stylegroup='steps']        { line-width: @rdz18_steps + @rdz18_steps_outline; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz18_cycle + @rdz18_cycle_outline;
    }
    [stylegroup='railway']      { line-width: @rdz18_railway + @rdz18_railway_outline; }
  }
}


#roads_high[zoom>=11],
#tunnel::inline[zoom>=11],
#bridge::inline[zoom>=11] {
  /* -- colors & styles -- */
  line-color: @standard-fill;
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway-fill;
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk-fill;
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: @primary-fill;
  }
  [type='secondary'],
  [type='secondary_link'] {
    line-color: @secondary-fill;
  }
  [stylegroup='railway'] {
    line-color: @rail-line;
    line-dasharray: 1,1;
    [type='subway'] { line-opacity: 0.67; }
    [zoom>15] { line-dasharray: 1,2; }
  }
  [stylegroup='cycle'] {
    line-color: @cycle-fill;
  }
  [stylegroup='pedestrian'] {
    line-color: @pedestrian-fill;
  }
  [stylegroup='steps'] {
    line-color: @steps-fill;
  }
  [stylegroup='service'],
  [stylegroup='minorroad'],
  [stylegroup='mainroad'],
  [stylegroup='motorway'] {
    line-cap: round;
    line-join: round;
  }
  [stylegroup='cycle'],
  [stylegroup='pedestrian'] {
    line-join: round;
  }
  /* -- widths -- */
  [zoom=11] {
    [stylegroup='motorway']     { line-width: @rdz11_motorway; }
    [stylegroup='mainroad']     { line-width: @rdz11_mainroad; }
    [stylegroup='minorroad']    { line-width: @rdz11_minorroad; }
    [stylegroup='service']      { line-width: @rdz11_service; }
    [stylegroup='pedestrian']   { line-width: @rdz11_pedestrian; }
    [stylegroup='steps']        { line-width: @rdz11_steps; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz11_cycle;
    }
    [stylegroup='railway']      { line-width: @rdz11_railway; }
  }
  [zoom=12] {
    [stylegroup='motorway']     { line-width: @rdz12_motorway; }
    [stylegroup='mainroad']     { line-width: @rdz12_mainroad; }
    [stylegroup='minorroad']    { line-width: @rdz12_minorroad; }
    [stylegroup='service']      { line-width: @rdz12_service; }
    [stylegroup='pedestrian']   { line-width: @rdz12_pedestrian; }
    [stylegroup='steps']        { line-width: @rdz12_steps; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz12_cycle;
    }
    [stylegroup='railway']      { line-width: @rdz12_railway; }
  }
  [zoom=13] {
    [stylegroup='motorway']     { line-width: @rdz13_motorway; }
    [stylegroup='mainroad']     { line-width: @rdz13_mainroad; }
    [stylegroup='minorroad']    { line-width: @rdz13_minorroad; }
    [stylegroup='minorroad'][type='tertiary']   { line-width: @rdz13_tertiary }
    [stylegroup='service']      { line-width: @rdz13_service; }
    [stylegroup='pedestrian']   { line-width: @rdz13_pedestrian; line-dasharray: 1,1; }
    [stylegroup='steps']        { line-width: @rdz13_steps;      line-dasharray: 0.5,0.5; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz13_cycle;
    }
    [stylegroup='railway']      { line-width: @rdz13_railway; }
  }
  [zoom=14] {
    [stylegroup='motorway']     { line-width: @rdz14_motorway; }
    [stylegroup='mainroad']     { line-width: @rdz14_mainroad; }
    [stylegroup='minorroad']    { line-width: @rdz14_minorroad; }
    [stylegroup='service']      { line-width: @rdz14_service; }
    [stylegroup='pedestrian']   { line-width: @rdz14_pedestrian; line-dasharray: 1,1; }
    [stylegroup='steps']        { line-width: @rdz14_steps;      line-dasharray: 0.5,0.5; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz14_cycle;
    }
    [stylegroup='railway']      { line-width: @rdz14_railway; }
  }
  [zoom=15] {
    [stylegroup='motorway']     { line-width: @rdz15_motorway; }
    [stylegroup='mainroad']     { line-width: @rdz15_mainroad; }
    [stylegroup='minorroad']    { line-width: @rdz15_minorroad; }
    [stylegroup='service']      { line-width: @rdz15_service; }
    [stylegroup='pedestrian']   { line-width: @rdz15_pedestrian; line-dasharray: 1,1; }
    [stylegroup='steps']        { line-width: @rdz15_steps;      line-dasharray: 0.5,0.5; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz15_cycle;
    }
    [stylegroup='railway']      { line-width: @rdz15_railway; }
  }
  [zoom=16] {
    [stylegroup='motorway']     { line-width: @rdz16_motorway; }
    [stylegroup='mainroad']     { line-width: @rdz16_mainroad; }
    [stylegroup='minorroad']    { line-width: @rdz16_minorroad; }
    [stylegroup='service']      { line-width: @rdz16_service; }
    [stylegroup='pedestrian']   { line-width: @rdz16_pedestrian; line-dasharray: 2,1; }
    [stylegroup='steps']        { line-width: @rdz16_steps;      line-dasharray: 1.5,0.75; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz16_cycle;
    }
    [stylegroup='railway']      { line-width: @rdz16_railway; }
  }
  [zoom=17] {
    [stylegroup='motorway']     { line-width: @rdz17_motorway; }
    [stylegroup='mainroad']     { line-width: @rdz17_mainroad; }
    [stylegroup='minorroad']    { line-width: @rdz17_minorroad; }
    [stylegroup='service']      { line-width: @rdz17_service; }
    [stylegroup='pedestrian']   { line-width: @rdz17_pedestrian; line-dasharray: 2,2; }
    [stylegroup='steps']        { line-width: @rdz17_steps;      line-dasharray: 2,1; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz17_cycle;
    }
    [stylegroup='railway']      { line-width: @rdz17_railway; }
  }
  [zoom>=18] {
    [stylegroup='motorway']     { line-width: @rdz18_motorway; }
    [stylegroup='mainroad']     { line-width: @rdz18_mainroad; }
    [stylegroup='minorroad']    { line-width: @rdz18_minorroad; }
    [stylegroup='service']      { line-width: @rdz18_service; }
    [stylegroup='pedestrian']   { line-width: @rdz18_pedestrian; line-dasharray: 3,3; }
    [stylegroup='steps']        { line-width: @rdz18_steps;      line-dasharray: 2,1; }
    [stylegroup='cycle'],
    [stylegroup='pedestrian'][bicycle='yes'],
    [stylegroup='pedestrian'][bicycle='designated'] {
      line-width: @rdz18_cycle;
    }
    [stylegroup='railway']      { line-width: @rdz18_railway; }
  }
}

#tunnel::inline[zoom>=11] {
  line-cap: butt;

  [type='motorway'],
  [type='motorway_link'] {
    line-color: lighten(@motorway-fill, 10%);
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: lighten(@trunk-fill, 10%);
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: lighten(@primary-fill, 10%);
  }
  [type='secondary'],
  [type='secondary_link'] {
    line-color: lighten(@secondary-fill, 10%);
  }
}


/* ---- Turning Circles --------------------------------------------- */
#turning_circle_case[zoom>=14] {
  marker-fill: @standard-fill;
  marker-line-color: @standard-case;
  marker-line-width: 2;
  marker-allow-overlap: true;
}
#turning_circle_fill[zoom>=14] {
  marker-fill: @standard-fill;
  marker-line-width: 0;
  marker-line-opacity: 0;
  marker-allow-overlap: true;
}
#turning_circle_case,
#turning_circle_fill {
  [zoom=14]  { marker-width: @rdz14_minorroad * 1.1; }
  [zoom=15]  { marker-width: @rdz15_minorroad * 1.1; }
  [zoom=16]  { marker-width: @rdz16_minorroad * 1.1; }
  [zoom=17]  { marker-width: @rdz17_minorroad * 1.1; }
  [zoom>=18] { marker-width: @rdz18_minorroad * 1.1; }
}

/* ================================================================== */
/* AEROWAYS
/* ================================================================== */

#aeroway[zoom>9] {
  line-color: @aeroway;
  line-cap: butt;
  line-join: miter;
  [type='runway'] {
    [zoom=10] { line-width: 1; }
    [zoom=11] { line-width: 2; }
    [zoom=12] { line-width: 3; }
    [zoom=13] { line-width: 5; }
    [zoom=14] { line-width: 7; }
    [zoom=15] { line-width: 11; }
    [zoom=16] { line-width: 15; }
    [zoom=17] { line-width: 19; }
    [zoom>17] { line-width: 23; }
  }
  [type='taxiway'] {
    [zoom=10] { line-width: 0.2; }
    [zoom=11] { line-width: 0.2; }
    [zoom=12] { line-width: 0.2; }
    [zoom=13] { line-width: 1; }
    [zoom=14] { line-width: 1.5; }
    [zoom=15] { line-width: 2; }
    [zoom=16] { line-width: 3; }
    [zoom=17] { line-width: 4; }
    [zoom>17] { line-width: 5; }
  }
}

/* ================================================================== */
/* BICYCLE ROUTES
/* ================================================================== */
#bicycle_routes[type='icn'][zoom >= 2],
#bicycle_routes[type='ncn'][zoom >= 5],
#bicycle_routes[type='rcn'][zoom >= 7],
#bicycle_routes[type='lcn'][zoom >= 9] {
  line-opacity: 0.4;
  line-width: 1;

  [zoom <= 12] { line-opacity: 0.6; }

  [zoom=9]   { line-width: 2; }
  [zoom>=10] { line-width: 3; }
  [zoom=13]  { line-width: 4; }
  [zoom=14]  { line-width: 5; }
  [zoom=15]  { line-width: 6; }
  [zoom=16]  { line-width: 7; }
  [zoom=17]  { line-width: 8; }
  [zoom>=18] { line-width: 9; }

  [route='bicycle'][type='icn'] {
    line-color: @icn-overlay;
  }
  [route='bicycle'][type='ncn'] {
    line-color: @ncn-overlay;
  }
  [route='bicycle'][type='rcn'] {
    line-color: @rcn-overlay;
  }
  [route='bicycle'][type='lcn'] {
    line-color: @lcn-overlay;
  }
  [route='mtb'] {
    line-color: @mtb-overlay;
  }

  [state='proposed'] {
    line-dasharray: 6,3;
  }
}

/******************************************************************* */
