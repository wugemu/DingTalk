.class public Lcom/alipay/mobileic/common/service/model/MICRpcResult;
.super Lcom/alipay/mobileic/common/service/model/ToString;
.source "MICRpcResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public success:Z

.field public sysErrCode:Ljava/lang/String;

.field public sysErrMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobileic/common/service/model/ToString;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobileic/common/service/model/MICRpcResult;->success:Z

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobileic/common/service/model/MICRpcResult;->sysErrCode:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobileic/common/service/model/MICRpcResult;->sysErrMsg:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
