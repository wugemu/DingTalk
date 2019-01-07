.class public Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;
.super Ljava/lang/Object;
.source "FaceNetConfig.java"


# instance fields
.field private a:Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

.field private b:Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

.field private c:Ljava/lang/String;

.field private d:I

.field public deviceSettings:[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, "3.0"

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->c:Ljava/lang/String;

    .line 13
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->d:I

    .line 15
    new-array v0, v1, [Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->deviceSettings:[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    return-void
.end method


# virtual methods
.method public getDeviceSettings()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->deviceSettings:[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    return-object v0
.end method

.method public getEnv()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->d:I

    return v0
.end method

.method public getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->a:Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    return-object v0
.end method

.method public getSample()Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->b:Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceSettings([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
    .locals 0
    .param p1, "deviceSettings"    # [Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->deviceSettings:[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .line 55
    return-void
.end method

.method public setEnv(I)V
    .locals 0
    .param p1, "env"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->d:I

    .line 47
    return-void
.end method

.method public setLogin(Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;)V
    .locals 0
    .param p1, "login"    # Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->a:Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    .line 23
    return-void
.end method

.method public setSample(Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;)V
    .locals 0
    .param p1, "sample"    # Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->b:Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    .line 31
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->c:Ljava/lang/String;

    .line 39
    return-void
.end method
