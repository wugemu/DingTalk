.class public Lorg/altbeacon/beacon/AltBeacon$Builder;
.super Lorg/altbeacon/beacon/Beacon$Builder;
.source "AltBeacon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/AltBeacon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/altbeacon/beacon/Beacon$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/altbeacon/beacon/Beacon;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 137
    new-instance v0, Lorg/altbeacon/beacon/AltBeacon;

    invoke-super {p0}, Lorg/altbeacon/beacon/Beacon$Builder;->build()Lorg/altbeacon/beacon/Beacon;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/AltBeacon;-><init>(Lorg/altbeacon/beacon/Beacon;)V

    return-object v0
.end method

.method public setMfgReserved(I)Lorg/altbeacon/beacon/AltBeacon$Builder;
    .locals 4
    .param p1, "mfgReserved"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 140
    iget-object v0, p0, Lorg/altbeacon/beacon/AltBeacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iget-object v0, v0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/altbeacon/beacon/AltBeacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/AltBeacon$Builder;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iget-object v0, v0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-object p0
.end method
