import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:atm_planner/colors.dart';
import 'package:atm_planner/model/flight/flight_model.dart';
import 'package:intl/intl.dart';

class FlightCard extends StatefulWidget {
  FlightCard({this.flight});

  final Flight flight;

  @override
  FlightCardState createState() {
    return new FlightCardState();
  }
}

class FlightCardState extends State<FlightCard> {
  var _active = true;

  final tripleDigits = new NumberFormat("000", "en_US");

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(16),
      child: Center(
        child: Container(
          child: Material(
            shadowColor: widget.flight.isPriority ? red_text : gray_background,
            elevation: 4,
            color: _active ? light_background : gray_background,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            widget.flight.arcID,
                            style: bold_dark_17,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4.0, 0, 0, 0),
                            child: Text(
                              widget.flight.isPriority ? 'PRIO' : '',
                              style: bold_red_big,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        widget.flight.adep + ' - ' + widget.flight.ades,
                        style: normal_dark_17,
                      ),
                      Text(
                        widget.flight.eobt +
                            '  ' +
                            widget.flight.calculatedTakeOffTime,
                        style: normal_dark_small,
                      ),
                      Text(
                        widget.flight.regulations.length > 0
                            ? widget.flight.regulations[0].regulationId + '...'
                            : '-',
                        style: normal_dark_small,
                      ),
                      Text(
                        'REA(I/D):    ' +
                            (widget.flight.ready ? 'Y' : '-') +
                            '/-',
                        style: normal_dark_small,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 2.0, 2.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0.0, 4.0, 4.0, 0.0),
                            child: Text(
                              tripleDigits.format(widget.flight.actDla),
                              style: bold_dark_35,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CupertinoSwitch(
                              value: _active,
                              onChanged: (bool value) {
                                _active = value;
                                setState(() {});
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            tripleDigits.format(widget.flight.regDla),
                            style: widget.flight.regDla > widget.flight.actDla
                                ? bold_red_25
                                : bold_dark_20,
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'LATE FILL:  -/' +
                                (widget.flight.lateFiller ? 'Y' : '-'),
                            style: normal_dark_small,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
