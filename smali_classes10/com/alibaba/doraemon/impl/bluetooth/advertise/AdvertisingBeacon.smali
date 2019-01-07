.class public Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingBeacon;
.super Lorg/altbeacon/beacon/Beacon;
.source "AdvertisingBeacon.java"


# instance fields
.field public mBeaconType:S

.field public mData:[B

.field public mOperation:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/altbeacon/beacon/Beacon;-><init>()V

    return-void
.end method


# virtual methods
.method public toBytes()[B
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v1, 0x0

    iget-short v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingBeacon;->mBeaconType:S

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Utils;->toBytes(S)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-short v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingBeacon;->mOperation:S

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Utils;->toBytes(S)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingBeacon;->mData:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Utils;->mergeArray([[B)[B

    move-result-object v0

    return-object v0
.end method
