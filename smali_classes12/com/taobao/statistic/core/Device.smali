.class public Lcom/taobao/statistic/core/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/Device;->udid:Ljava/lang/String;

    .line 5
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/Device;->imei:Ljava/lang/String;

    .line 6
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/Device;->imsi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/taobao/statistic/core/Device;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/taobao/statistic/core/Device;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/statistic/core/Device;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/taobao/statistic/core/Device;->imei:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/taobao/statistic/core/Device;->imsi:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/taobao/statistic/core/Device;->udid:Ljava/lang/String;

    .line 10
    return-void
.end method
