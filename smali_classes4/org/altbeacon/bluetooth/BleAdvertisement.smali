.class public Lorg/altbeacon/bluetooth/BleAdvertisement;
.super Ljava/lang/Object;
.source "BleAdvertisement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BleAdvertisement"


# instance fields
.field private mBytes:[B

.field private mPdus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/bluetooth/Pdu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BleAdvertisement;->mBytes:[B

    .line 20
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BleAdvertisement;->parsePdus()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BleAdvertisement;->mPdus:Ljava/util/List;

    .line 21
    return-void
.end method

.method private parsePdus()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/bluetooth/Pdu;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v2, "pdus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/altbeacon/bluetooth/Pdu;>;"
    const/4 v0, 0x0

    .line 27
    .local v0, "index":I
    :cond_0
    iget-object v3, p0, Lorg/altbeacon/bluetooth/BleAdvertisement;->mBytes:[B

    invoke-static {v3, v0}, Lorg/altbeacon/bluetooth/Pdu;->parse([BI)Lorg/altbeacon/bluetooth/Pdu;

    move-result-object v1

    .line 28
    .local v1, "pdu":Lorg/altbeacon/bluetooth/Pdu;
    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v1}, Lorg/altbeacon/bluetooth/Pdu;->getDeclaredLength()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v3, 0x1

    .line 30
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lorg/altbeacon/bluetooth/BleAdvertisement;->mBytes:[B

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 34
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getPdus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/bluetooth/Pdu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BleAdvertisement;->mPdus:Ljava/util/List;

    return-object v0
.end method
