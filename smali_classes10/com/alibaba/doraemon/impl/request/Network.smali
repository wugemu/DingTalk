.class public interface abstract Lcom/alibaba/doraemon/impl/request/Network;
.super Ljava/lang/Object;
.source "Network.java"


# virtual methods
.method public abstract performRequest(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)Lcom/alibaba/doraemon/impl/request/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;)",
            "Lcom/alibaba/doraemon/impl/request/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/impl/request/VolleyError;
        }
    .end annotation
.end method
