.class public Lcom/amap/api/services/poisearch/IndoorData;
.super Ljava/lang/Object;
.source "IndoorData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/poisearch/IndoorData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/amap/api/services/poisearch/IndoorData$1;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/IndoorData$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/poisearch/IndoorData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/IndoorData;->a:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/poisearch/IndoorData;->b:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/IndoorData;->c:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amap/api/services/poisearch/IndoorData;->a:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/amap/api/services/poisearch/IndoorData;->b:I

    .line 23
    iput-object p3, p0, Lcom/amap/api/services/poisearch/IndoorData;->c:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getFloor()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/amap/api/services/poisearch/IndoorData;->b:I

    return v0
.end method

.method public getFloorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amap/api/services/poisearch/IndoorData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPoiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amap/api/services/poisearch/IndoorData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setFloor(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/amap/api/services/poisearch/IndoorData;->b:I

    .line 56
    return-void
.end method

.method public setFloorName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/amap/api/services/poisearch/IndoorData;->c:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPoiId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/amap/api/services/poisearch/IndoorData;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amap/api/services/poisearch/IndoorData;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/amap/api/services/poisearch/IndoorData;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lcom/amap/api/services/poisearch/IndoorData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return-void
.end method
