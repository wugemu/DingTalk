.class public final Lcom/amap/api/maps/model/NavigateArrowOptions;
.super Ljava/lang/Object;
.source "NavigateArrowOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/NavigateArrowOptionsCreator;


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
    .line 17
    new-instance v0, Lcom/amap/api/maps/model/NavigateArrowOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/NavigateArrowOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/NavigateArrowOptions;->CREATOR:Lcom/amap/api/maps/model/NavigateArrowOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->c:F

    .line 20
    const/16 v0, 0xdd

    const/16 v1, 0x57

    const/16 v2, 0xeb

    const/16 v3, 0xcc

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->d:I

    .line 21
    const/16 v0, 0xaa

    const/4 v1, 0x0

    const/16 v2, 0xac

    const/16 v3, 0x92

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->e:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->f:F

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->g:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->b:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public final add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-object p0
.end method

.method public final varargs add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    return-object p0
.end method

.method public final addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps/model/NavigateArrowOptions;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 61
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 63
    iget-object v2, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_0
    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

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
    .line 131
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getSideColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    iget v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->e:I

    return v0
.end method

.method public final getTopColor()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->d:I

    return v0
.end method

.method public final getWidth()F
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->c:F

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->f:F

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->g:Z

    return v0
.end method

.method public final sideColor(I)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    iput p1, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->e:I

    .line 100
    return-object p0
.end method

.method public final topColor(I)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->d:I

    .line 88
    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 0

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->g:Z

    .line 122
    return-object p0
.end method

.method public final width(F)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->c:F

    .line 76
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 196
    iget v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 197
    iget v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 200
    iget-boolean v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 201
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->f:F

    .line 111
    return-object p0
.end method
