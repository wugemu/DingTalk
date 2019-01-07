.class public Lcom/alipay/mobile/security/faceauth/info/LocalFaceSettings;
.super Ljava/lang/Object;
.source "LocalFaceSettings.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/faceauth/info/DeviceConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/info/LocalFaceSettings;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDeviceConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/faceauth/info/DeviceConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/info/LocalFaceSettings;->a:Ljava/util/List;

    return-object v0
.end method

.method public setDeviceConfigs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/faceauth/info/DeviceConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "deviceConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/security/faceauth/info/DeviceConfig;>;"
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/info/LocalFaceSettings;->a:Ljava/util/List;

    .line 14
    return-void
.end method
