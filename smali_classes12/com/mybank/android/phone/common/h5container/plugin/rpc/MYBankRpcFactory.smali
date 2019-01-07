.class public Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;
.super Ljava/lang/Object;
.source "MYBankRpcFactory.java"


# instance fields
.field private mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

.field private mContext:Landroid/content/Context;

.field private mRpcInvoker:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;

.field private mRpcListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->mContext:Landroid/content/Context;

    .line 21
    new-instance v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;

    invoke-direct {v0, p0}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;-><init>(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;)V

    iput-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->mRpcInvoker:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->mRpcListeners:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public addRpcListener(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcListener;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->mRpcListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public getConfig()Lcom/alipay/android/phone/mrpc/core/Config;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getRpcInvoker()Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->mRpcInvoker:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;

    return-object v0
.end method

.method public getRpcListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->mRpcListeners:Ljava/util/List;

    return-object v0
.end method

.method public setConfig(Lcom/alipay/android/phone/mrpc/core/Config;)V
    .locals 0
    .param p1, "config"    # Lcom/alipay/android/phone/mrpc/core/Config;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

    .line 32
    return-void
.end method
