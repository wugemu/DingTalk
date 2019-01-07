.class public Lcom/alipay/mobile/verifyidentity/module/password/pay/model/VerifyRequestModel;
.super Ljava/lang/Object;
.source "VerifyRequestModel.java"


# instance fields
.field public encryptPwd:Ljava/lang/String;

.field public isSimplePPW:Ljava/lang/String;

.field public predata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public setIsSimplePPW(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "F_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/VerifyRequestModel;->isSimplePPW:Ljava/lang/String;

    .line 17
    :cond_0
    return-void
.end method
