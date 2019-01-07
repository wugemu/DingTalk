.class public Lcom/amap/api/maps/model/TileOverlayOptionsCreator;
.super Ljava/lang/Object;
.source "TileOverlayOptionsCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps/model/TileOverlayOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 12
    const-class v0, Lcom/amap/api/maps/model/TileProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/TileProvider;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    .line 19
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v10

    if-eqz v10, :cond_3

    .line 20
    :goto_2
    new-instance v3, Lcom/amap/api/maps/model/TileOverlayOptions;

    const/4 v10, 0x0

    invoke-direct {v3, v5, v10, v1, v6}, Lcom/amap/api/maps/model/TileOverlayOptions;-><init>(ILandroid/os/IBinder;ZF)V

    .line 21
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v3, v0}, Lcom/amap/api/maps/model/TileOverlayOptions;->tileProvider(Lcom/amap/api/maps/model/TileProvider;)Lcom/amap/api/maps/model/TileOverlayOptions;

    .line 24
    :cond_0
    invoke-virtual {v3, v7}, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;

    .line 25
    invoke-virtual {v3, v8}, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;

    .line 26
    invoke-virtual {v3, v9}, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheDir(Ljava/lang/String;)Lcom/amap/api/maps/model/TileOverlayOptions;

    .line 27
    invoke-virtual {v3, v4}, Lcom/amap/api/maps/model/TileOverlayOptions;->memoryCacheEnabled(Z)Lcom/amap/api/maps/model/TileOverlayOptions;

    .line 28
    invoke-virtual {v3, v2}, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheEnabled(Z)Lcom/amap/api/maps/model/TileOverlayOptions;

    .line 29
    return-object v3

    :cond_1
    move v1, v3

    .line 13
    goto :goto_0

    :cond_2
    move v4, v3

    .line 18
    goto :goto_1

    :cond_3
    move v2, v3

    .line 19
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/TileOverlayOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/TileOverlayOptions;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 1

    .prologue
    .line 33
    new-array v0, p1, [Lcom/amap/api/maps/model/TileOverlayOptions;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/TileOverlayOptionsCreator;->newArray(I)[Lcom/amap/api/maps/model/TileOverlayOptions;

    move-result-object v0

    return-object v0
.end method
