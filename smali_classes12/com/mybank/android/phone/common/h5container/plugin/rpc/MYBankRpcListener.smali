.class public interface abstract Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcListener;
.super Ljava/lang/Object;
.source "MYBankRpcListener.java"


# virtual methods
.method public abstract onException(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;Ljava/lang/ThreadLocal;Lcom/alipay/mobile/common/rpc/RpcException;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/common/rpc/RpcException;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract onPostExecute(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;Ljava/lang/ThreadLocal;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onPreExecute(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;)Z
.end method
