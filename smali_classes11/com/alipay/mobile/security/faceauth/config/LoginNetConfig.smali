.class public Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;
.super Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;
.source "LoginNetConfig.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;-><init>()V

    .line 5
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLoginmode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setLoginmode(Ljava/lang/String;)V
    .locals 0
    .param p1, "logigmode"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->a:Ljava/lang/String;

    .line 13
    return-void
.end method
