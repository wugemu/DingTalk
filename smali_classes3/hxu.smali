.class public final Lhxu;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhxu$a;,
        Lhxu$b;,
        Lhxu$c;
    }
.end annotation


# static fields
.field public static a:Z

.field public static final m:[Ljava/lang/String;


# instance fields
.field private A:I

.field private B:[I

.field private C:Lcom/hisign/facedetectv1small/LiveDetect$c;

.field private D:I

.field private E:[Landroid/graphics/PointF;

.field private F:[Lcom/hisign/facedetectv1small/FaceDetect$b;

.field private G:Z

.field private H:I

.field private I:I

.field public b:[B

.field public c:[B

.field d:Z

.field e:I

.field f:Landroid/content/Context;

.field g:I

.field public h:[Lcom/hisign/facedetectv1small/LiveDetect$b;

.field i:[F

.field j:Lcom/hisign/facedetectv1small/LiveDetect$d;

.field k:[Lcom/hisign/facedetectv1small/LiveDetect$c;

.field l:Lcom/hisign/FaceSDK/FaceLiveDetect;

.field n:F

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:F

.field u:F

.field private final v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:I

.field private z:[Lhxu$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lhxu;->a:Z

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u8bf7\u9760\u8fd1"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "\u8bf7\u8fdc\u79bb"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u68c0\u6d4b\u901a\u8fc7"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\u68c0\u6d4b\u672a\u901a\u8fc7"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u68c0\u6d4b\u5f02\u5e38"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\u65e0\u4eba\u8138"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u65e0\u773c\u775b"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u8bf7\u70b9\u5934"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u591a\u4eba\u8138"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u8bf7\u6447\u5934"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u8bf7\u51dd\u89c6\u5c4f\u5e55"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "3D\u68c0\u6d4b\u901a\u8fc7"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "3D\u68c0\u6d4b\u5f02\u5e38"

    aput-object v2, v0, v1

    sput-object v0, Lhxu;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "FaceLiveDetectSDK"

    iput-object v0, p0, Lhxu;->v:Ljava/lang/String;

    iput v1, p0, Lhxu;->w:I

    iput v1, p0, Lhxu;->x:I

    iput-object v3, p0, Lhxu;->b:[B

    iput-object v3, p0, Lhxu;->c:[B

    iput v1, p0, Lhxu;->y:I

    iput-boolean v1, p0, Lhxu;->d:Z

    new-array v0, v2, [Lhxu$a;

    iput-object v0, p0, Lhxu;->z:[Lhxu$a;

    iput v1, p0, Lhxu;->A:I

    iput v1, p0, Lhxu;->e:I

    iput v1, p0, Lhxu;->g:I

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/hisign/facedetectv1small/LiveDetect$b;

    iput-object v0, p0, Lhxu;->h:[Lcom/hisign/facedetectv1small/LiveDetect$b;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lhxu;->i:[F

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$d;->KeepStill:Lcom/hisign/facedetectv1small/LiveDetect$d;

    iput-object v0, p0, Lhxu;->j:Lcom/hisign/facedetectv1small/LiveDetect$d;

    new-array v0, v2, [Lcom/hisign/facedetectv1small/LiveDetect$c;

    iput-object v0, p0, Lhxu;->k:[Lcom/hisign/facedetectv1small/LiveDetect$c;

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lhxu;->B:[I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lhxu;->n:F

    iput v1, p0, Lhxu;->o:I

    iput v1, p0, Lhxu;->p:I

    iput v1, p0, Lhxu;->q:I

    iput v1, p0, Lhxu;->r:I

    iput v1, p0, Lhxu;->s:I

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->NoError:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iput-object v0, p0, Lhxu;->C:Lcom/hisign/facedetectv1small/LiveDetect$c;

    const/16 v0, 0xa

    iput v0, p0, Lhxu;->D:I

    iget v0, p0, Lhxu;->D:I

    new-array v0, v0, [Landroid/graphics/PointF;

    iput-object v0, p0, Lhxu;->E:[Landroid/graphics/PointF;

    iget v0, p0, Lhxu;->D:I

    new-array v0, v0, [Lcom/hisign/facedetectv1small/FaceDetect$b;

    iput-object v0, p0, Lhxu;->F:[Lcom/hisign/facedetectv1small/FaceDetect$b;

    iput-boolean v1, p0, Lhxu;->G:Z

    iput v1, p0, Lhxu;->H:I

    iput v1, p0, Lhxu;->I:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lhxu;)I
    .locals 1

    iget v0, p0, Lhxu;->I:I

    return v0
.end method

.method static synthetic a(Lhxu;I)V
    .locals 0

    iput p1, p0, Lhxu;->I:I

    return-void
.end method

.method static synthetic a(Lhxu;Lcom/hisign/facedetectv1small/LiveDetect$c;)V
    .locals 0

    iput-object p1, p0, Lhxu;->C:Lcom/hisign/facedetectv1small/LiveDetect$c;

    return-void
.end method

.method static synthetic a(Lhxu;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhxu;->G:Z

    return-void
.end method

.method static synthetic b(Lhxu;)Lcom/hisign/facedetectv1small/LiveDetect$c;
    .locals 1

    iget-object v0, p0, Lhxu;->C:Lcom/hisign/facedetectv1small/LiveDetect$c;

    return-object v0
.end method

.method static synthetic b(Lhxu;I)V
    .locals 0

    iput p1, p0, Lhxu;->H:I

    return-void
.end method

.method static synthetic c(Lhxu;)I
    .locals 1

    iget v0, p0, Lhxu;->w:I

    return v0
.end method

.method static synthetic d(Lhxu;)I
    .locals 1

    iget v0, p0, Lhxu;->x:I

    return v0
.end method

.method static synthetic e(Lhxu;)I
    .locals 1

    iget v0, p0, Lhxu;->D:I

    return v0
.end method

.method static synthetic f(Lhxu;)[I
    .locals 1

    iget-object v0, p0, Lhxu;->B:[I

    return-object v0
.end method

.method static synthetic g(Lhxu;)[Lcom/hisign/facedetectv1small/FaceDetect$b;
    .locals 1

    iget-object v0, p0, Lhxu;->F:[Lcom/hisign/facedetectv1small/FaceDetect$b;

    return-object v0
.end method

.method static synthetic h(Lhxu;)[Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lhxu;->E:[Landroid/graphics/PointF;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lhxu$b;[I)I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lhxu;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "liveDetectInit methodIdx[0]="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, p3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iput-object p1, p0, Lhxu;->f:Landroid/content/Context;

    iget v0, p2, Lhxu$b;->a:I

    iput v0, p0, Lhxu;->w:I

    iget v0, p2, Lhxu$b;->b:I

    iput v0, p0, Lhxu;->x:I

    iget v0, p0, Lhxu;->w:I

    iget v3, p0, Lhxu;->x:I

    mul-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lhxu;->y:I

    iget v0, p0, Lhxu;->y:I

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lhxu;->b:[B

    iget v0, p0, Lhxu;->y:I

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lhxu;->c:[B

    const/4 v0, 0x4

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    iget v0, p2, Lhxu$b;->a:I

    aput v0, v3, v1

    iget v0, p2, Lhxu$b;->b:I

    aput v0, v3, v6

    const/4 v0, 0x2

    iget v4, p2, Lhxu$b;->c:I

    aput v4, v3, v0

    const/4 v0, 0x3

    iget v4, p2, Lhxu$b;->d:I

    aput v4, v3, v0

    move v0, v1

    :goto_0
    iget-object v4, p0, Lhxu;->h:[Lcom/hisign/facedetectv1small/LiveDetect$b;

    array-length v4, v4

    if-lt v0, v4, :cond_2

    invoke-static {p1}, Lcom/hisign/FaceSDK/FaceLiveDetect;->a(Landroid/content/Context;)Lcom/hisign/FaceSDK/FaceLiveDetect;

    move-result-object v0

    iput-object v0, p0, Lhxu;->l:Lcom/hisign/FaceSDK/FaceLiveDetect;

    const/16 v0, 0x50

    invoke-static {v6, v0, v3}, Lcom/hisign/FaceSDK/FaceLiveDetect;->a(II[I)I

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget-object v4, p0, Lhxu;->h:[Lcom/hisign/facedetectv1small/LiveDetect$b;

    new-instance v5, Lcom/hisign/facedetectv1small/LiveDetect$b;

    invoke-direct {v5}, Lcom/hisign/facedetectv1small/LiveDetect$b;-><init>()V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, v3}, Lcom/hisign/FaceSDK/FaceLiveDetect;->THIDInitLiveDetectChannel(I[I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hisign/facedetectv1small/LiveDetect$d;->values()[Lcom/hisign/facedetectv1small/LiveDetect$d;

    move-result-object v0

    aget v3, p3, v1

    aget-object v0, v0, v3

    iput-object v0, p0, Lhxu;->j:Lcom/hisign/facedetectv1small/LiveDetect$d;

    const/4 v0, 0x0

    :try_start_1
    array-length v3, p3

    invoke-static {v0, p3, v3}, Lcom/hisign/FaceSDK/FaceLiveDetect;->THIDSetMethod(I[II)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    iput v1, p0, Lhxu;->A:I

    iput v1, p0, Lhxu;->I:I

    const/4 v2, 0x7

    iput v2, p0, Lhxu;->s:I

    iput v1, p0, Lhxu;->q:I

    iput v1, p0, Lhxu;->r:I

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$c;->NoError:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iput-object v2, p0, Lhxu;->C:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iget-object v2, p0, Lhxu;->i:[F

    const/4 v3, 0x0

    aput v3, v2, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_1

    :array_0
    .array-data 4
        0x280
        0x1e0
        0x50
        0x64
    .end array-data
.end method

.method public final a([I)I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    const/4 v2, 0x0

    sget-boolean v0, Lhxu;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "liveDetectSetMethod methodIdx[0]="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {}, Lcom/hisign/facedetectv1small/LiveDetect$d;->values()[Lcom/hisign/facedetectv1small/LiveDetect$d;

    move-result-object v0

    aget v1, p1, v2

    aget-object v0, v0, v1

    iput-object v0, p0, Lhxu;->j:Lcom/hisign/facedetectv1small/LiveDetect$d;

    return v2
.end method

.method public final a([BLhxu$c;[Lcom/hisign/facedetectv1small/FaceDetect$b;[Landroid/graphics/PointF;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 0
    iput-object p3, p0, Lhxu;->F:[Lcom/hisign/facedetectv1small/FaceDetect$b;

    iput-object v0, p0, Lhxu;->E:[Landroid/graphics/PointF;

    iget-boolean v0, p0, Lhxu;->d:Z

    if-nez v0, :cond_1

    new-array v2, v5, [[B

    iget-object v0, p0, Lhxu;->b:[B

    aput-object v0, v2, v1

    iget-object v0, p0, Lhxu;->c:[B

    aput-object v0, v2, v3

    iput-boolean v3, p0, Lhxu;->d:Z

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v3, p0, Lhxu;->A:I

    rem-int/lit8 v3, v3, 0x2

    aget-object v3, v2, v3

    iget v4, p0, Lhxu;->y:I

    invoke-virtual {v0, v3, v1, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v0, p0, Lhxu;->A:I

    rem-int/lit8 v0, v0, 0x2

    aget-object v0, v2, v0

    iget v3, p0, Lhxu;->y:I

    iget v4, p0, Lhxu;->A:I

    rem-int/lit8 v4, v4, 0x64

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    iput v5, p0, Lhxu;->e:I

    move v0, v1

    :goto_0
    iget v3, p0, Lhxu;->e:I

    if-lt v0, v3, :cond_3

    :cond_0
    iget v0, p0, Lhxu;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhxu;->A:I

    :cond_1
    move v0, v1

    .line 2000
    :goto_1
    iget v2, p0, Lhxu;->e:I

    if-lt v0, v2, :cond_4

    .line 0
    iget-boolean v0, p0, Lhxu;->G:Z

    iput-boolean v0, p2, Lhxu$c;->a:Z

    iget v0, p0, Lhxu;->s:I

    iput v0, p2, Lhxu$c;->b:I

    invoke-static {}, Lcom/hisign/facedetectv1small/LiveDetect$c;->values()[Lcom/hisign/facedetectv1small/LiveDetect$c;

    move-result-object v0

    iget v2, p0, Lhxu;->r:I

    aget-object v0, v0, v2

    iput-object v0, p2, Lhxu$c;->d:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iget-object v0, p0, Lhxu;->B:[I

    aget v0, v0, v1

    iput v0, p2, Lhxu$c;->c:I

    iget-object v0, p0, Lhxu;->C:Lcom/hisign/facedetectv1small/LiveDetect$c;

    invoke-virtual {v0}, Lcom/hisign/facedetectv1small/LiveDetect$c;->ordinal()I

    move-result v0

    iput v0, p2, Lhxu$c;->e:I

    iget v0, p0, Lhxu;->q:I

    iput v0, p2, Lhxu$c;->f:I

    iget-object v0, p0, Lhxu;->i:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p2, Lhxu$c;->g:[F

    iget v0, p0, Lhxu;->t:F

    iput v0, p2, Lhxu$c;->h:F

    iget v0, p0, Lhxu;->u:F

    iput v0, p2, Lhxu$c;->i:F

    sget-boolean v0, Lhxu;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "3DDetect szStatusSign3D="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lhxu;->C:Lcom/hisign/facedetectv1small/LiveDetect$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-statusSign:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lhxu;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-movementLiveState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lhxu;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "MoveTmp:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lhxu;->t:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lhxu;->u:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lhxu;->z:[Lhxu$a;

    new-instance v4, Lhxu$a;

    invoke-direct {v4, p0}, Lhxu$a;-><init>(Lhxu;)V

    aput-object v4, v3, v0

    iget-object v3, p0, Lhxu;->z:[Lhxu$a;

    aget-object v3, v3, v0

    iget v4, p0, Lhxu;->A:I

    add-int/2addr v4, v0

    rem-int/lit8 v4, v4, 0x2

    aget-object v4, v2, v4

    iget v5, p0, Lhxu;->e:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    .line 1000
    iput-object v4, v3, Lhxu$a;->b:[B

    iput v5, v3, Lhxu$a;->a:I

    .line 0
    iget-object v3, p0, Lhxu;->z:[Lhxu$a;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lhxu$a;->start()V

    iget v3, p0, Lhxu;->A:I

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2000
    :cond_4
    iget-object v2, p0, Lhxu;->z:[Lhxu$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lhxu;->z:[Lhxu$a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lhxu$a;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_0
    iget-object v2, p0, Lhxu;->z:[Lhxu$a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lhxu$a;->join()V

    iget-object v2, p0, Lhxu;->z:[Lhxu$a;

    const/4 v3, 0x0

    aput-object v3, v2, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public final b([I)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    const/4 v3, 0x0

    sget-boolean v0, Lhxu;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "liveDetectResetMethod methodIdx[0]="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-static {v0, p1, v1}, Lcom/hisign/FaceSDK/FaceLiveDetect;->THIDSetMethod(I[II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    invoke-static {}, Lcom/hisign/facedetectv1small/LiveDetect$d;->values()[Lcom/hisign/facedetectv1small/LiveDetect$d;

    move-result-object v1

    aget v2, p1, v3

    aget-object v1, v1, v2

    iput-object v1, p0, Lhxu;->j:Lcom/hisign/facedetectv1small/LiveDetect$d;

    iput v3, p0, Lhxu;->A:I

    iput v3, p0, Lhxu;->I:I

    const/4 v1, 0x7

    iput v1, p0, Lhxu;->s:I

    iput v3, p0, Lhxu;->q:I

    iput v3, p0, Lhxu;->r:I

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$c;->NoError:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iput-object v1, p0, Lhxu;->C:Lcom/hisign/facedetectv1small/LiveDetect$c;

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    goto :goto_0
.end method
