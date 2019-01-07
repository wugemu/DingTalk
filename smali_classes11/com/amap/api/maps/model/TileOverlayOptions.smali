.class public final Lcom/amap/api/maps/model/TileOverlayOptions;
.super Ljava/lang/Object;
.source "TileOverlayOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/TileOverlayOptionsCreator;


# instance fields
.field private final a:I

.field private b:Lcom/amap/api/maps/model/TileProvider;

.field private c:Z

.field private d:F

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/amap/api/maps/model/TileOverlayOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/TileOverlayOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/TileOverlayOptions;->CREATOR:Lcom/amap/api/maps/model/TileOverlayOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->c:Z

    .line 20
    const/high16 v0, 0x500000

    iput v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->e:I

    .line 21
    const/high16 v0, 0x1400000

    iput v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->f:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->g:Ljava/lang/String;

    .line 23
    iput-boolean v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->h:Z

    .line 24
    iput-boolean v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->i:Z

    .line 32
    iput v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->a:I

    .line 33
    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;ZF)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->c:Z

    .line 20
    const/high16 v0, 0x500000

    iput v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->e:I

    .line 21
    const/high16 v0, 0x1400000

    iput v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->f:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->g:Ljava/lang/String;

    .line 23
    iput-boolean v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->h:Z

    .line 24
    iput-boolean v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->i:Z

    .line 37
    iput p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->a:I

    .line 39
    iput-boolean p3, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->c:Z

    .line 40
    iput p4, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->d:F

    .line 41
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public final diskCacheDir(Ljava/lang/String;)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->g:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public final diskCacheEnabled(Z)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->i:Z

    .line 160
    return-object p0
.end method

.method public final diskCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 1

    .prologue
    .line 123
    mul-int/lit16 v0, p1, 0x400

    iput v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->f:I

    .line 124
    return-object p0
.end method

.method public final getDiskCacheDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getDiskCacheEnabled()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->i:Z

    return v0
.end method

.method public final getDiskCacheSize()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->f:I

    return v0
.end method

.method public final getMemCacheSize()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->e:I

    return v0
.end method

.method public final getMemoryCacheEnabled()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->h:Z

    return v0
.end method

.method public final getTileProvider()Lcom/amap/api/maps/model/TileProvider;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->b:Lcom/amap/api/maps/model/TileProvider;

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->d:F

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->c:Z

    return v0
.end method

.method public final memCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->e:I

    .line 112
    return-object p0
.end method

.method public final memoryCacheEnabled(Z)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->h:Z

    .line 148
    return-object p0
.end method

.method public final tileProvider(Lcom/amap/api/maps/model/TileProvider;)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->b:Lcom/amap/api/maps/model/TileProvider;

    .line 71
    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->c:Z

    .line 95
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    iget v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->b:Lcom/amap/api/maps/model/TileProvider;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 52
    iget-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 53
    iget v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 54
    iget v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->h:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 58
    iget-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->i:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 59
    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    :cond_1
    move v0, v2

    .line 57
    goto :goto_1

    :cond_2
    move v1, v2

    .line 58
    goto :goto_2
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->d:F

    .line 83
    return-object p0
.end method
