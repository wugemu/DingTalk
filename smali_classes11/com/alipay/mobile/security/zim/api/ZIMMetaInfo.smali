.class public Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;
.super Ljava/lang/Object;
.source "ZIMMetaInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApdidToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getBioMetaInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getZimVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setApdidToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "apdidToken"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->d:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->e:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setBioMetaInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "bioMetaInfo"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->g:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceModel"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->c:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->f:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setZimVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "zimVer"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->h:Ljava/lang/String;

    .line 22
    return-void
.end method
