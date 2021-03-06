{
  "version": "1.1",
  "package": {
    "name": "Random Number",
    "version": "1.0",
    "description": "Generate a Pseudo Random Number ",
    "author": "José Picó",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "9666115a-aff5-4be6-ab10-caf2d924bc47",
          "type": "basic.constant",
          "data": {
            "name": "Random_Sum",
            "value": "",
            "local": false
          },
          "position": {
            "x": 576,
            "y": 88
          }
        },
        {
          "id": "94078c1a-e2de-4647-9a09-d980a81fff9b",
          "type": "basic.code",
          "data": {
            "code": "\n// To generate pseudoaleatory numbers\n// each posedge clock ,output number changes\n// pseudo-Randomly in function of Random_Sum\n// parameter\n\n\nreg[7:0] num=0;\n\nlocalparam x = Random_Sum;\n\nalways @(posedge clk)\n num <= num + x;",
            "params": [
              {
                "name": "Random_Sum"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "num",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 376,
            "y": 200
          },
          "size": {
            "width": 496,
            "height": 272
          }
        },
        {
          "id": "503c8237-b25a-477a-bf15-8d8b1573b678",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 200,
            "y": 304
          }
        },
        {
          "id": "b56955ad-2193-4c4c-a65f-4adab8810a90",
          "type": "basic.output",
          "data": {
            "name": "Num",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 968,
            "y": 304
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "9666115a-aff5-4be6-ab10-caf2d924bc47",
            "port": "constant-out"
          },
          "target": {
            "block": "94078c1a-e2de-4647-9a09-d980a81fff9b",
            "port": "Random_Sum"
          }
        },
        {
          "source": {
            "block": "94078c1a-e2de-4647-9a09-d980a81fff9b",
            "port": "num"
          },
          "target": {
            "block": "b56955ad-2193-4c4c-a65f-4adab8810a90",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "503c8237-b25a-477a-bf15-8d8b1573b678",
            "port": "out"
          },
          "target": {
            "block": "94078c1a-e2de-4647-9a09-d980a81fff9b",
            "port": "clk"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 12.604,
        "y": -16.8818
      },
      "zoom": 1.0512
    }
  },
  "dependencies": {}
}