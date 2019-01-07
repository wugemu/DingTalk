.class final Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator$1;
.super Ljava/lang/Object;
.source "FaceAuthenticator.java"

# interfaces
.implements Lcom/alipay/mobile/security/bio/api/BioCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;->auth(Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;

.field final synthetic b:Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator$1;->b:Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;

    iput-object p2, p0, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator$1;->a:Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/alipay/mobile/security/bio/api/BioResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/alipay/mobile/security/bio/api/BioResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    new-instance v0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;-><init>()V

    .line 110
    .local v0, "detectResponse":Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->setResult(I)V

    .line 111
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResultMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->setResultMessage(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->setSuccess(Z)V

    .line 113
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->setToken(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator$1;->a:Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator$1;->a:Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;->onResult(Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;)V

    .line 119
    :cond_0
    return-void
.end method
