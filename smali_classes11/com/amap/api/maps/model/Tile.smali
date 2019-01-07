.class public final Lcom/amap/api/maps/model/Tile;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/b;


# instance fields
.field private final a:I

.field public final data:[B

.field public final height:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/amap/api/maps/model/b;

    invoke-direct {v0}, Lcom/amap/api/maps/model/b;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/Tile;->CREATOR:Lcom/amap/api/maps/model/b;

    return-void
.end method

.method constructor <init>(III[B)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/amap/api/maps/model/Tile;->a:I

    .line 36
    iput p2, p0, Lcom/amap/api/maps/model/Tile;->width:I

    .line 37
    iput p3, p0, Lcom/amap/api/maps/model/Tile;->height:I

    .line 38
    iput-object p4, p0, Lcom/amap/api/maps/model/Tile;->data:[B

    .line 39
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amap/api/maps/model/Tile;-><init>(III[B)V

    .line 51
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/amap/api/maps/model/Tile;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/amap/api/maps/model/Tile;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/amap/api/maps/model/Tile;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/amap/api/maps/model/Tile;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 64
    return-void
.end method
