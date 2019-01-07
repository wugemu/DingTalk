.class public Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CustomerUnlockResult;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "CustomerUnlockResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public unlockMessage:Ljava/lang/String;

.field public unlockState:Ljava/lang/String;

.field public unlockToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    .line 49
    const-string/jumbo v0, "FAIL"

    iput-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CustomerUnlockResult;->unlockState:Ljava/lang/String;

    return-void
.end method
