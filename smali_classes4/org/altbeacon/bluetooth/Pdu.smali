.class public Lorg/altbeacon/bluetooth/Pdu;
.super Ljava/lang/Object;
.source "Pdu.java"


# static fields
.field public static final GATT_SERVICE_UUID_PDU_TYPE:B = 0x16t

.field public static final MANUFACTURER_DATA_PDU_TYPE:B = -0x1t

.field private static final TAG:Ljava/lang/String; = "Pdu"


# instance fields
.field private mBytes:[B

.field private mDeclaredLength:I

.field private mEndIndex:I

.field private mStartIndex:I

.field private mType:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse([BI)Lorg/altbeacon/bluetooth/Pdu;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "startIndex"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, "pdu":Lorg/altbeacon/bluetooth/Pdu;
    array-length v4, p0

    sub-int/2addr v4, p1

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 32
    aget-byte v1, p0, p1

    .line 33
    .local v1, "length":B
    if-lez v1, :cond_1

    .line 34
    add-int/lit8 v4, p1, 0x1

    aget-byte v3, p0, v4

    .line 35
    .local v3, "type":B
    add-int/lit8 v0, p1, 0x2

    .line 36
    .local v0, "firstIndex":I
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 37
    new-instance v2, Lorg/altbeacon/bluetooth/Pdu;

    .end local v2    # "pdu":Lorg/altbeacon/bluetooth/Pdu;
    invoke-direct {v2}, Lorg/altbeacon/bluetooth/Pdu;-><init>()V

    .line 41
    .restart local v2    # "pdu":Lorg/altbeacon/bluetooth/Pdu;
    add-int v4, p1, v1

    iput v4, v2, Lorg/altbeacon/bluetooth/Pdu;->mEndIndex:I

    .line 42
    iget v4, v2, Lorg/altbeacon/bluetooth/Pdu;->mEndIndex:I

    array-length v5, p0

    if-lt v4, v5, :cond_0

    .line 43
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Lorg/altbeacon/bluetooth/Pdu;->mEndIndex:I

    .line 45
    :cond_0
    iput-byte v3, v2, Lorg/altbeacon/bluetooth/Pdu;->mType:B

    .line 46
    iput v1, v2, Lorg/altbeacon/bluetooth/Pdu;->mDeclaredLength:I

    .line 47
    iput v0, v2, Lorg/altbeacon/bluetooth/Pdu;->mStartIndex:I

    .line 48
    iput-object p0, v2, Lorg/altbeacon/bluetooth/Pdu;->mBytes:[B

    .line 52
    .end local v0    # "firstIndex":I
    .end local v1    # "length":B
    .end local v3    # "type":B
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getActualLength()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 76
    iget v0, p0, Lorg/altbeacon/bluetooth/Pdu;->mEndIndex:I

    iget v1, p0, Lorg/altbeacon/bluetooth/Pdu;->mStartIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDeclaredLength()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/altbeacon/bluetooth/Pdu;->mDeclaredLength:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/altbeacon/bluetooth/Pdu;->mEndIndex:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/altbeacon/bluetooth/Pdu;->mStartIndex:I

    return v0
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 60
    iget-byte v0, p0, Lorg/altbeacon/bluetooth/Pdu;->mType:B

    return v0
.end method
