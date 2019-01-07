.class public Lorg/altbeacon/beacon/utils/EddystoneTelemetryAccessor;
.super Ljava/lang/Object;
.source "EddystoneTelemetryAccessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EddystoneTLMAccessor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private byteArrayToString([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 64
    const-string/jumbo v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getBase64EncodedTelemetry(Lorg/altbeacon/beacon/Beacon;)Ljava/lang/String;
    .locals 4
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/utils/EddystoneTelemetryAccessor;->getTelemetryBytes(Lorg/altbeacon/beacon/Beacon;)[B

    move-result-object v1

    .line 49
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    .line 50
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "base64EncodedTelemetry":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Base64 telemetry bytes are :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .end local v0    # "base64EncodedTelemetry":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTelemetryBytes(Lorg/altbeacon/beacon/Beacon;)[B
    .locals 5
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 24
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getExtraDataFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 25
    new-instance v3, Lorg/altbeacon/beacon/Beacon$Builder;

    invoke-direct {v3}, Lorg/altbeacon/beacon/Beacon$Builder;-><init>()V

    .line 26
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getExtraDataFields()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/altbeacon/beacon/Beacon$Builder;->setDataFields(Ljava/util/List;)Lorg/altbeacon/beacon/Beacon$Builder;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lorg/altbeacon/beacon/Beacon$Builder;->build()Lorg/altbeacon/beacon/Beacon;

    move-result-object v0

    .line 28
    .local v0, "telemetryBeacon":Lorg/altbeacon/beacon/Beacon;
    new-instance v3, Lorg/altbeacon/beacon/BeaconParser;

    invoke-direct {v3}, Lorg/altbeacon/beacon/BeaconParser;-><init>()V

    const-string/jumbo v4, "x,s:0-1=feaa,m:2-2=20,d:3-3,d:4-5,d:6-7,d:8-11,d:12-15"

    .line 29
    invoke-virtual {v3, v4}, Lorg/altbeacon/beacon/BeaconParser;->setBeaconLayout(Ljava/lang/String;)Lorg/altbeacon/beacon/BeaconParser;

    move-result-object v2

    .line 30
    .local v2, "telemetryParser":Lorg/altbeacon/beacon/BeaconParser;
    invoke-virtual {v2, v0}, Lorg/altbeacon/beacon/BeaconParser;->getBeaconAdvertisementData(Lorg/altbeacon/beacon/Beacon;)[B

    move-result-object v1

    .line 31
    .local v1, "telemetryBytes":[B
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Rehydrated telemetry bytes are :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/altbeacon/beacon/utils/EddystoneTelemetryAccessor;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .end local v0    # "telemetryBeacon":Lorg/altbeacon/beacon/Beacon;
    .end local v1    # "telemetryBytes":[B
    .end local v2    # "telemetryParser":Lorg/altbeacon/beacon/BeaconParser;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
