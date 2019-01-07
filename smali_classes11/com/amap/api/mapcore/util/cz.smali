.class public Lcom/amap/api/mapcore/util/cz;
.super Ljava/lang/Object;
.source "MarkerDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cr;
.implements Lcom/autonavi/amap/mapcore/interfaces/IAnimation;
.implements Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;


# static fields
.field private static D:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static E:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static b:I


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private F:Lcom/autonavi/amap/mapcore/FPoint;

.field private G:F

.field private H:F

.field private I:Z

.field private J:Ljava/nio/FloatBuffer;

.field private K:Ljava/lang/String;

.field private L:Lcom/amap/api/maps/model/LatLng;

.field private M:Lcom/amap/api/maps/model/LatLng;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:F

.field private Q:F

.field private R:Z

.field private S:Z

.field private T:Lcom/amap/api/mapcore/util/q;

.field private U:Ljava/nio/FloatBuffer;

.field private V:Ljava/lang/Object;

.field private W:Z

.field private X:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Z

.field private Z:Z

.field a:Lcom/amap/api/mapcore/util/di;

.field private aa:Z

.field private ab:I

.field private ac:I

.field private ad:Z

.field private ae:I

.field private af:I

.field private ag:J

.field private ah:F

.field private ai:F

.field private aj:F

.field private ak:F

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:F

.field private g:F

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/autonavi/amap/mapcore/FPoint;

