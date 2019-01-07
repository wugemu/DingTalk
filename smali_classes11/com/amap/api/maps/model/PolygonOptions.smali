.class public final Lcom/amap/api/maps/model/PolygonOptions;
.super Ljava/lang/Object;
.source "PolygonOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/PolygonOptionsCreator;


# instance fields
.field a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/amap/api/maps/model/PolygonOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/PolygonOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/PolygonOptions;->CREATOR:Lcom/amap/api/maps/model/PolygonOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x1000000

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->c:F

    .line 23
    iput v1, p0, Lcom/amap/api/maps/model/PolygonOptions;->d:I

    .line 24
    iput v1, p0, Lcom/amap/api/maps/model/PolygonOptions;->e:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->f:F

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->g:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->b:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public final add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-object p0
.end method

.method public final varargs add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    iget-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    return-object p0
.end method

.method public final addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps/model/PolygonOptions;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 98
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 100
    iget-object v2, p0, Lcom/amap/api/maps/model/PolygonOptions;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_0
    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public final fillColor(I)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->e:I

    .line 146
    return-object p0
.end method

.method public final getFillColor()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->e:I

    return v0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getStrokeColor()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->d:I

    return v0
.end method

.method public final getStrokeWidth()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->c:F

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->f:F

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->g:Z

    return v0
.end method

.method public final strokeColor(I)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->d:I

    .line 135
    return-object p0
.end method

.method public final strokeWidth(F)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->c:F

    .line 124
    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->g:Z

    .line 168
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 60
    iget v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 61
    iget v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 64
    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    iget-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 0

    .prologue
    .line 156
    iput p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->f:F

    .line 157
    return-object p0
.end method
