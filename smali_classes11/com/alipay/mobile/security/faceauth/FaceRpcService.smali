.class public abstract Lcom/alipay/mobile/security/faceauth/FaceRpcService;
.super Lcom/alipay/mobile/security/bio/service/BioService;
.source "FaceRpcService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/BioService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addGwRequest(Lcom/alipay/mobile/security/faceauth/FaceRpcGwRequest;)V
.end method

.method public abstract setRpcListener(Lcom/alipay/mobile/security/faceauth/FaceRpcListener;)V
.end method
