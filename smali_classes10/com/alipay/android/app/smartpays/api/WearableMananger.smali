.class public Lcom/alipay/android/app/smartpays/api/WearableMananger;
.super Ljava/lang/Object;
.source "WearableMananger.java"


# instance fields
.field private mAuthenticator:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/api/WearableMananger;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    invoke-direct {v0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/api/WearableMananger;->mAuthenticator:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    .line 25
    return-void
.end method


# virtual methods
.method public initHardwarePay(Ljava/lang/String;)I
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "WearableMananger::initHardwarePay"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/WearableMananger;->mAuthenticator:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/WearableMananger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->initHardwearpay(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public verifyNoPassword(Lcom/alipay/android/app/smartpays/api/model/WearableRequest;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;
    .locals 3
    .param p1, "request"    # Lcom/alipay/android/app/smartpays/api/model/WearableRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "WearableMananger::verifyNoPassword"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/WearableMananger;->mAuthenticator:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/WearableMananger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->verifyNoPassword(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/model/WearableRequest;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    move-result-object v0

    return-object v0
.end method
