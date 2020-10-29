{
  "version": "1.2",
  "package": {
    "name": "edsac-inst-split",
    "version": "0.1",
    "description": "Get the 4 fields of a edsac instruction",
    "author": "Juan González-Gómez (Obijuan)",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M168.377%2077.643l61.147-60.938C240.21%206.25%20254.56.461%20269.484.5h62.611v26.186l-61.698.046c-8.012-.043-15.705%203.133-21.47%208.81L187.48%2096.857a57.292%2057.292%200%200%201-39.993%2016.139%2057.292%2057.292%200%200%201%2039.993%2016.14l61.448%2061.314c5.765%205.677%2013.458%208.853%2021.47%208.81l61.698.046v26.186h-62.612c-14.924.039-29.463-5.9-40.204-16.28l-60.902-60.863a29.857%2029.857%200%200%200-21.347-8.81L.5%20139.427V86.457h146.524a29.884%2029.884%200%200%200%2021.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "3520f95c-f475-45d3-af16-719dfd11473d",
          "type": "basic.output",
          "data": {
            "name": "opcode",
            "range": "[4:0]",
            "pins": [
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 672,
            "y": 96
          }
        },
        {
          "id": "7716d9e0-4392-4739-8bca-dc23f36a01b8",
          "type": "basic.output",
          "data": {
            "name": "r",
            "virtual": false
          },
          "position": {
            "x": 704,
            "y": 184
          }
        },
        {
          "id": "5df16b10-6530-4a90-a897-5ef17295e1bb",
          "type": "basic.input",
          "data": {
            "name": "i",
            "range": "[16:0]",
            "clock": false,
            "size": 17
          },
          "position": {
            "x": 128,
            "y": 200
          }
        },
        {
          "id": "b71e8631-f26a-4a42-8494-df53b17dc68a",
          "type": "basic.output",
          "data": {
            "name": "addr",
            "range": "[9:0]",
            "pins": [
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 680,
            "y": 280
          }
        },
        {
          "id": "93641d85-eac3-48f6-bd4d-87b7bad39583",
          "type": "basic.output",
          "data": {
            "name": "len",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 640,
            "y": 368
          }
        },
        {
          "id": "16e78204-213e-4833-9096-89d735307ec2",
          "type": "basic.code",
          "data": {
            "code": "assign op = i[16:12];\nassign r = i[11];\nassign addr = i[10:1];\nassign len = i[0];",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "i",
                  "range": "[16:0]",
                  "size": 17
                }
              ],
              "out": [
                {
                  "name": "op",
                  "range": "[4:0]",
                  "size": 5
                },
                {
                  "name": "r"
                },
                {
                  "name": "addr",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "len"
                }
              ]
            }
          },
          "position": {
            "x": 296,
            "y": 176
          },
          "size": {
            "width": 296,
            "height": 104
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "5df16b10-6530-4a90-a897-5ef17295e1bb",
            "port": "out"
          },
          "target": {
            "block": "16e78204-213e-4833-9096-89d735307ec2",
            "port": "i"
          },
          "size": 17
        },
        {
          "source": {
            "block": "16e78204-213e-4833-9096-89d735307ec2",
            "port": "len"
          },
          "target": {
            "block": "93641d85-eac3-48f6-bd4d-87b7bad39583",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "16e78204-213e-4833-9096-89d735307ec2",
            "port": "addr"
          },
          "target": {
            "block": "b71e8631-f26a-4a42-8494-df53b17dc68a",
            "port": "in"
          },
          "size": 10
        },
        {
          "source": {
            "block": "16e78204-213e-4833-9096-89d735307ec2",
            "port": "r"
          },
          "target": {
            "block": "7716d9e0-4392-4739-8bca-dc23f36a01b8",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "16e78204-213e-4833-9096-89d735307ec2",
            "port": "op"
          },
          "target": {
            "block": "3520f95c-f475-45d3-af16-719dfd11473d",
            "port": "in"
          },
          "size": 5
        }
      ]
    }
  },
  "dependencies": {}
}