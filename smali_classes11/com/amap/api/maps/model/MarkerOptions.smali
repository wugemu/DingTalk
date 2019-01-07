.class public final Lcom/amap/api/maps/model/MarkerOptions;
.super Ljava/lang/Object;
.source "MarkerOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/MarkerOptionsCreator;


# instance fields
.field a:Ljava/lang/String;

.field b:F

.field c:Z

.field d:Z

.field e:I

.field f:F

.field private g:Lcom/amap/api/maps/model/LatLng;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:F

.field private k:F

.field private l:F

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/amap/api/maps/model/MarkerOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/MarkerOptions;->CREATOR:Lcom/amap/api/maps/model/MarkerOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->j:F

    .line 23
    iput v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->k:F

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->l:F

    .line 25
    iput-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->m:Z

    .line 26
    iput-boolean v3, p0, Lcom/amap/api/maps/model/MarkerOptions;->n:Z

    .line 28
    iput-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->o:Z

    .line 29
    iput v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->p:I

    iput v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->q:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    .line 35
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->s:I

    .line 36
    iput-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->t:Z

    .line 37
    iput-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->u:Z

    .line 417
    iput v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->b:F

    .line 419
    iput-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->c:Z

    .line 421
    iput-boolean v3, p0, Lcom/amap/api/maps/model/MarkerOptions;->d:Z

    .line 423
    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:I

    .line 115
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public final alpha(F)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 436
    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->b:F

    .line 437
    return-object p0
.end method

.method public final anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 194
    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->j:F

    .line 195
    iput p2, p0, Lcom/amap/api/maps/model/MarkerOptions;->k:F

    .line 196
    return-object p0
.end method

.method public final autoOverturnInfoWindow(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 457
    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->c:Z

    .line 458
    return-object p0
.end method

.method public final belowMaskLayer(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 548
    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->v:Z

    .line 549
    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public final displayLevel(I)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 482
    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:I

    .line 483
    return-object p0
.end method

.method public final draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->m:Z

    .line 246
    return-object p0
.end method

.method public final getAlpha()F
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->b:F

    return v0
.end method

.method public final getAnchorU()F
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->j:F

    return v0
.end method

.method public final getAnchorV()F
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->k:F

    return v0
.end method

.method public final getDisplayLevel()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:I

    return v0
.end method

.method public final getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 308
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 311
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIcons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getInfoWindowOffsetX()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->p:I

    return v0
.end method

.method public final getInfoWindowOffsetY()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->q:I

    return v0
.end method

.method public final getPeriod()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->s:I

    return v0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->g:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public final getRotateAngle()F
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->f:F

    return v0
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->l:F

    return v0
.end method

.method public final icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 1

    .prologue
    .line 176
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps/model/MarkerOptions;->a()V

    .line 177
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-object p0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final icons(Ljava/util/ArrayList;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)",
            "Lcom/amap/api/maps/model/MarkerOptions;"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    .line 48
    return-object p0
.end method

.method public final infoWindowEnable(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 526
    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->d:Z

    .line 527
    return-object p0
.end method

.method public final isBelowMaskLayer()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->v:Z

    return v0
.end method

.method public final isDraggable()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->m:Z

    return v0
.end method

.method public final isFlat()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->u:Z

    return v0
.end method

.method public final isGps()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->t:Z

    return v0
.end method

.method public final isInfoWindowAutoOverturn()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->c:Z

    return v0
.end method

.method public final isInfoWindowEnable()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->d:Z

    return v0
.end method

.method public final isPerspective()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->o:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->n:Z

    return v0
.end method

.method public final period(I)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 69
    if-gt p1, v0, :cond_0

    .line 70
    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->s:I

    .line 74
    :goto_0
    return-object p0

    .line 72
    :cond_0
    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->s:I

    goto :goto_0
.end method

.method public final perspective(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->o:Z

    .line 108
    return-object p0
.end method

.method public final position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->g:Lcom/amap/api/maps/model/LatLng;

    .line 145
    return-object p0
.end method

.method public final rotateAngle(F)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 505
    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->f:F

    .line 506
    return-object p0
.end method

.method public final setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->u:Z

    .line 157
    return-object p0
.end method

.method public final setGps(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->t:Z

    .line 269
    return-object p0
.end method

.method public final setInfoWindowOffset(II)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 209
    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->p:I

    .line 210
    iput p2, p0, Lcom/amap/api/maps/model/MarkerOptions;->q:I

    .line 211
    return-object p0
.end method

.method public final snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->i:Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->h:Ljava/lang/String;

    .line 222
    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->n:Z

    .line 257
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 570
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->g:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 571
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 574
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->k:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 575
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    const/4 v0, 0x7

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->n:Z

    aput-boolean v1, v0, v3

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->m:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->t:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->u:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->c:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->d:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->v:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 578
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->s:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 581
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->l:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 584
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 585
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 587
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 590
    :cond_0
    return-void
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    .prologue
    .line 402
    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->l:F

    .line 403
    return-object p0
.end method
