.class public Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;
.super Ljava/lang/Object;
.source "ProtocolConfig.java"


# instance fields
.field a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->b:I

    .line 7
    const/16 v0, 0x3df

    iput v0, p0, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->c:I

    .line 12
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEnv()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->b:I

    return v0
.end method

.method public getNavigatepage()Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->d:Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;

    return-object v0
.end method

.method public getUi()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->c:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setEnv(I)V
    .locals 0
    .param p1, "env"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->b:I

    .line 20
    return-void
.end method

.method public setNavigatepage(Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;)V
    .locals 0
    .param p1, "navigatepage"    # Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->d:Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;

    .line 28
    return-void
.end method

.method public setUi(I)V
    .locals 0
    .param p1, "ui"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->c:I

    .line 44
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->a:Ljava/lang/String;

    .line 36
    return-void
.end method