.field private p:[F

.field private q:[I

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:Lcom/amap/api/maps/model/MarkerOptions;

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/util/cz;->b:I

    .line 87
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/cz;->D:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 88
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/cz;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/mapcore/util/q;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->c:Z

    .line 54
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->d:Z

    .line 55
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->e:Z

    .line 56
    iput v4, p0, Lcom/amap/api/mapcore/util/cz;->f:F

    .line 57
    iput v4, p0, Lcom/amap/api/mapcore/util/cz;->g:F

    .line 58
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->h:Z

    .line 59
    iput v1, p0, Lcom/amap/api/mapcore/util/cz;->i:I

    iput v1, p0, Lcom/amap/api/mapcore/util/cz;->j:I

    .line 60
    iput v1, p0, Lcom/amap/api/mapcore/util/cz;->k:I

    iput v1, p0, Lcom/amap/api/mapcore/util/cz;->l:I

    .line 62
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    .line 64
    iput-object v5, p0, Lcom/amap/api/mapcore/util/cz;->q:[I

    .line 65
    iput v4, p0, Lcom/amap/api/mapcore/util/cz;->r:F

    .line 67
    iput v3, p0, Lcom/amap/api/mapcore/util/cz;->s:F

    .line 68
    iput v3, p0, Lcom/amap/api/mapcore/util/cz;->t:F

    .line 70
    iput v3, p0, Lcom/amap/api/mapcore/util/cz;->u:F

    .line 73
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->w:Z

    .line 74
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cz;->x:Z

    .line 75
    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->y:I

    .line 76
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cz;->z:Z

    .line 77
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cz;->A:Z

    .line 80
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->B:Z

    .line 85
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cz;->C:Z

    .line 89
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->F:Lcom/autonavi/amap/mapcore/FPoint;

    .line 108
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->I:Z

    .line 147
    iput-object v5, p0, Lcom/amap/api/mapcore/util/cz;->J:Ljava/nio/FloatBuffer;

    .line 155
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->P:F

    .line 156
    iput v3, p0, Lcom/amap/api/mapcore/util/cz;->Q:F

    .line 157
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->R:Z

    .line 158
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cz;->S:Z

    .line 162
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->W:Z

    .line 164
    iput-object v5, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 166
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->Y:Z

    .line 592
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->Z:Z

    .line 856
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cz;->aa:Z

    .line 860
    iput v1, p0, Lcom/amap/api/mapcore/util/cz;->ab:I

    .line 864
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->ac:I

    .line 865
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    .line 868
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/cz;->ag:J

    .line 1380
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->ah:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->ai:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->aj:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->ak:F

    .line 189
    iput-object p2, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    .line 191
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/cz;->setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V

    .line 192
    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;)I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 848
    new-array v0, v2, [I

    aput v1, v0, v1

    .line 849
    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 850
    aget v0, v0, v1

    return v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    sget v0, Lcom/amap/api/mapcore/util/cz;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore/util/cz;->b:I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore/util/cz;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(FFLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 663
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->f:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 664
    float-to-double v2, p1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p2

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    .line 665
    float-to-double v2, p2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    double-to-int v0, v0

    iput v0, p3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 666
    return-void
.end method

.method private a(II)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1067
    iput p1, p0, Lcom/amap/api/mapcore/util/cz;->m:I

    .line 1068
    iput p2, p0, Lcom/amap/api/mapcore/util/cz;->n:I

    .line 1069
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 1070
    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->m:I

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->n:I

    invoke-static {v1, v2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 1071
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/cz;->L:Lcom/amap/api/maps/model/LatLng;

    .line 1072
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->m:I

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->n:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 1074
    return-void
.end method

.method private a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x1406

    const/16 v6, 0xbe2

    const/16 v5, 0xde1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 675
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    invoke-static {v6}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 680
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x46040000    # 8448.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glTexEnvf(IIF)V

    .line 682
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    .line 684
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->u:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->u:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->u:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/amap/api/mapcore/util/cz;->u:F

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 687
    invoke-static {v5}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 688
    const v0, 0x8074

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 689
    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 690
    invoke-static {v5, p1}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 692
    const/4 v0, 0x3

    invoke-static {v0, v7, v4, p2}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 693
    const/4 v0, 0x2

    invoke-static {v0, v7, v4, p3}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 694
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v4, v1}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 696
    const v0, 0x8074

    invoke-static {v0}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 697
    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 698
    invoke-static {v5}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 699
    invoke-static {v6}, Landroid/opengl/GLES10;->glDisable(I)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore/util/di;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1150
    instance-of v0, p1, Lcom/amap/api/mapcore/util/do;

    if-eqz v0, :cond_1

    .line 1152
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->L:Lcom/amap/api/maps/model/LatLng;

    .line 1155
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->L:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cz;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 1157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    .line 1160
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1162
    check-cast v0, Lcom/amap/api/mapcore/util/do;

    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->ae:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/amap/api/mapcore/util/do;->a:D

    move-object v0, p1

    .line 1163
    check-cast v0, Lcom/amap/api/mapcore/util/do;

    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->af:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/amap/api/mapcore/util/do;->b:D

    .line 1164
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1165
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/amap/api/mapcore/util/do;

    iget-wide v2, v0, Lcom/amap/api/mapcore/util/do;->w:D

    move-object v0, p1

    check-cast v0, Lcom/amap/api/mapcore/util/do;

    iget-wide v4, v0, Lcom/amap/api/mapcore/util/do;->c:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    move-object v0, p1

    .line 1168
    check-cast v0, Lcom/amap/api/mapcore/util/do;

    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/amap/api/mapcore/util/do;->c:D

    .line 1169
    check-cast p1, Lcom/amap/api/mapcore/util/do;

    iget v0, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/amap/api/mapcore/util/do;->w:D

    .line 1185
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 1172
    check-cast v0, Lcom/amap/api/mapcore/util/do;

    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->m:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/amap/api/mapcore/util/do;->a:D

    move-object v0, p1

    .line 1173
    check-cast v0, Lcom/amap/api/mapcore/util/do;

    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->n:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/amap/api/mapcore/util/do;->b:D

    .line 1174
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    move-object v0, p1

    .line 1175
    check-cast v0, Lcom/amap/api/mapcore/util/do;

    iget-wide v2, v0, Lcom/amap/api/mapcore/util/do;->c:D

    move-object v0, p1

    check-cast v0, Lcom/amap/api/mapcore/util/do;

    iget-wide v4, v0, Lcom/amap/api/mapcore/util/do;->w:D

    invoke-static {v2, v3, v4, v5, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    move-object v0, p1

    .line 1177
    check-cast v0, Lcom/amap/api/mapcore/util/do;

    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v2, v2

    iput-wide v2, v0, Lcom/amap/api/mapcore/util/do;->c:D

    .line 1178
    check-cast p1, Lcom/amap/api/mapcore/util/do;

    iget v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/amap/api/mapcore/util/do;->w:D

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore/util/l;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 626
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->s:F

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->o()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 627
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->t:F

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->p()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 628
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->h:Z

    if-eqz v0, :cond_4

    move v1, v8

    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, p0, Lcom/amap/api/mapcore/util/cz;->f:F

    iget v6, p0, Lcom/amap/api/mapcore/util/cz;->P:F

    iget v7, p0, Lcom/amap/api/mapcore/util/cz;->Q:F

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/en;->a(Lcom/amap/api/mapcore/util/l;ILcom/autonavi/amap/mapcore/FPoint;FIIFF)[F

    move-result-object v1

    .line 631
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->p:[F

    .line 632
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->J:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_5

    .line 633
    invoke-static {v1}, Lcom/amap/api/mapcore/util/en;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->J:Ljava/nio/FloatBuffer;

    .line 638
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 639
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->ab:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->ab:I

    .line 640
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->ac:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    mul-int/2addr v0, v1

    .line 642
    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->ab:I

    if-lt v1, v0, :cond_0

    .line 643
    iput v9, p0, Lcom/amap/api/mapcore/util/cz;->ab:I

    .line 646
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->ac:I

    if-nez v0, :cond_1

    .line 647
    iput v8, p0, Lcom/amap/api/mapcore/util/cz;->ac:I

    .line 649
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->ab:I

    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->ac:I

    div-int/2addr v0, v1

    .line 651
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->aa:Z

    if-nez v1, :cond_2

    .line 652
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    .line 655
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->q:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->q:[I

    array-length v1, v1

    if-lez v1, :cond_3

    .line 656
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->q:[I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    rem-int/2addr v0, v2

    aget v0, v1, v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->J:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->U:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/mapcore/util/cz;->a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 660
    :cond_3
    return-void

    :cond_4
    move v1, v9

    .line 628
    goto :goto_0

    .line 635
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->J:Ljava/nio/FloatBuffer;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/en;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->J:Ljava/nio/FloatBuffer;

    goto :goto_1
.end method

.method private declared-synchronized a([Lcom/autonavi/amap/mapcore/FPoint;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 1382
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1420
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1385
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->v()V

    .line 1387
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->G:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->H:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1389
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    .line 1390
    aget-object v1, p1, v0

    .line 1392
    iget v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v3, p0, Lcom/amap/api/mapcore/util/cz;->ai:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1393
    iget v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iput v2, p0, Lcom/amap/api/mapcore/util/cz;->ai:F

    .line 1396
    :cond_2
    iget v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v3, p0, Lcom/amap/api/mapcore/util/cz;->ah:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 1397
    iget v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iput v2, p0, Lcom/amap/api/mapcore/util/cz;->ah:F

    .line 1400
    :cond_3
    iget v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v3, p0, Lcom/amap/api/mapcore/util/cz;->ak:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 1401
    iget v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iput v2, p0, Lcom/amap/api/mapcore/util/cz;->ak:F

    .line 1404
    :cond_4
    iget v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v3, p0, Lcom/amap/api/mapcore/util/cz;->aj:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 1405
    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iput v1, p0, Lcom/amap/api/mapcore/util/cz;->aj:F

    .line 1389
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1409
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->ah:F

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->ai:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 1410
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->F:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->G:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 1414
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->ak:F

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->aj:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 1415
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->F:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1412
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->F:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->G:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    goto :goto_2

    .line 1417
    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->F:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->H:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private s()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    .line 316
    :cond_0
    return-void
.end method

.method private t()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 454
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->U:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->U:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 463
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->q()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 464
    if-nez v0, :cond_1

    .line 479
    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v1

    .line 468
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v2

    .line 470
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 471
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 472
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 473
    int-to-float v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    .line 474
    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    aput v0, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x4

    aput v0, v2, v1

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput v1, v2, v0

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, v2, v0

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, v2, v0

    invoke-static {v2}, Lcom/amap/api/mapcore/util/en;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->U:Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private u()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    .line 786
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->C:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->a:Lcom/amap/api/mapcore/util/di;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->a:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->l()Z

    move-result v0

    if-nez v0, :cond_6

    .line 788
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    .line 790
    new-instance v0, Lcom/amap/api/mapcore/util/dn;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/dn;-><init>()V

    .line 791
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->a:Lcom/amap/api/mapcore/util/di;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/mapcore/util/di;->a(JLcom/amap/api/mapcore/util/dn;)Z

    .line 795
    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->e:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->f:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 796
    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->e:D

    double-to-float v1, v2

    iput v1, p0, Lcom/amap/api/mapcore/util/cz;->s:F

    .line 797
    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->f:D

    double-to-float v1, v2

    iput v1, p0, Lcom/amap/api/mapcore/util/cz;->t:F

    .line 800
    :cond_0
    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1

    .line 801
    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->d:D

    double-to-float v1, v2

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/cz;->setRotateAngle(F)V

    .line 805
    :cond_1
    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    .line 806
    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->a:D

    .line 807
    iget-wide v4, v0, Lcom/amap/api/mapcore/util/dn;->b:D

    .line 808
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    if-eqz v1, :cond_5

    .line 809
    new-instance v1, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 810
    iget-object v6, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v6}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v6

    invoke-interface {v6}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v6

    double-to-int v2, v2

    double-to-int v3, v4

    invoke-virtual {v6, v2, v3, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 812
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 813
    iget-object v3, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v3

    iget v4, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v3, v4, v1, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 815
    iget v1, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-direct {p0, v1, v2}, Lcom/amap/api/mapcore/util/cz;->a(II)V

    .line 817
    iput-boolean v7, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    .line 826
    :cond_2
    :goto_0
    iget-wide v2, v0, Lcom/amap/api/mapcore/util/dn;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    .line 828
    iget-wide v0, v0, Lcom/amap/api/mapcore/util/dn;->c:D

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->u:F

    .line 833
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 834
    iput-boolean v7, p0, Lcom/amap/api/mapcore/util/cz;->e:Z

    .line 845
    :cond_4
    :goto_1
    return-void

    .line 819
    :cond_5
    double-to-int v1, v2

    double-to-int v2, v4

    invoke-direct {p0, v1, v2}, Lcom/amap/api/mapcore/util/cz;->a(II)V

    goto :goto_0

    .line 841
    :cond_6
    iput v1, p0, Lcom/amap/api/mapcore/util/cz;->s:F

    .line 842
    iput v1, p0, Lcom/amap/api/mapcore/util/cz;->t:F

    .line 843
    iput-boolean v7, p0, Lcom/amap/api/mapcore/util/cz;->C:Z

    goto :goto_1
.end method

.method private v()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->o()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->G:F

    .line 1428
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->p()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->H:F

    .line 1430
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/autonavi/amap/mapcore/FPoint;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    return-object v0
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->n()V

    .line 179
    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 181
    if-eqz v0, :cond_0

    .line 182
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 186
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Lcom/amap/api/mapcore/util/l;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 704
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->S:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->I:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->L:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    if-eqz v0, :cond_1

    .line 707
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->q()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 779
    :cond_1
    :goto_0
    return-void

    .line 710
    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->Z:Z

    if-nez v0, :cond_9

    .line 712
    monitor-enter p0

    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_8

    .line 715
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->q:[I

    .line 717
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_6

    move v3, v4

    .line 718
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 719
    if-eqz v3, :cond_3

    .line 720
    invoke-interface {p2, v0}, Lcom/amap/api/mapcore/util/l;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)I

    move-result v1

    .line 722
    :cond_3
    if-nez v1, :cond_5

    .line 723
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 724
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_5

    .line 725
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/cz;->a(Ljavax/microedition/khronos/opengles/GL10;)I

    move-result v1

    .line 726
    if-eqz v3, :cond_4

    .line 727
    new-instance v7, Lcom/amap/api/mapcore/util/s;

    invoke-direct {v7, v0, v1}, Lcom/amap/api/mapcore/util/s;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    invoke-interface {p2, v7}, Lcom/amap/api/mapcore/util/l;->a(Lcom/amap/api/mapcore/util/s;)V

    .line 730
    :cond_4
    const/4 v0, 0x0

    invoke-static {p1, v1, v6, v0}, Lcom/amap/api/mapcore/util/en;->b(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;Z)I

    :cond_5
    move v0, v1

    .line 733
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->q:[I

    aput v0, v1, v2

    .line 734
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    .line 735
    goto :goto_2

    :cond_6
    move v3, v1

    .line 717
    goto :goto_1

    .line 736
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_c

    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->aa:Z

    .line 741
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->Z:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    :cond_8
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->i()Z

    .line 751
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 755
    :cond_9
    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->c:Z

    if-nez v0, :cond_a

    .line 756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/cz;->ag:J

    .line 757
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->c:Z

    .line 760
    :cond_a
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->A:Z

    if-eqz v0, :cond_b

    .line 761
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->ae:I

    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->af:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface {p2, v0, v1, v2}, Lcom/amap/api/mapcore/util/l;->a(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 764
    :cond_b
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->u()V

    .line 766
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/cz;->a(Lcom/amap/api/mapcore/util/l;)V

    .line 767
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->e:Z

    if-eqz v0, :cond_1

    .line 768
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->l()V

    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/cz;->ag:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->e:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    const-string/jumbo v1, "MarkerDelegateImp"

    const-string/jumbo v2, "drawMarker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 739
    :cond_c
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->aa:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 743
    :catch_1
    move-exception v0

    .line 744
    :try_start_4
    const-string/jumbo v1, "MarkerDelegateImp"

    const-string/jumbo v2, "loadtexture"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    monitor-exit p0

    goto/16 :goto_0

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 525
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cz;->d:Z

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->e:Z

    .line 529
    return-void
.end method

.method public b()Lcom/amap/api/maps/model/LatLng;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 923
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->ae:I

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->af:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 926
    new-instance v1, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 927
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->ae:I

    iget v3, p0, Lcom/amap/api/mapcore/util/cz;->af:I

    invoke-interface {v0, v2, v3, v1}, Lcom/amap/api/mapcore/util/l;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 929
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 931
    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->Y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->M:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->L:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->i:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 971
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->j:I

    return v0
.end method

.method public destroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 116
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->I:Z

    .line 117
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->remove()Z

    .line 118
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    if-eqz v1, :cond_0

    move v1, v0

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->q:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->q:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cz;->q:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/q;->a(Ljava/lang/Integer;)V

    .line 121
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cz;->q:[I

    aget v3, v3, v1

    invoke-interface {v2, v3}, Lcom/amap/api/mapcore/util/l;->g(I)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    .line 125
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->U:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->U:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->U:Ljava/nio/FloatBuffer;

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->J:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->J:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->J:Ljava/nio/FloatBuffer;

    .line 137
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->L:Lcom/amap/api/maps/model/LatLng;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->V:Ljava/lang/Object;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->q:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_2
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string/jumbo v1, "MarkerDelegateImp"

    const-string/jumbo v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public e()I
    .locals 1

    .prologue
    .line 1001
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->k:I

    return v0
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;)Z
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
    .line 580
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    :cond_0
    const/4 v0, 0x1

    .line 584
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->l:I

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    return v0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 1206
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->u:F

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->P:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->Q:F

    return v0
.end method

.method public getDisplayLevel()I
    .locals 1

    .prologue
    .line 1217
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->y:I

    return v0
.end method

.method public getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1078
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1079
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    if-eqz v1, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->ae:I

    iget v3, p0, Lcom/amap/api/mapcore/util/cz;->af:I

    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/mapcore/util/l;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 1083
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->m:I

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->n:I

    invoke-direct {v0, v1, v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    goto :goto_0
.end method

.method public getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;
    .locals 0

    .prologue
    .line 1201
    return-object p0
.end method

.method public declared-synchronized getIcons()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 425
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 426
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    .line 430
    :goto_1
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->K:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 334
    const-string/jumbo v0, "Marker"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/cz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->K:Ljava/lang/String;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->V:Ljava/lang/Object;

    return-object v0
.end method

.method public getOptions()Lcom/amap/api/maps/model/MarkerOptions;
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    return-object v0
.end method

.method public getPeriod()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->ac:I

    return v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v0, :cond_0

    .line 321
    new-instance v1, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 322
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 323
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->i()Z

    .line 324
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v4, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-interface {v2, v3, v4, v0}, Lcom/amap/api/mapcore/util/l;->a(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 325
    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v2, v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 326
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 328
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->L:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0
.end method

.method public getRotateAngle()F
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->g:F

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->O:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->N:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .prologue
    .line 1028
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->r:F

    return v0
.end method

.method public h()Landroid/graphics/Rect;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 247
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->p:[F

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 295
    :goto_0
    return-object v0

    .line 252
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    .line 253
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->o()I

    move-result v2

    .line 254
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->p()I

    move-result v3

    .line 255
    new-instance v4, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 256
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 257
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v6, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v6, v6, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v1, v0, v6, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 259
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->h:Z

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->p:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->p:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v0, v2, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 261
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v7, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-direct {v0, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 263
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->p:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cz;->p:[F

    const/4 v6, 0x4

    aget v3, v3, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 264
    iget v2, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->union(II)V

    .line 265
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->p:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cz;->p:[F

    const/4 v6, 0x7

    aget v3, v3, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 266
    iget v2, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->union(II)V

    .line 267
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->p:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cz;->p:[F

    const/16 v6, 0xa

    aget v3, v3, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 268
    iget v1, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->union(II)V

    .line 288
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/amap/api/mapcore/util/cz;->k:I

    .line 289
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/amap/api/mapcore/util/cz;->l:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    const-string/jumbo v1, "MarkerDelegateImp"

    const-string/jumbo v2, "getRect"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 295
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_0

    .line 270
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->P:F

    neg-float v0, v0

    int-to-float v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->Q:F

    sub-float/2addr v1, v11

    int-to-float v6, v3

    mul-float/2addr v1, v6

    invoke-direct {p0, v0, v1, v5}, Lcom/amap/api/mapcore/util/cz;->a(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 272
    new-instance v0, Landroid/graphics/Rect;

    iget v1, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v6, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v1, v6

    iget v6, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v7, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v6, v7

    iget v7, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v8, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v9, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v8, v9

    invoke-direct {v0, v1, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 275
    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->P:F

    neg-float v1, v1

    int-to-float v6, v2

    mul-float/2addr v1, v6

    iget v6, p0, Lcom/amap/api/mapcore/util/cz;->Q:F

    int-to-float v7, v3

    mul-float/2addr v6, v7

    invoke-direct {p0, v1, v6, v5}, Lcom/amap/api/mapcore/util/cz;->a(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 277
    iget v1, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v6, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v1, v6

    iget v6, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v7, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->union(II)V

    .line 279
    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->P:F

    sub-float v1, v11, v1

    int-to-float v6, v2

    mul-float/2addr v1, v6

    iget v6, p0, Lcom/amap/api/mapcore/util/cz;->Q:F

    int-to-float v7, v3

    mul-float/2addr v6, v7

    invoke-direct {p0, v1, v6, v5}, Lcom/amap/api/mapcore/util/cz;->a(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 281
    iget v1, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v6, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v1, v6

    iget v6, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v7, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->union(II)V

    .line 283
    iget v1, p0, Lcom/amap/api/mapcore/util/cz;->P:F

    sub-float v1, v11, v1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->Q:F

    sub-float/2addr v2, v11

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-direct {p0, v1, v2, v5}, Lcom/amap/api/mapcore/util/cz;->a(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 285
    iget v1, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v1, v2

    iget v2, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v3, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->union(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public hashCodeRemote()I
    .locals 1

    .prologue
    .line 589
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public hideInfoWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 516
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/q;->c(Lcom/amap/api/mapcore/util/cu;)V

    .line 518
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    .line 519
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->d:Z

    .line 521
    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->e:Z

    .line 522
    return-void
.end method

.method public i()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 603
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    if-nez v1, :cond_1

    .line 622
    :cond_0
    :goto_0
    return v0

    .line 607
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    if-nez v1, :cond_2

    .line 608
    new-instance v1, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    .line 610
    :cond_2
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    if-eqz v1, :cond_3

    .line 611
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->ae:I

    iget v3, p0, Lcom/amap/api/mapcore/util/cz;->af:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface {v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/l;->a(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 618
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 614
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/cz;->n:I

    iget v3, p0, Lcom/amap/api/mapcore/util/cz;->m:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface {v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/l;->b(IILcom/autonavi/amap/mapcore/FPoint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 619
    :catch_0
    move-exception v1

    .line 620
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isClickable()Z
    .locals 1

    .prologue
    .line 1285
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->z:Z

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->R:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->h:Z

    return v0
.end method

.method public isInfoWindowAutoOverturn()Z
    .locals 1

    .prologue
    .line 1290
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->w:Z

    return v0
.end method

.method public isInfoWindowEnable()Z
    .locals 1

    .prologue
    .line 1295
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->x:Z

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->d:Z

    return v0
.end method

.method public isPerspective()Z
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->W:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->S:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->aa:Z

    return v0
.end method

.method public k()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 1033
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    if-eqz v1, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return v0

    .line 1044
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v1, :cond_2

    .line 1045
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->F:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iput v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 1046
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->F:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iput v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    .line 1048
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    .line 1049
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/cz;->a([Lcom/autonavi/amap/mapcore/FPoint;)V

    .line 1051
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->F:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/en;->a(Lcom/autonavi/amap/mapcore/FPoint;[Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1056
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1088
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->Z:Z

    .line 1090
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->q:[I

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->q:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1093
    :cond_0
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 1373
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->B:Z

    return v0
.end method

.method declared-synchronized n()V
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 206
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->q()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 208
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->q()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 216
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized q()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->n()V

    .line 486
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :goto_0
    monitor-exit p0

    return-object v0

    .line 487
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 489
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->q()Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    :try_start_2
    const-string/jumbo v1, "MarkerDelegateImp"

    const-string/jumbo v2, "getBitmapDescriptor"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 496
    const/4 v0, 0x0

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public r()Lcom/autonavi/amap/mapcore/interfaces/IAnimation;
    .locals 0

    .prologue
    .line 1196
    return-object p0
.end method

.method public remove()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 302
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    .line 303
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->S:Z

    .line 306
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    if-eqz v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/mapcore/util/cu;)Z

    move-result v0

    .line 309
    :cond_0
    return v0
.end method

.method public set2Top()V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/q;->b(Lcom/amap/api/mapcore/util/cu;)V

    .line 937
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .prologue
    .line 1211
    iput p1, p0, Lcom/amap/api/mapcore/util/cz;->u:F

    .line 1212
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->alpha(F)Lcom/amap/api/maps/model/MarkerOptions;

    .line 1213
    return-void
.end method

.method public setAnchor(FF)V
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->P:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/cz;->Q:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 565
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    .line 561
    iput p1, p0, Lcom/amap/api/mapcore/util/cz;->P:F

    .line 562
    iput p2, p0, Lcom/amap/api/mapcore/util/cz;->Q:F

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->e:Z

    .line 564
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    goto :goto_0
.end method

.method public setAnimation(Lcom/amap/api/mapcore/util/di;)V
    .locals 0

    .prologue
    .line 1111
    if-nez p1, :cond_0

    .line 1121
    :goto_0
    return-void

    .line 1119
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cz;->a:Lcom/amap/api/mapcore/util/di;

    goto :goto_0
.end method

.method public setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->r()Lcom/autonavi/amap/mapcore/interfaces/IAnimation;

    move-result-object v1

    .line 1101
    if-eqz v1, :cond_0

    .line 1102
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAnimation;->setAnimation(Lcom/amap/api/mapcore/util/di;)V

    .line 1104
    :cond_0
    return-void

    .line 1102
    :cond_1
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/amap/api/mapcore/util/di;

    goto :goto_0
.end method

.method public setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->a:Lcom/amap/api/mapcore/util/di;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->a:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/di;->a(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    .line 1192
    :cond_0
    return-void
.end method

.method public setAutoOverturnInfoWindow(Z)V
    .locals 1

    .prologue
    .line 1309
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cz;->w:Z

    .line 1310
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->autoOverturnInfoWindow(Z)Lcom/amap/api/maps/model/MarkerOptions;

    .line 1311
    return-void
.end method

.method public setBelowMaskLayer(Z)V
    .locals 0

    .prologue
    .line 1368
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cz;->B:Z

    .line 1369
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .prologue
    .line 1315
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cz;->z:Z

    .line 1316
    return-void
.end method

.method public setDisplayLevel(I)V
    .locals 1

    .prologue
    .line 1320
    iput p1, p0, Lcom/amap/api/mapcore/util/cz;->y:I

    .line 1321
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->displayLevel(I)Lcom/amap/api/maps/model/MarkerOptions;

    .line 1322
    return-void
.end method

.method public setDraggable(Z)V
    .locals 1

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cz;->R:Z

    .line 398
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    .line 399
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    .line 400
    return-void
.end method

.method public setFixingPointEnable(Z)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 1327
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cz;->A:Z

    .line 1328
    if-nez p1, :cond_2

    .line 1329
    const/4 v0, 0x0

    .line 1330
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 1334
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/cz;->L:Lcom/amap/api/maps/model/LatLng;

    .line 1336
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->L:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/cz;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 1338
    if-eqz v0, :cond_1

    .line 1339
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    .line 1350
    :cond_1
    :goto_0
    return-void

    .line 1341
    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    if-eqz v0, :cond_1

    .line 1342
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->L:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    .line 1343
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1344
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1345
    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v1, p0, Lcom/amap/api/mapcore/util/cz;->ae:I

    .line 1346
    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->af:I

    goto :goto_0
.end method

.method public setFlat(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 941
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cz;->h:Z

    .line 942
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    .line 943
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;

    .line 944
    return-void
.end method

.method public setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1061
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    .line 1062
    iget v0, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/util/cz;->a(II)V

    .line 1064
    return-void
.end method

.method public declared-synchronized setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 437
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 440
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 441
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->t()V

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->Z:Z

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->c:Z

    .line 445
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->e:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    :try_start_2
    const-string/jumbo v1, "MarkerDelegateImp"

    const-string/jumbo v2, "setIcon"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIcons(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 405
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->X:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 419
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 408
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/cz;->a(Ljava/util/ArrayList;)V

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->Z:Z

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->c:Z

    .line 411
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->t()V

    .line 413
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->e:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    :try_start_2
    const-string/jumbo v1, "MarkerDelegateImp"

    const-string/jumbo v2, "setIcons"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInfoWindowEnable(Z)V
    .locals 1

    .prologue
    .line 1300
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cz;->x:Z

    .line 1304
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->infoWindowEnable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    .line 1305
    return-void
.end method

.method public setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1227
    if-nez p1, :cond_0

    .line 1281
    :goto_0
    return-void

    .line 1230
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    .line 1231
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->L:Lcom/amap/api/maps/model/LatLng;

    .line 1232
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1233
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isGps()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->Y:Z

    .line 1234
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1235
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->Y:Z

    if-eqz v0, :cond_2

    .line 1237
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    .line 1238
    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    .line 1239
    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    .line 1237
    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/hs;->a(DD)[D

    move-result-object v0

    .line 1240
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    const/4 v3, 0x0

    aget-wide v6, v0, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/cz;->M:Lcom/amap/api/maps/model/LatLng;

    .line 1241
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-static {v2, v3, v4, v5, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    :cond_1
    :goto_1
    iget v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->m:I

    .line 1253
    iget v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->n:I

    .line 1254
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorU()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->P:F

    .line 1255
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorV()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->Q:F

    .line 1256
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetX()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->i:I

    .line 1257
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetY()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->j:I

    .line 1258
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPeriod()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->ac:I

    .line 1259
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->r:F

    .line 1260
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isBelowMaskLayer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->B:Z

    .line 1261
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->i()Z

    .line 1263
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cz;->a(Ljava/util/ArrayList;)V

    .line 1264
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->t()V

    .line 1265
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->S:Z

    .line 1266
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->O:Ljava/lang/String;

    .line 1267
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->N:Ljava/lang/String;

    .line 1268
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isDraggable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->R:Z

    .line 1269
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->K:Ljava/lang/String;

    .line 1270
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isPerspective()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->W:Z

    .line 1271
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isFlat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->h:Z

    .line 1272
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isBelowMaskLayer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->B:Z

    .line 1274
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->u:F

    .line 1275
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getRotateAngle()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cz;->setRotateAngle(F)V

    .line 1277
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getDisplayLevel()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->y:I

    .line 1278
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isInfoWindowAutoOverturn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->w:Z

    .line 1279
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isInfoWindowEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->x:Z

    goto/16 :goto_0

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    const-string/jumbo v2, "MarkerDelegateImp"

    const-string/jumbo v3, "create"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->M:Lcom/amap/api/maps/model/LatLng;

    goto/16 :goto_1

    .line 1248
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->L:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->L:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    goto/16 :goto_1
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 886
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cz;->V:Ljava/lang/Object;

    .line 887
    return-void
.end method

.method public setPeriod(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 877
    if-gt p1, v0, :cond_0

    .line 878
    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->ac:I

    .line 882
    :goto_0
    return-void

    .line 880
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/util/cz;->ac:I

    goto :goto_0
.end method

.method public setPerspective(Z)V
    .locals 0

    .prologue
    .line 896
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cz;->W:Z

    .line 897
    return-void
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 341
    if-nez p1, :cond_0

    .line 342
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string/jumbo v1, "\u975e\u6cd5\u5750\u6807\u503c latlng is null"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "setPosition"

    const-string/jumbo v2, "Marker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_0
    return-void

    .line 347
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cz;->L:Lcom/amap/api/maps/model/LatLng;

    .line 348
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 349
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->Y:Z

    if-eqz v1, :cond_1

    .line 351
    :try_start_0
    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/hs;->a(DD)[D

    move-result-object v1

    .line 353
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const/4 v3, 0x1

    aget-wide v4, v1, v3

    const/4 v3, 0x0

    aget-wide v6, v1, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/cz;->M:Lcom/amap/api/maps/model/LatLng;

    .line 354
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_1
    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v1, p0, Lcom/amap/api/mapcore/util/cz;->m:I

    .line 363
    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->n:I

    .line 364
    iput-boolean v8, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    .line 365
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->i()Z

    .line 366
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    .line 368
    iput-boolean v9, p0, Lcom/amap/api/mapcore/util/cz;->e:Z

    goto :goto_0

    .line 356
    :catch_0
    move-exception v1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cz;->M:Lcom/amap/api/maps/model/LatLng;

    goto :goto_1

    .line 359
    :cond_1
    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    goto :goto_1
.end method

.method public setPositionByPixels(II)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 982
    iput p1, p0, Lcom/amap/api/mapcore/util/cz;->ae:I

    .line 983
    iput p2, p0, Lcom/amap/api/mapcore/util/cz;->af:I

    .line 984
    iput-boolean v8, p0, Lcom/amap/api/mapcore/util/cz;->ad:Z

    .line 986
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->i()Z

    .line 988
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/cz;->h:Z

    if-eqz v1, :cond_0

    move v1, v8

    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->o:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, p0, Lcom/amap/api/mapcore/util/cz;->f:F

    .line 989
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->o()I

    move-result v4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->p()I

    move-result v5

    iget v6, p0, Lcom/amap/api/mapcore/util/cz;->P:F

    iget v7, p0, Lcom/amap/api/mapcore/util/cz;->Q:F

    .line 988
    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/en;->a(Lcom/amap/api/mapcore/util/l;ILcom/autonavi/amap/mapcore/FPoint;FIIFF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->p:[F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    :goto_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    .line 996
    iput-boolean v8, p0, Lcom/amap/api/mapcore/util/cz;->e:Z

    .line 997
    return-void

    .line 988
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 991
    :catch_0
    move-exception v0

    .line 992
    const-string/jumbo v1, "MarkerDelegateImp"

    const-string/jumbo v2, "setPositionByPixels"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setPositionNotUpdate(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 1355
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/cz;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 1357
    return-void
.end method

.method public setRotateAngle(F)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 100
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->rotateAngle(F)Lcom/amap/api/maps/model/MarkerOptions;

    .line 101
    iput p1, p0, Lcom/amap/api/mapcore/util/cz;->g:F

    .line 102
    neg-float v0, p1

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/cz;->f:F

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->e:Z

    .line 104
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    .line 106
    return-void
.end method

.method public setRotateAngleNotUpdate(F)V
    .locals 0

    .prologue
    .line 1362
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 385
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cz;->O:Ljava/lang/String;

    .line 386
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    .line 387
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 388
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 373
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cz;->N:Ljava/lang/String;

    .line 374
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    .line 375
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 376
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->S:Z

    if-ne v0, p1, :cond_0

    .line 549
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps/model/MarkerOptions;

    .line 542
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cz;->S:Z

    .line 543
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/q;->c(Lcom/amap/api/mapcore/util/cu;)V

    .line 547
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cz;->i()Z

    .line 548
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    goto :goto_0
.end method

.method public setZIndex(F)V
    .locals 1

    .prologue
    .line 1021
    iput p1, p0, Lcom/amap/api/mapcore/util/cz;->r:F

    .line 1022
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->v:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->zIndex(F)Lcom/amap/api/maps/model/MarkerOptions;

    .line 1023
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->g()V

    .line 1024
    return-void
.end method

.method public showInfoWindow()V
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cz;->S:Z

    if-nez v0, :cond_0

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->T:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/mapcore/util/cr;)V

    .line 511
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    goto :goto_0
.end method

.method public startAnimation()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1125
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->a:Lcom/amap/api/mapcore/util/di;

    if-eqz v0, :cond_2

    .line 1127
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->a:Lcom/amap/api/mapcore/util/di;

    instance-of v0, v0, Lcom/amap/api/mapcore/util/dj;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->a:Lcom/amap/api/mapcore/util/di;

    check-cast v0, Lcom/amap/api/mapcore/util/dj;

    .line 1129
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dj;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/di;

    .line 1130
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/cz;->a(Lcom/amap/api/mapcore/util/di;)V

    .line 1131
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dj;->f()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/amap/api/mapcore/util/di;->a(J)V

    goto :goto_0

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->a:Lcom/amap/api/mapcore/util/di;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/cz;->a(Lcom/amap/api/mapcore/util/di;)V

    .line 1137
    :cond_1
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/cz;->C:Z

    .line 1138
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cz;->a:Lcom/amap/api/mapcore/util/di;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->c()V

    .line 1139
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cz;->s()V

    .line 1141
    :cond_2
    return v3
.end method
