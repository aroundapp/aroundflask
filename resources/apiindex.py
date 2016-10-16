import os
from flask import request, jsonify
from flask_restful import Resource, reqparse, fields, marshal

class ApiIndex(Resource):
  def get(self):
    data = dict()
    data['version'] = '1.0.0'
    data['message'] = 'Around APP service API'
    return data, 200
