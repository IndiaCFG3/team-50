//INKWELL
/*

InkWell(
onTap: () {
Navigator.of(context).pop();
},
child: Container(
padding: EdgeInsets.only(
top: 20.0, bottom: 20.0),
decoration: BoxDecoration(
color: kWhistleBlowerColor,
borderRadius: BorderRadius.only(
bottomLeft:
Radius.circular(15.0),
bottomRight:
Radius.circular(15.0)),
),
child: Text(
"Rate Product",
style: TextStyle(
color: Colors.white),
textAlign: TextAlign.center,
),
),
),

*/

//ALERTBOX

/*

return showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15.0))),
                                    contentPadding: EdgeInsets.only(top: 10.0),
                                    content: Container(
                                      width: 300.0,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Expanded(
                                                child: Center(
                                                  child: Text(
                                                    "Location",
                                                    style: TextStyle(
                                                      fontSize: 15.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Icon(
                                                  FontAwesomeIcons.timesCircle,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 15),
                                            height: 200,
                                            decoration: new BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                color: Colors.blueGrey,
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: TextField(
                                                maxLines: null,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
                                                decoration: new InputDecoration(
                                                  hintText: 'Location...',
                                                  border: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 8.0, horizontal: 88),
                                            child: Material(
                                              elevation: 5.0,
                                              color: kWhistleBlowerColor,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              child: MaterialButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                minWidth: 80,
                                                height: 37.0,
                                                child: Text(
                                                  "Done",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });

 */
