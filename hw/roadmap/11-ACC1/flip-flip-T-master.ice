{
  "image": "",
  "state": {
    "pan": {
      "x": 0,
      "y": 0
    },
    "zoom": 1.000000006915524
  },
  "board": "icezum",
  "graph": {
    "blocks": [
      {
        "id": "a48259c8-4383-4f21-805a-e365e29d6852",
        "type": "basic.code",
        "data": {
          "code": "//-------------------------------------------------\n//-- Flip-flip T for toggling the mode\n//-------------------------------------------------\n\n//-- Constants for the modes: automatic/manual\nlocalparam MANUAL_MODE = 1'b1;\nlocalparam AUTOMATIC_MODE = 1'b0;\n\n//-- Default mode configuration (Uncomment one of the options)\n//localparam DEFAULT_MODE = AUTOMATIC_MODE;\nlocalparam DEFAULT_MODE = MANUAL_MODE;\n\n\nreg mode = DEFAULT_MODE;\n\n//-- Flip-flip T. The input is the button 2\nalways @(posedge clk) begin\n//-- Change the mode when the SW2 is pressed\n  if (T)\n    mode = ~mode;\nend\n\nassign o = mode;\n",
          "ports": {
            "in": [
              "clk",
              "T"
            ],
            "out": [
              "o"
            ]
          }
        },
        "position": {
          "x": 264,
          "y": 16
        }
      },
      {
        "id": "30a23744-6926-4d14-9066-0c028d4234e7",
        "type": "basic.input",
        "data": {
          "label": "clk",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 48
        }
      },
      {
        "id": "1d579444-6f21-4891-8922-d01ef98cb801",
        "type": "basic.input",
        "data": {
          "label": "T",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 32,
          "y": 176
        }
      },
      {
        "id": "a47714da-8cea-4292-8310-957df11f76f4",
        "type": "basic.output",
        "data": {
          "label": "o",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 792,
          "y": 112
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "30a23744-6926-4d14-9066-0c028d4234e7",
          "port": "out"
        },
        "target": {
          "block": "a48259c8-4383-4f21-805a-e365e29d6852",
          "port": "clk"
        }
      },
      {
        "source": {
          "block": "1d579444-6f21-4891-8922-d01ef98cb801",
          "port": "out"
        },
        "target": {
          "block": "a48259c8-4383-4f21-805a-e365e29d6852",
          "port": "T"
        }
      },
      {
        "source": {
          "block": "a48259c8-4383-4f21-805a-e365e29d6852",
          "port": "o"
        },
        "target": {
          "block": "a47714da-8cea-4292-8310-957df11f76f4",
          "port": "in"
        }
      }
    ]
  },
  "deps": {}
}