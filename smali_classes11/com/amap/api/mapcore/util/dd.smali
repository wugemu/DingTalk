.class public Lcom/amap/api/mapcore/util/dd;
.super Ljava/lang/Object;
.source "PolylineDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cw;


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:F

.field private N:F

.field private O:[F

.field private P:[I

.field private Q:[I

.field private R:D

.field private S:Z

.field private final T:I

.field private U:Lcom/autonavi/amap/mapcore/FPointBounds;

.field private V:Lcom/amap/api/maps/model/PolylineOptions;

.field private W:I

.field private X:I

.field a:I

.field b:I

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation
.end field

.field d:J

.field private e:Lcom/amap/api/mapcore/util/j;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/nio/FloatBuffer;

.field private p:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private q:Lcom/amap/api/maps/model/LatLngBounds;

.field private r:Ljava/lang/Object;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/j;Lcom/amap/api/maps/model/PolylineOptions;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->g:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->h:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->i:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->j:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->k:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->m:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->n:Ljava/util/List;

    .line 61
    iput-object v4, p0, Lcom/amap/api/mapcore/util/dd;->p:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 62
    iput-object v4, p0, Lcom/amap/api/mapcore/util/dd;->q:Lcom/amap/api/maps/model/LatLngBounds;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->r:Ljava/lang/Object;

    .line 64
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/dd;->s:Z

    .line 65
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/dd;->t:Z

    .line 66
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/dd;->u:Z

    .line 67
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/dd;->v:Z

    .line 68
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/dd;->w:Z

    .line 69
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/dd;->x:Z

    .line 70
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/dd;->y:Z

    .line 71
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/dd;->z:Z

    .line 72
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/dd;->A:Z

    .line 74
    iput v2, p0, Lcom/amap/api/mapcore/util/dd;->B:I

    .line 75
    iput v2, p0, Lcom/amap/api/mapcore/util/dd;->C:I

    .line 76
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/mapcore/util/dd;->D:I

    .line 77
    iput v2, p0, Lcom/amap/api/mapcore/util/dd;->E:I

    .line 78
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/dd;->F:F

    .line 79
    iput v3, p0, Lcom/amap/api/mapcore/util/dd;->G:F

    .line 80
    iput v3, p0, Lcom/amap/api/mapcore/util/dd;->H:F

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/dd;->M:F

    .line 86
    iput v3, p0, Lcom/amap/api/mapcore/util/dd;->N:F

    .line 98
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dd;->R:D

    .line 100
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/dd;->S:Z

    .line 102
    iput v5, p0, Lcom/amap/api/mapcore/util/dd;->T:I

    .line 104
    iput-object v4, p0, Lcom/amap/api/mapcore/util/dd;->U:Lcom/autonavi/amap/mapcore/FPointBounds;

    .line 115
    iput v2, p0, Lcom/amap/api/mapcore/util/dd;->W:I

    .line 116
    iput v5, p0, Lcom/amap/api/mapcore/util/dd;->X:I

    .line 493
    iput v2, p0, Lcom/amap/api/mapcore/util/dd;->a:I

    .line 494
    iput v2, p0, Lcom/amap/api/mapcore/util/dd;->b:I

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->c:Ljava/util/ArrayList;

    .line 599
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dd;->d:J

    .line 157
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    .line 158
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/dd;->setOptions(Lcom/amap/api/maps/model/PolylineOptions;)V

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dd;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string/jumbo v1, "PolylineDelegateImp"

    const-string/jumbo v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(DDDDDD)D
    .locals 9

    .prologue
    .line 1234
    sub-double v0, p9, p5

    sub-double v2, p1, p5

    mul-double/2addr v0, v2

    sub-double v2, p11, p7

    sub-double v4, p3, p7

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 1235
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 1236
    sub-double v0, p1, p5

    sub-double v2, p1, p5

    mul-double/2addr v0, v2

    sub-double v2, p3, p7

    sub-double v4, p3, p7

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1245
    :goto_0
    return-wide v0

    .line 1238
    :cond_0
    sub-double v2, p9, p5

    sub-double v4, p9, p5

    mul-double/2addr v2, v4

    sub-double v4, p11, p7

    sub-double v6, p11, p7

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 1239
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    .line 1240
    sub-double v0, p1, p9

    sub-double v2, p1, p9

    mul-double/2addr v0, v2

    sub-double v2, p3, p11

    sub-double v4, p3, p11

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_0

    .line 1242
    :cond_1
    div-double/2addr v0, v2

    .line 1243
    sub-double v2, p9, p5

    mul-double/2addr v2, v0

    add-double/2addr v2, p5

    .line 1244
    sub-double v4, p11, p7

    mul-double/2addr v0, v4

    add-double v0, v0, p7

    .line 1245
    sub-double v4, p1, v2

    sub-double v2, p1, v2

    mul-double/2addr v2, v4

    sub-double v4, v0, p3

    sub-double/2addr v0, p3

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method private a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)D
    .locals 16

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1207
    move-object/from16 v0, p1

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v4, v2

    move-object/from16 v0, p1

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-double v6, v2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v8, v2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-double v10, v2

    move-object/from16 v0, p3

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v12, v2

    move-object/from16 v0, p3

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-double v14, v2

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lcom/amap/api/mapcore/util/dd;->a(DDDDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;IZLcom/amap/api/maps/model/BitmapDescriptor;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 813
    if-eqz p3, :cond_2

    .line 814
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/amap/api/mapcore/util/l;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)I

    move-result v0

    .line 816
    :goto_0
    if-nez v0, :cond_1

    .line 817
    invoke-virtual {p4}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 818
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 819
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dd;->c(Ljavax/microedition/khronos/opengles/GL10;)I

    move-result v0

    .line 820
    if-eqz p3, :cond_0

    .line 821
    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    new-instance v3, Lcom/amap/api/mapcore/util/s;

    invoke-direct {v3, p4, v0}, Lcom/amap/api/mapcore/util/s;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    invoke-interface {v2, v3}, Lcom/amap/api/mapcore/util/l;->a(Lcom/amap/api/mapcore/util/s;)V

    .line 824
    :cond_0
    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/amap/api/mapcore/util/en;->b(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;Z)I

    .line 827
    :cond_1
    return v0

    :cond_2
    move v0, p2

    goto :goto_0
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 747
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->w:Z

    if-nez v0, :cond_2

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->j:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 750
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->Q:[I

    .line 752
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v0, v3, :cond_0

    move v5, v1

    .line 753
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    move v4, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 754
    invoke-direct {p0, p1, v3, v5, v0}, Lcom/amap/api/mapcore/util/dd;->a(Ljavax/microedition/khronos/opengles/GL10;IZLcom/amap/api/maps/model/BitmapDescriptor;)I

    move-result v0

    .line 755
    iget-object v3, p0, Lcom/amap/api/mapcore/util/dd;->Q:[I

    aput v0, v3, v4

    .line 756
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    .line 757
    goto :goto_1

    :cond_0
    move v5, v2

    .line 752
    goto :goto_0

    .line 758
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->w:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    .line 771
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->h:Ljava/util/List;

    .line 773
    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/dd;->a([Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 774
    iget-object v4, p0, Lcom/amap/api/mapcore/util/dd;->r:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 775
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->h:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v3, v0, v5}, Lcom/amap/api/mapcore/util/en;->b([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 776
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 780
    :cond_3
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    .line 783
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dd;->e(Ljava/util/List;)V

    .line 786
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    move v4, v2

    .line 787
    :goto_2
    array-length v0, v3

    if-ge v4, v0, :cond_6

    .line 788
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->m:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 789
    if-gez v0, :cond_4

    move v0, v2

    .line 790
    :cond_4
    iget-object v5, p0, Lcom/amap/api/mapcore/util/dd;->Q:[I

    aget v0, v5, v0

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 787
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 760
    :catch_0
    move-exception v0

    .line 761
    const-string/jumbo v1, "MarkerDelegateImp"

    const-string/jumbo v2, "loadtexture"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_5
    :goto_3
    return-void

    .line 776
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 802
    :catch_1
    move-exception v0

    .line 803
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 794
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->P:[I

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 795
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->a:I

    array-length v4, v3

    iget-object v5, p0, Lcom/amap/api/mapcore/util/dd;->P:[I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->P:[I

    array-length v6, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget v7, p0, Lcom/amap/api/mapcore/util/dd;->M:F

    sub-float v7, v2, v7

    move v2, p2

    invoke-static/range {v0 .. v7}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByMultiTextureID([FIF[II[IIF)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :cond_7
    move v0, v2

    .line 794
    goto :goto_4
.end method

.method private a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 595
    iget v0, p2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->N:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v0, v1

    .line 596
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->N:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([Lcom/autonavi/amap/mapcore/FPoint;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1021
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->o()F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/dd;->H:F

    .line 1022
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dd;->e()V

    .line 1023
    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->H:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return v0

    .line 1027
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1028
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->U:Lcom/autonavi/amap/mapcore/FPointBounds;

    iget-object v1, v1, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v1, p1}, Lcom/amap/api/mapcore/util/en;->a(Lcom/autonavi/amap/mapcore/FPoint;[Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->U:Lcom/autonavi/amap/mapcore/FPointBounds;

    iget-object v1, v1, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    .line 1029
    invoke-static {v1, p1}, Lcom/amap/api/mapcore/util/en;->a(Lcom/autonavi/amap/mapcore/FPoint;[Lcom/autonavi/amap/mapcore/FPoint;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 1032
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1037
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/amap/mapcore/FPoint;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1211
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1212
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1213
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 1214
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v3, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/mapcore/util/l;->b(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 1216
    return-object v0
.end method

.method private b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 719
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->F:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v0

    .line 722
    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->B:I

    packed-switch v1, :pswitch_data_0

    .line 744
    :goto_0
    return-void

    .line 724
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/dd;->f(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_0

    .line 727
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/dd;->e(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_0

    .line 730
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/dd;->d(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_0

    .line 733
    :pswitch_3
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/dd;->c(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_0

    .line 736
    :pswitch_4
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/dd;->b(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_0

    .line 739
    :pswitch_5
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/dd;->a(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_0

    .line 722
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private b(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 831
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 832
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 832
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    array-length v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    .line 836
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/dd;->P:[I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->P:[I

    array-length v6, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    .line 837
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->b()I

    move-result v7

    move v2, p2

    .line 835
    invoke-static/range {v0 .. v7}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawGradientColorLine([FIF[II[III)V

    .line 838
    return-void
.end method

.method private c(Ljavax/microedition/khronos/opengles/GL10;)I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1014
    new-array v0, v2, [I

    aput v1, v0, v1

    .line 1015
    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 1016
    aget v0, v0, v1

    return v0
.end method

.method private c(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 841
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    move v1, v2

    .line 842
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 842
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    .line 848
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->h:Ljava/util/List;

    .line 852
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dd;->a([Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 853
    iget-object v3, p0, Lcom/amap/api/mapcore/util/dd;->r:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->h:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Lcom/amap/api/mapcore/util/en;->b([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 855
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    .line 862
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dd;->e(Ljava/util/List;)V

    .line 865
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [I

    move v1, v2

    .line 866
    :goto_1
    array-length v0, v4

    if-ge v1, v0, :cond_3

    .line 867
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 869
    aput v0, v4, v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 866
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 855
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 885
    :catch_0
    move-exception v0

    .line 886
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 892
    :cond_2
    :goto_2
    return-void

    .line 873
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->P:[I

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_2

    .line 879
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->a:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    .line 880
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->b()I

    move-result v3

    array-length v5, v4

    iget-object v6, p0, Lcom/amap/api/mapcore/util/dd;->P:[I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->P:[I

    array-length v7, v2

    move v2, p2

    .line 879
    invoke-static/range {v0 .. v7}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByMultiColor([FIFI[II[II)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method

.method private d(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 895
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/dd;->w:Z

    if-nez v2, :cond_1

    .line 896
    monitor-enter p0

    .line 898
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->p:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v2, :cond_0

    .line 899
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 901
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_3

    .line 902
    :goto_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/dd;->p:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amap/api/mapcore/util/dd;->a(Ljavax/microedition/khronos/opengles/GL10;IZLcom/amap/api/maps/model/BitmapDescriptor;)I

    move-result v0

    .line 903
    const/4 v1, 0x0

    aput v0, v2, v1

    .line 904
    const/4 v0, 0x0

    aget v0, v2, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/dd;->C:I

    .line 906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->w:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    .line 919
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    if-eqz v1, :cond_4

    .line 920
    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->W:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/util/dd;->W:I

    .line 921
    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->W:I

    iget v2, p0, Lcom/amap/api/mapcore/util/dd;->X:I

    if-le v1, v2, :cond_4

    .line 925
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->a:I

    iget v3, p0, Lcom/amap/api/mapcore/util/dd;->C:I

    iget v4, p0, Lcom/amap/api/mapcore/util/dd;->J:F

    iget v5, p0, Lcom/amap/api/mapcore/util/dd;->K:F

    iget v6, p0, Lcom/amap/api/mapcore/util/dd;->L:F

    iget v7, p0, Lcom/amap/api/mapcore/util/dd;->I:F

    iget v2, p0, Lcom/amap/api/mapcore/util/dd;->M:F

    sub-float/2addr v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v2, p2

    invoke-static/range {v0 .. v11}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 956
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 901
    goto :goto_0

    .line 908
    :catch_0
    move-exception v0

    .line 909
    :try_start_3
    const-string/jumbo v1, "MarkerDelegateImp"

    const-string/jumbo v2, "loadtexture"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    monitor-exit p0

    goto :goto_1

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 931
    :cond_4
    const/4 v1, 0x0

    :try_start_4
    iput v1, p0, Lcom/amap/api/mapcore/util/dd;->W:I

    .line 932
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    .line 934
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->h:Ljava/util/List;

    .line 936
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dd;->a([Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 937
    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->r:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 938
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->h:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/amap/api/mapcore/util/en;->a([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 939
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 942
    :cond_5
    :try_start_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 944
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dd;->e(Ljava/util/List;)V

    .line 945
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->a:I

    iget v3, p0, Lcom/amap/api/mapcore/util/dd;->C:I

    iget v4, p0, Lcom/amap/api/mapcore/util/dd;->J:F

    iget v5, p0, Lcom/amap/api/mapcore/util/dd;->K:F

    iget v6, p0, Lcom/amap/api/mapcore/util/dd;->L:F

    iget v7, p0, Lcom/amap/api/mapcore/util/dd;->I:F

    iget v2, p0, Lcom/amap/api/mapcore/util/dd;->M:F

    sub-float/2addr v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v2, p2

    invoke-static/range {v0 .. v11}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 956
    :catch_1
    move-exception v0

    goto :goto_1

    .line 939
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
.end method

.method private e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 483
    iget v0, p0, Lcom/amap/api/mapcore/util/dd;->E:I

    const/16 v2, 0x1388

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/dd;->H:F

    const/high16 v2, 0x41400000    # 12.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 484
    iget v0, p0, Lcom/amap/api/mapcore/util/dd;->F:F

    div-float/2addr v0, v3

    iget v2, p0, Lcom/amap/api/mapcore/util/dd;->H:F

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 485
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    .line 486
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/dd;->N:F

    .line 491
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 485
    goto :goto_0

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/dd;->N:F

    goto :goto_1
.end method

.method private e(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 504
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 506
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 507
    const/4 v0, 0x2

    if-ge v4, v0, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    .line 512
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    const/4 v1, 0x1

    move v3, v1

    move-object v1, v0

    :goto_1
    add-int/lit8 v0, v4, -0x1

    if-ge v3, v0, :cond_2

    .line 514
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    .line 515
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/util/dd;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 516
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->c:Ljava/util/ArrayList;

    add-int/lit8 v1, v4, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v5, v0, 0x3

    .line 524
    iput v5, p0, Lcom/amap/api/mapcore/util/dd;->a:I

    .line 525
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    array-length v0, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->a:I

    if-ge v0, v1, :cond_4

    .line 529
    :cond_3
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    .line 532
    :cond_4
    iget v0, p0, Lcom/amap/api/mapcore/util/dd;->B:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/amap/api/mapcore/util/dd;->B:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 533
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [I

    .line 534
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move v3, v2

    move v4, v2

    .line 538
    :goto_3
    div-int/lit8 v0, v5, 0x3

    if-ge v1, v0, :cond_8

    .line 539
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint3;

    .line 540
    iget-object v8, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    mul-int/lit8 v9, v1, 0x3

    iget v10, v0, Lcom/autonavi/amap/mapcore/FPoint3;->x:F

    aput v10, v8, v9

    .line 541
    iget-object v8, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    mul-int/lit8 v9, v1, 0x3

    add-int/lit8 v9, v9, 0x1

    iget v10, v0, Lcom/autonavi/amap/mapcore/FPoint3;->y:F

    aput v10, v8, v9

    .line 542
    iget-object v8, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    mul-int/lit8 v9, v1, 0x3

    add-int/lit8 v9, v9, 0x2

    aput v11, v8, v9

    .line 545
    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint3;->colorIndex:I

    .line 546
    if-nez v1, :cond_7

    .line 547
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :goto_4
    aput v1, v6, v3

    .line 560
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    .line 538
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 549
    :cond_7
    if-eq v0, v4, :cond_6

    .line 554
    const/4 v8, -0x1

    if-ne v0, v8, :cond_a

    .line 556
    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_4

    .line 564
    :cond_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->P:[I

    .line 565
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->P:[I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->P:[I

    array-length v1, v1

    invoke-static {v6, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 567
    iput-object v7, p0, Lcom/amap/api/mapcore/util/dd;->m:Ljava/util/List;

    .line 568
    iput-object v7, p0, Lcom/amap/api/mapcore/util/dd;->n:Ljava/util/List;

    goto/16 :goto_0

    .line 573
    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    .line 575
    iget-object v3, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    mul-int/lit8 v4, v2, 0x3

    iget v5, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v5, v3, v4

    .line 576
    iget-object v3, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x1

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v0, v3, v4

    .line 577
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    mul-int/lit8 v3, v2, 0x3

    add-int/lit8 v3, v3, 0x2

    aput v11, v0, v3

    .line 578
    add-int/lit8 v2, v2, 0x1

    .line 579
    goto :goto_6

    :cond_a
    move v4, v0

    goto :goto_5

    :cond_b
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private e(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 959
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    array-length v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    .line 960
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->k()I

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/util/dd;->J:F

    iget v5, p0, Lcom/amap/api/mapcore/util/dd;->K:F

    iget v6, p0, Lcom/amap/api/mapcore/util/dd;->L:F

    iget v7, p0, Lcom/amap/api/mapcore/util/dd;->I:F

    const/4 v8, 0x0

    const/4 v11, 0x0

    move v2, p2

    move v10, v9

    .line 959
    invoke-static/range {v0 .. v11}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ)V

    .line 962
    return-void
.end method

.method private f()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1194
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1195
    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    aget v2, v2, v0

    .line 1196
    add-int/lit8 v0, v0, 0x1

    .line 1197
    iget-object v3, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    aget v3, v3, v0

    .line 1198
    add-int/lit8 v0, v0, 0x1

    .line 1199
    new-instance v4, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v4, v2, v3}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    .line 1201
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1203
    :cond_0
    return-object v1
.end method

.method private f(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1326
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [I

    .line 1327
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move v3, v2

    move v4, v2

    .line 1329
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1330
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1331
    if-nez v1, :cond_1

    .line 1332
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1339
    :goto_1
    aput v1, v5, v3

    .line 1341
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    .line 1329
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1334
    :cond_1
    if-eq v0, v4, :cond_0

    .line 1337
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1343
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->P:[I

    .line 1344
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->P:[I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->P:[I

    array-length v1, v1

    invoke-static {v5, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1345
    return-object v6
.end method

.method private f(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 967
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->h:Ljava/util/List;

    .line 968
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    .line 973
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    if-eqz v1, :cond_2

    .line 974
    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->W:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/util/dd;->W:I

    .line 975
    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->W:I

    iget v2, p0, Lcom/amap/api/mapcore/util/dd;->X:I

    if-le v1, v2, :cond_2

    .line 978
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->a:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    .line 979
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->b()I

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/util/dd;->J:F

    iget v5, p0, Lcom/amap/api/mapcore/util/dd;->K:F

    iget v6, p0, Lcom/amap/api/mapcore/util/dd;->L:F

    iget v7, p0, Lcom/amap/api/mapcore/util/dd;->I:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move v2, p2

    .line 978
    invoke-static/range {v0 .. v11}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ)V

    goto :goto_0

    .line 1011
    :catch_0
    move-exception v0

    goto :goto_0

    .line 985
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/mapcore/util/dd;->W:I

    .line 986
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->p()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    .line 988
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dd;->a([Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 989
    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->r:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->h:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/amap/api/mapcore/util/en;->a([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 994
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 996
    :cond_3
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 998
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dd;->e(Ljava/util/List;)V

    .line 1000
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->a:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    .line 1001
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->b()I

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/util/dd;->J:F

    iget v5, p0, Lcom/amap/api/mapcore/util/dd;->K:F

    iget v6, p0, Lcom/amap/api/mapcore/util/dd;->L:F

    iget v7, p0, Lcom/amap/api/mapcore/util/dd;->I:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move v2, p2

    .line 1000
    invoke-static/range {v0 .. v11}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 994
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method


# virtual methods
.method a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;DI)Lcom/autonavi/amap/mapcore/IPoint;
    .locals 12

    .prologue
    .line 217
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 218
    iget v3, p2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v3, v4

    int-to-double v4, v3

    .line 219
    iget v3, p2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    .line 220
    mul-double v8, v6, v6

    mul-double v10, v4, v4

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    .line 221
    move/from16 v0, p6

    int-to-double v10, v0

    mul-double v10, v10, p4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double v8, v10, v8

    iget v3, p3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v10, v3

    add-double/2addr v8, v10

    double-to-int v3, v8

    iput v3, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 222
    iget v3, p3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v8, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v3, v8

    int-to-double v8, v3

    mul-double/2addr v6, v8

    div-double v4, v6, v4

    iget v3, p3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v6, v3

    add-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    .line 224
    return-object v2
.end method

.method a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Ljava/util/List;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps/model/LatLng;",
            "Lcom/amap/api/maps/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;",
            "Lcom/amap/api/maps/model/LatLngBounds$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 275
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double v18, v2, v4

    .line 277
    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 281
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 284
    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_0

    const/16 v20, -0x1

    .line 286
    :goto_0
    new-instance v10, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v10}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v5 .. v10}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 289
    new-instance v16, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct/range {v16 .. v16}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v11 .. v16}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 291
    new-instance v8, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v3, v2

    invoke-interface/range {v3 .. v8}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 296
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 298
    iget v4, v10, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    iget v6, v10, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v18

    .line 301
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double v18, v4, v6

    move-object/from16 v14, p0

    move-object v15, v10

    move-object/from16 v17, v8

    .line 303
    invoke-virtual/range {v14 .. v20}, Lcom/amap/api/mapcore/util/dd;->a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;DI)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    .line 306
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/util/List;Ljava/util/List;D)V

    .line 313
    return-void

    .line 284
    :cond_0
    const/16 v20, 0x1

    goto/16 :goto_0
.end method

.method a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 168
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v9

    .line 171
    if-eqz p1, :cond_3

    .line 172
    const/4 v0, 0x0

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v7, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 177
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/dd;->u:Z

    if-nez v1, :cond_1

    .line 178
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 180
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v9, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    :cond_0
    :goto_1
    move-object v7, v0

    .line 202
    goto :goto_0

    .line 183
    :cond_1
    if-eqz v7, :cond_0

    .line 184
    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    .line 185
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget-wide v2, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 188
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v9, v7}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 190
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 193
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v9, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    goto :goto_1

    .line 196
    :cond_2
    invoke-virtual {p0, v7, v0, v8, v9}, Lcom/amap/api/mapcore/util/dd;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Ljava/util/List;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V

    goto :goto_1

    .line 204
    :cond_3
    iput-object v8, p0, Lcom/amap/api/mapcore/util/dd;->g:Ljava/util/List;

    .line 205
    iput v11, p0, Lcom/amap/api/mapcore/util/dd;->E:I

    .line 206
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 207
    invoke-virtual {v9}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->q:Lcom/amap/api/maps/model/LatLngBounds;

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 210
    return-void
.end method

.method a(Ljava/util/List;Ljava/util/List;D)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 241
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 267
    :cond_0
    return-void

    .line 248
    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v2, 0xa

    if-gt v3, v2, :cond_0

    .line 249
    int-to-float v2, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float v4, v2, v4

    .line 250
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 251
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    float-to-double v8, v4

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    float-to-double v10, v4

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v8, v2

    mul-double/2addr v6, v8

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    float-to-double v8, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    float-to-double v12, v4

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    const/4 v2, 0x1

    .line 252
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v10, v2

    mul-double/2addr v8, v10

    mul-double v8, v8, p3

    add-double/2addr v6, v8

    mul-float v8, v4, v4

    const/4 v2, 0x2

    .line 253
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-double v8, v2

    add-double/2addr v6, v8

    .line 254
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    float-to-double v10, v4

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    float-to-double v12, v4

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v10, v2

    mul-double/2addr v8, v10

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    float-to-double v10, v2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    float-to-double v14, v4

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    const/4 v2, 0x1

    .line 255
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v12, v2

    mul-double/2addr v10, v12

    mul-double v10, v10, p3

    add-double/2addr v8, v10

    mul-float v10, v4, v4

    const/4 v2, 0x2

    .line 256
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v10

    float-to-double v10, v2

    add-double/2addr v8, v10

    .line 258
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    float-to-double v12, v4

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    float-to-double v14, v4

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    float-to-double v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v4

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    mul-double v12, v12, p3

    add-double/2addr v10, v12

    mul-float v2, v4, v4

    float-to-double v12, v2

    add-double/2addr v10, v12

    .line 259
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    float-to-double v14, v4

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v4

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    float-to-double v14, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v4

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    mul-double v14, v14, p3

    add-double/2addr v12, v14

    mul-float v2, v4, v4

    float-to-double v14, v2

    add-double/2addr v12, v14

    .line 261
    div-double/2addr v6, v10

    double-to-int v2, v6

    iput v2, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    .line 262
    div-double v6, v8, v12

    double-to-int v2, v6

    iput v2, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 264
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    int-to-float v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    move v3, v2

    goto/16 :goto_0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 684
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/dd;->F:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 699
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->x:Z

    if-eqz v0, :cond_2

    .line 700
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dd;->b()Z

    .line 701
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->x:Z

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/amap/api/mapcore/util/dd;->E:I

    if-lez v0, :cond_3

    .line 704
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->A:Z

    if-eqz v0, :cond_4

    .line 705
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dd;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 715
    :cond_3
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->z:Z

    goto :goto_0

    .line 707
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->o:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_5

    .line 708
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    invoke-static {v0}, Lcom/amap/api/mapcore/util/en;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->o:Ljava/nio/FloatBuffer;

    .line 710
    :cond_5
    const/4 v1, 0x3

    iget v2, p0, Lcom/amap/api/mapcore/util/dd;->D:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/dd;->o:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/amap/api/mapcore/util/dd;->F:F

    iget v5, p0, Lcom/amap/api/mapcore/util/dd;->E:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/util/ea;->a(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/dd;->A:Z

    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 121
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1144
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    array-length v0, v0

    new-array v0, v0, [F

    .line 1145
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    iget-object v3, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    array-length v3, v3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1146
    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    .line 1147
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return v2

    .line 1154
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dd;->f()Ljava/util/ArrayList;

    move-result-object v4

    .line 1155
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->F:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v0

    float-to-double v6, v0

    .line 1165
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iget-wide v8, p0, Lcom/amap/api/mapcore/util/dd;->R:D

    double-to-int v1, v8

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v0

    float-to-double v8, v0

    .line 1167
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dd;->b(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v5

    .line 1170
    const/4 v0, 0x0

    move v1, v2

    .line 1171
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_4

    .line 1172
    if-nez v1, :cond_2

    .line 1173
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    move-object v3, v0

    .line 1177
    :goto_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    .line 1179
    invoke-direct {p0, v5, v3, v0}, Lcom/amap/api/mapcore/util/dd;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)D

    move-result-wide v10

    .line 1181
    add-double v12, v8, v6

    sub-double v10, v12, v10

    const-wide/16 v12, 0x0

    cmpl-double v3, v10, v12

    if-ltz v3, :cond_3

    .line 1182
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1183
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v0

    .line 1175
    goto :goto_2

    .line 1171
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1186
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1160
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1273
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1278
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/dd;->t:Z

    .line 1279
    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/mapcore/util/dd;->B:I

    .line 1280
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dd;->j:Ljava/util/List;

    .line 1281
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    goto :goto_0

    .line 1283
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1318
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1319
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/dd;->y:Z

    .line 1320
    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/mapcore/util/dd;->B:I

    .line 1321
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 1323
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 444
    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->r:Ljava/lang/Object;

    monitor-enter v2

    .line 445
    :try_start_0
    new-instance v3, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;-><init>()V

    .line 446
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 447
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/dd;->z:Z

    .line 449
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    .line 450
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    array-length v1, v1

    iput v1, p0, Lcom/amap/api/mapcore/util/dd;->a:I

    .line 451
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    .line 452
    new-instance v5, Lcom/autonavi/amap/mapcore/FPoint3;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/FPoint3;-><init>()V

    .line 454
    iget-object v6, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v6}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v6

    iget v7, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-interface {v6, v7, v0, v5}, Lcom/amap/api/mapcore/util/l;->b(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 455
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    mul-int/lit8 v6, v1, 0x3

    iget v7, v5, Lcom/autonavi/amap/mapcore/FPoint3;->x:F

    aput v7, v0, v6

    .line 456
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x1

    iget v7, v5, Lcom/autonavi/amap/mapcore/FPoint3;->y:F

    aput v7, v0, v6

    .line 457
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    aput v7, v0, v6

    .line 459
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/autonavi/amap/mapcore/FPoint3;->setColorIndex(I)V

    .line 464
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->h:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-virtual {v3, v5}, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->include(Lcom/autonavi/amap/mapcore/FPoint;)Lcom/autonavi/amap/mapcore/FPointBounds$Builder;

    .line 467
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 468
    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/autonavi/amap/mapcore/FPoint3;->setColorIndex(I)V

    goto :goto_1

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 469
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->build()Lcom/autonavi/amap/mapcore/FPointBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->U:Lcom/autonavi/amap/mapcore/FPointBounds;

    .line 470
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->A:Z

    if-nez v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    invoke-static {v0}, Lcom/amap/api/mapcore/util/en;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->o:Ljava/nio/FloatBuffer;

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/dd;->E:I

    .line 475
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dd;->e()V

    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1289
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1292
    :cond_1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dd;->k:Ljava/util/List;

    .line 1294
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dd;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->m:Ljava/util/List;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1094
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->z:Z

    return v0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1350
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/dd;->w:Z

    .line 1352
    iput v1, p0, Lcom/amap/api/mapcore/util/dd;->C:I

    .line 1354
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->Q:[I

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->Q:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1357
    :cond_0
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1300
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1314
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    .line 1306
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1307
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/dd;->t:Z

    .line 1308
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dd;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->n:Ljava/util/List;

    .line 1309
    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/mapcore/util/dd;->B:I

    .line 1310
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    goto :goto_0

    .line 1312
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->setColor(I)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1044
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dd;->remove()V

    .line 1046
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->Q:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->Q:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1047
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->Q:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1048
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->Q:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/j;->a(Ljava/lang/Integer;)V

    .line 1049
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dd;->Q:[I

    aget v2, v2, v0

    invoke-interface {v1, v2}, Lcom/amap/api/mapcore/util/l;->g(I)V

    .line 1047
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1052
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/dd;->C:I

    if-lez v0, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/j;->a(Ljava/lang/Integer;)V

    .line 1054
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/dd;->C:I

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->g(I)V

    .line 1058
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    if-eqz v0, :cond_2

    .line 1059
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->O:[F

    .line 1061
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->o:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    .line 1062
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->o:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 1063
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->o:Ljava/nio/FloatBuffer;

    .line 1065
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->j:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1066
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 1067
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    const-string/jumbo v1, "PolylineDelegateImp"

    const-string/jumbo v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1090
    :goto_2
    return-void

    .line 1070
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->p:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_5

    .line 1071
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->p:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    .line 1073
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 1074
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1075
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->l:Ljava/util/List;

    .line 1077
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->k:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1078
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1079
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->k:Ljava/util/List;

    .line 1081
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->i:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 1082
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1083
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->i:Ljava/util/List;

    .line 1085
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->V:Lcom/amap/api/maps/model/PolylineOptions;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 420
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dd;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    :cond_0
    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    iget v0, p0, Lcom/amap/api/mapcore/util/dd;->D:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 326
    const-string/jumbo v0, "Polyline"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dd;->f:Ljava/lang/String;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getNearestLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1099
    if-nez p1, :cond_0

    move-object v0, v4

    .line 1128
    :goto_0
    return-object v0

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v4

    .line 1104
    goto :goto_0

    .line 1109
    :cond_2
    const/4 v1, 0x0

    move v2, v3

    .line 1110
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 1111
    if-nez v3, :cond_3

    .line 1112
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->i:Ljava/util/List;

    .line 1113
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 1112
    invoke-static {p1, v0}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    move v1, v2

    .line 1110
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 1115
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->i:Ljava/util/List;

    .line 1116
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 1115
    invoke-static {p1, v0}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    .line 1117
    cmpl-float v5, v1, v0

    if-lez v5, :cond_5

    move v1, v3

    .line 1119
    goto :goto_2

    .line 1123
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    const-string/jumbo v1, "PolylineDelegateImp"

    const-string/jumbo v2, "getNearestLatLng"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v4

    .line 1128
    goto :goto_0

    :cond_5
    move v0, v1

    move v1, v2

    goto :goto_2
.end method

.method public getOptions()Lcom/amap/api/maps/model/PolylineOptions;
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->V:Lcom/amap/api/maps/model/PolylineOptions;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->i:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    iget v0, p0, Lcom/amap/api/mapcore/util/dd;->F:F

    return v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 402
    iget v0, p0, Lcom/amap/api/mapcore/util/dd;->G:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    .prologue
    .line 1366
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->S:Z

    return v0
.end method

.method public isDottedLine()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->v:Z

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->u:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->s:Z

    return v0
.end method

.method public remove()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dd;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/j;->d(Ljava/lang/String;)Z

    .line 318
    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/dd;->setVisible(Z)V

    .line 319
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 321
    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    .prologue
    .line 1361
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/dd;->S:Z

    .line 1362
    return-void
.end method

.method public setColor(I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    .line 370
    iget v0, p0, Lcom/amap/api/mapcore/util/dd;->B:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/dd;->B:I

    if-ne v0, v3, :cond_2

    .line 371
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/util/dd;->D:I

    .line 372
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/dd;->I:F

    .line 373
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/dd;->J:F

    .line 374
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/dd;->K:F

    .line 375
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/dd;->L:F

    .line 376
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->t:Z

    if-eqz v0, :cond_1

    .line 377
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->v:Z

    if-eqz v0, :cond_3

    .line 378
    iput v3, p0, Lcom/amap/api/mapcore/util/dd;->B:I

    .line 382
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->V:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    .line 385
    return-void

    .line 380
    :cond_3
    iput v2, p0, Lcom/amap/api/mapcore/util/dd;->B:I

    goto :goto_0
.end method

.method public setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 604
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 605
    iget-wide v2, p0, Lcom/amap/api/mapcore/util/dd;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x10

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dd;->d:J

    .line 610
    if-eqz p1, :cond_0

    .line 616
    monitor-enter p0

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->p:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 620
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->p:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->p:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    .line 626
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->t:Z

    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->w:Z

    .line 628
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/dd;->B:I

    .line 629
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dd;->p:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 630
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 631
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->V:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    .line 632
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDottedLine(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x2

    .line 138
    iget v0, p0, Lcom/amap/api/mapcore/util/dd;->B:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/dd;->B:I

    if-nez v0, :cond_2

    .line 139
    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/dd;->v:Z

    .line 140
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->t:Z

    if-eqz v0, :cond_1

    .line 141
    iput v1, p0, Lcom/amap/api/mapcore/util/dd;->B:I

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 145
    :cond_2
    return-void
.end method

.method public setGeodesic(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/dd;->u:Z

    .line 125
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 126
    return-void
.end method

.method public setOptions(Lcom/amap/api/maps/model/PolylineOptions;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1372
    if-nez p1, :cond_0

    .line 1409
    :goto_0
    return-void

    .line 1375
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dd;->V:Lcom/amap/api/maps/model/PolylineOptions;

    .line 1377
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->setColor(I)V

    .line 1378
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isGeodesic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->setGeodesic(Z)V

    .line 1379
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isDottedLine()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->setDottedLine(Z)V

    .line 1380
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isAboveMaskLayer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->setAboveMaskLayer(Z)V

    .line 1382
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->setVisible(Z)V

    .line 1383
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->setWidth(F)V

    .line 1384
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getZIndex()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->setZIndex(F)V

    .line 1385
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isUseTexture()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->a(Z)V

    .line 1386
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getTransparency()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->setTransparency(F)V

    .line 1388
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColorValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1389
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColorValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->d(Ljava/util/List;)V

    .line 1390
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isUseGradient()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->b(Z)V

    .line 1393
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1394
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 1395
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dd;->d()V

    .line 1397
    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1398
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->b(Ljava/util/List;)V

    .line 1399
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureIndex()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->c(Ljava/util/List;)V

    .line 1400
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dd;->d()V

    .line 1404
    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/dd;->setPoints(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1405
    :catch_0
    move-exception v0

    .line 1406
    const-string/jumbo v1, "PolylineDelegateImp"

    const-string/jumbo v2, "setOptions"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 336
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dd;->i:Ljava/util/List;

    .line 337
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->r:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/util/List;)V

    .line 339
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/dd;->x:Z

    .line 341
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 342
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->V:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setPoints(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 349
    :goto_0
    return-void

    .line 339
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    const-string/jumbo v1, "PolylineDelegateImp"

    const-string/jumbo v2, "setPoints"

    .line 345
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dd;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 347
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setTransparency(F)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1267
    iput p1, p0, Lcom/amap/api/mapcore/util/dd;->M:F

    .line 1268
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 1269
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/dd;->s:Z

    .line 408
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 409
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->V:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->visible(Z)Lcom/amap/api/maps/model/PolylineOptions;

    .line 410
    return-void
.end method

.method public setWidth(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 358
    iput p1, p0, Lcom/amap/api/mapcore/util/dd;->F:F

    .line 359
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 360
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->V:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    .line 361
    return-void
.end method

.method public setZIndex(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 394
    iput p1, p0, Lcom/amap/api/mapcore/util/dd;->G:F

    .line 395
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->c()V

    .line 396
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->e:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->e()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 397
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dd;->V:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->zIndex(F)Lcom/amap/api/maps/model/PolylineOptions;

    .line 398
    return-void
.end method
