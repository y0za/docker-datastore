FROM google/cloud-sdk:295.0.0

EXPOSE 8081

HEALTHCHECK --interval=3s --timeout=1s --retries=10 \
    CMD curl --fail http://localhost:8081

CMD ["gcloud", "beta", "emulators", "datastore", "start", "--host-port=0.0.0.0:8081", "--consistency=1.0", "--no-store-on-disk"]
