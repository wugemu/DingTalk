.class public Lcom/ta/utdid2/device/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private deviceId:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private mCheckSum:J

.field private mCreateTimestamp:J

.field private utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->imei:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->imsi:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->deviceId:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->utdid:Ljava/lang/String;

    .line 14
    iput-wide v2, p0, Lcom/ta/utdid2/device/Device;->mCreateTimestamp:J

    .line 15
    iput-wide v2, p0, Lcom/ta/utdid2/device/Device;->mCheckSum:J

    return-void
.end method


# virtual methods
.method getCheckSum()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/ta/utdid2/device/Device;->mCheckSum:J

    return-wide v0
.end method

.method getCreateTimestamp()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/ta/utdid2/device/Device;->mCreateTimestamp:J

    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method setCheckSum(J)V
    .locals 1
    .param p1, "mCheckSum"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/ta/utdid2/device/Device;->mCheckSum:J

    .line 23
    return-void
.end method

.method setCreateTimestamp(J)V
    .locals 1
    .param p1, "mCreateTimestamp"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/ta/utdid2/device/Device;->mCreateTimestamp:J

    .line 31
    return-void
.end method

.method setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->deviceId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->imei:Ljava/lang/String;

    .line 39
    return-void
.end method

.method setImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->imsi:Ljava/lang/String;

    .line 47
    return-void
.end method

.method setUtdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "utdid"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->utdid:Ljava/lang/String;

    .line 63
    return-void
.end method
