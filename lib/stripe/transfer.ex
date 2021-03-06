defmodule Stripe.Transfer do
  use Stripe.API, [:create, :retrieve, :update, :list]

  def endpoint do
    "transfers"
  end

  def transfer_reversal_endpoint(transfer_id, reversal_id \\ "") do
    "#{endpoint}/#{transfer_id}/reversals/#{reversal_id}"
  end

  def create_reversal(transfer_id, form \\ []) do
    Stripe.request(:post, transfer_reversal_endpoint(transfer_id), form)
  end

  def retrieve_reversal(transfer_id, reversal_id) do
    Stripe.request(:get, transfer_reversal_endpoint(transfer_id, reversal_id))
  end

  def update_reversal(transfer_id, reversal_id, form) do
    Stripe.request(:post, transfer_reversal_endpoint(transfer_id, reversal_id), form)
  end

  def list_reversals(transfer_id) do
    Stripe.request(:get, transfer_reversal_endpoint(transfer_id))
  end
end
