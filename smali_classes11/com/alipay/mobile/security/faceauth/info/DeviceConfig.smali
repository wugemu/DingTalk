.class public Lcom/alipay/mobile/security/faceauth/info/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/faceauth/info/DeviceItem;",
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

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/info/DeviceConfig;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDeviceItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/faceauth/info/DeviceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/info/DeviceConfig;->a:Ljava/util/List;

    return-object v0
.end method

.method public setDeviceItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/faceauth/info/DeviceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/security/faceauth/info/DeviceItem;>;"
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/info/DeviceConfig;->a:Ljava/util/List;

    .line 16
    return-void
.end method
