.class public Lcom/amap/api/maps/model/TextOptionsCreator;
.super Ljava/lang/Object;
.source "TextOptionsCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps/model/TextOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/TextOptions;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 13
    new-instance v1, Lcom/amap/api/maps/model/TextOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/TextOptions;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/maps/model/TextOptions;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 16
    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    const-string/jumbo v4, "lat"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string/jumbo v6, "lng"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 17
    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/TextOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/TextOptions;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/TextOptions;->text(Ljava/lang/String;)Lcom/amap/api/maps/model/TextOptions;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/TextOptions;->typeface(Landroid/graphics/Typeface;)Lcom/amap/api/maps/model/TextOptions;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/TextOptions;->rotate(F)Lcom/amap/api/maps/model/TextOptions;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps/model/TextOptions;->align(II)Lcom/amap/api/maps/model/TextOptions;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/TextOptions;->backgroundColor(I)Lcom/amap/api/maps/model/TextOptions;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/TextOptions;->fontColor(I)Lcom/amap/api/maps/model/TextOptions;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/TextOptions;->fontSize(I)Lcom/amap/api/maps/model/TextOptions;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/TextOptions;->zIndex(F)Lcom/amap/api/maps/model/TextOptions;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/TextOptions;->visible(Z)Lcom/amap/api/maps/model/TextOptions;

    .line 28
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 29
    const-string/jumbo v2, "obj"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/TextOptions;->setObject(Ljava/lang/Object;)Lcom/amap/api/maps/model/TextOptions;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_1
    return-object v1

    .line 26
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/TextOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/TextOptions;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/amap/api/maps/model/TextOptions;
    .locals 1

    .prologue
    .line 41
    new-array v0, p1, [Lcom/amap/api/maps/model/TextOptions;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/TextOptionsCreator;->newArray(I)[Lcom/amap/api/maps/model/TextOptions;

    move-result-object v0

    return-object v0
.end method
