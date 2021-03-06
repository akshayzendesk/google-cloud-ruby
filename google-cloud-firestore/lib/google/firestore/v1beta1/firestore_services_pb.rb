# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/firestore/v1beta1/firestore.proto for package 'google.firestore.v1beta1'
# Original file comments:
# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/firestore/v1beta1/firestore_pb'

module Google
  module Firestore
    module V1beta1
      module Firestore
        # Specification of the Firestore API.
        #
        # The Cloud Firestore service.
        #
        # This service exposes several types of comparable timestamps:
        #
        # *    `create_time` - The time at which a document was created. Changes only
        #      when a document is deleted, then re-created. Increases in a strict
        #       monotonic fashion.
        # *    `update_time` - The time at which a document was last updated. Changes
        #      every time a document is modified. Does not change when a write results
        #      in no modifications. Increases in a strict monotonic fashion.
        # *    `read_time` - The time at which a particular state was observed. Used
        #      to denote a consistent snapshot of the database or the time at which a
        #      Document was observed to not exist.
        # *    `commit_time` - The time at which the writes in a transaction were
        #      committed. Any read with an equal or greater `read_time` is guaranteed
        #      to see the effects of the transaction.
        class Service

          include GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'google.firestore.v1beta1.Firestore'

          # Gets a single document.
          rpc :GetDocument, GetDocumentRequest, Document
          # Lists documents.
          rpc :ListDocuments, ListDocumentsRequest, ListDocumentsResponse
          # Creates a new document.
          rpc :CreateDocument, CreateDocumentRequest, Document
          # Updates or inserts a document.
          rpc :UpdateDocument, UpdateDocumentRequest, Document
          # Deletes a document.
          rpc :DeleteDocument, DeleteDocumentRequest, Google::Protobuf::Empty
          # Gets multiple documents.
          #
          # Documents returned by this method are not guaranteed to be returned in the
          # same order that they were requested.
          rpc :BatchGetDocuments, BatchGetDocumentsRequest, stream(BatchGetDocumentsResponse)
          # Starts a new transaction.
          rpc :BeginTransaction, BeginTransactionRequest, BeginTransactionResponse
          # Commits a transaction, while optionally updating documents.
          rpc :Commit, CommitRequest, CommitResponse
          # Rolls back a transaction.
          rpc :Rollback, RollbackRequest, Google::Protobuf::Empty
          # Runs a query.
          rpc :RunQuery, RunQueryRequest, stream(RunQueryResponse)
          # Streams batches of document updates and deletes, in order.
          rpc :Write, stream(WriteRequest), stream(WriteResponse)
          # Listens to changes.
          rpc :Listen, stream(ListenRequest), stream(ListenResponse)
          # Lists all the collection IDs underneath a document.
          rpc :ListCollectionIds, ListCollectionIdsRequest, ListCollectionIdsResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
