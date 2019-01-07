.class public Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
.super Lcom/alipay/mobileic/common/service/model/MICRpcResult;
.source "MICRpcResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizResponseData:Ljava/lang/String;

.field public channelError:Ljava/lang/String;

.field public config:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public data:Ljava/lang/String;

.field public envType:Ljava/lang/String;

.field public expireTime:I

.field public finish:Z

.field public finishCode:Ljava/lang/String;

.field public finishMessage:Ljava/lang/String;

.field public finishParams:Ljava/lang/String;

.field public nextStep:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public useBird:Ljava/lang/String;

.field public verifyCode:Ljava/lang/String;

.field public verifyId:Ljava/lang/String;

.field public verifyMessage:Ljava/lang/String;

.field public verifySuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobileic/common/service/model/MICRpcResult;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
