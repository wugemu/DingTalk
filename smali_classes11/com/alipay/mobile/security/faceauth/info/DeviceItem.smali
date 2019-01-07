.class public Lcom/alipay/mobile/security/faceauth/info/DeviceItem;
.super Ljava/lang/Object;
.source "DeviceItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/info/DeviceItem;->b:I

    .line 9
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/info/DeviceItem;->c:I

    return-void
.end method


# virtual methods
.method public getMaxSdkVersion()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/info/DeviceItem;->c:I

    return v0
.end method

.method public getMinSdkVersion()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/info/DeviceItem;->b:I

    return v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/info/DeviceItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setMaxSdkVersion(I)V
    .locals 0
    .param p1, "maxSdkVersion"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/info/DeviceItem;->c:I

    .line 33
    return-void
.end method

.method public setMinSdkVersion(I)V
    .locals 0
    .param p1, "minSdkVersion"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/info/DeviceItem;->b:I

    .line 25
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/info/DeviceItem;->a:Ljava/lang/String;

    .line 17
    return-void
.end method
