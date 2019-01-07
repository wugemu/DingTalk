.class public Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;
.super Ljava/lang/Object;
.source "VideoNetConfig.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->a:Ljava/lang/String;

    .line 8
    const/16 v0, 0xf0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->b:I

    .line 9
    const/16 v0, 0x140

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->c:I

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->d:Z

    .line 11
    const v0, 0x1f4000

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->e:I

    .line 12
    const v0, 0x5dc00

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->f:I

    .line 13
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->g:I

    .line 14
    const/16 v0, 0x14

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->h:I

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->f:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->h:I

    return v0
.end method

.method public getFps()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->g:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->c:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->e:I

    return v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getVioceRecognization()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->d:Z

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->b:I

    return v0
.end method

.method public setBitrate(I)V
    .locals 0
    .param p1, "bitrate"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->f:I

    .line 74
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->a:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->h:I

    .line 90
    return-void
.end method

.method public setFps(I)V
    .locals 0
    .param p1, "fps"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->g:I

    .line 82
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->c:I

    .line 59
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->e:I

    .line 66
    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->i:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setVioceRecognization(Z)V
    .locals 0
    .param p1, "vioceRecognization"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->d:Z

    .line 98
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/VideoNetConfig;->b:I

    .line 51
    return-void
.end method
