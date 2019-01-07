.class public final Lcom/amap/api/maps/model/TextOptions;
.super Ljava/lang/Object;
.source "TextOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/TextOptionsCreator;


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/amap/api/maps/model/LatLng;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Typeface;

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/Object;

.field private k:I

.field private l:F

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/amap/api/maps/model/TextOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/TextOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/TextOptions;->CREATOR:Lcom/amap/api/maps/model/TextOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->d:Landroid/graphics/Typeface;

    .line 22
    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->f:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->g:I

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->h:I

    .line 25
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->i:I

    .line 27
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->k:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->l:F

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/TextOptions;->m:Z

    return-void
.end method


# virtual methods
.method public final align(II)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->f:I

    .line 143
    iput p2, p0, Lcom/amap/api/maps/model/TextOptions;->g:I

    .line 144
    return-object p0
.end method

.method public final backgroundColor(I)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->h:I

    .line 156
    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public final fontColor(I)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->i:I

    .line 180
    return-object p0
.end method

.method public final fontSize(I)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .prologue
    .line 191
    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->k:I

    .line 192
    return-object p0
.end method

.method public final getAlignX()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->f:I

    return v0
.end method

.method public final getAlignY()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->g:I

    return v0
.end method

.method public final getBackgroundColor()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->h:I

    return v0
.end method

.method public final getFontColor()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->i:I

    return v0
.end method

.method public final getFontSize()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->k:I

    return v0
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->b:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public final getRotate()F
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->e:F

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->d:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->l:F

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/amap/api/maps/model/TextOptions;->m:Z

    return v0
.end method

.method public final position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/amap/api/maps/model/TextOptions;->b:Lcom/amap/api/maps/model/LatLng;

    .line 69
    return-object p0
.end method

.method public final rotate(F)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->e:F

    .line 130
    return-object p0
.end method

.method public final setObject(Ljava/lang/Object;)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/amap/api/maps/model/TextOptions;->j:Ljava/lang/Object;

    .line 168
    return-object p0
.end method

.method public final text(Ljava/lang/String;)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amap/api/maps/model/TextOptions;->c:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public final typeface(Landroid/graphics/Typeface;)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    iput-object p1, p0, Lcom/amap/api/maps/model/TextOptions;->d:Landroid/graphics/Typeface;

    .line 94
    :cond_0
    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/amap/api/maps/model/TextOptions;->m:Z

    .line 106
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/amap/api/maps/model/TextOptions;->b:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_0

    .line 35
    const-string/jumbo v1, "lat"

    iget-object v2, p0, Lcom/amap/api/maps/model/TextOptions;->b:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 36
    const-string/jumbo v1, "lng"

    iget-object v2, p0, Lcom/amap/api/maps/model/TextOptions;->b:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 38
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 42
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->l:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 48
    iget-boolean v0, p0, Lcom/amap/api/maps/model/TextOptions;->m:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->j:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string/jumbo v2, "obj"

    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->j:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 54
    :cond_1
    return-void

    .line 48
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->l:F

    .line 118
    return-object p0
.end method
