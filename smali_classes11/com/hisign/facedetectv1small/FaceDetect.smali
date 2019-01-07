.class public Lcom/hisign/facedetectv1small/FaceDetect;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisign/facedetectv1small/FaceDetect$a;,
        Lcom/hisign/facedetectv1small/FaceDetect$b;
    }
.end annotation


# static fields
.field public static a:Z

.field private static c:Ljava/lang/Object;


# instance fields
.field private b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/hisign/facedetectv1small/FaceDetect;->a:Z

    :try_start_0
    invoke-static {}, Lcom/hisign/FaceSDK/FaceLiveDetect;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FaceDetect_x86"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hisign/facedetectv1small/FaceDetect;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-boolean v0, Lcom/hisign/facedetectv1small/FaceDetect;->a:Z

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/hisign/FaceSDK/FaceLiveDetect;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FaceLiveDetect_x86"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hisign/facedetectv1small/FaceDetect;->a:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hisign/facedetectv1small/FaceDetect;->c:Ljava/lang/Object;

    return-void

    :cond_1
    :try_start_2
    const-string/jumbo v0, "FaceDetect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/hisign/facedetectv1small/FaceDetect;->a:Z

    goto :goto_1

    :cond_2
    :try_start_3
    const-string/jumbo v0, "FaceLiveDetect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    sput-boolean v1, Lcom/hisign/facedetectv1small/FaceDetect;->a:Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hisign/facedetectv1small/FaceDetect;->b:[I

    return-void
.end method

.method public static a([FLcom/hisign/facedetectv1small/FaceDetect$a;)I
    .locals 3

    const/4 v2, 0x0

    aget v0, p0, v2

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->a:F

    const/4 v0, 0x1

    aget v0, p0, v0

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->b:F

    const/4 v0, 0x2

    aget v0, p0, v0

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->c:F

    const/4 v0, 0x3

    aget v0, p0, v0

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->d:F

    const/4 v0, 0x4

    aget v0, p0, v0

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->e:F

    const/4 v0, 0x5

    aget v0, p0, v0

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->f:F

    const/4 v0, 0x6

    aget v0, p0, v0

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->g:F

    const/4 v0, 0x7

    aget v0, p0, v0

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->h:F

    const/16 v0, 0x8

    aget v0, p0, v0

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->i:F

    const/16 v0, 0x9

    aget v0, p0, v0

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->j:F

    const/16 v0, 0xa

    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    shr-int/lit8 v1, v0, 0x0

    int-to-byte v1, v1

    iput-byte v1, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->k:B

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    iput-byte v1, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->l:B

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    iput-short v1, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->m:S

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    iput-byte v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->n:B

    const/16 v0, 0xb

    aget v0, p0, v0

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->o:F

    const/16 v0, 0xc

    aget v0, p0, v0

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->p:F

    const/16 v0, 0xd

    aget v0, p0, v0

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->q:F

    const/16 v0, 0xe

    aget v0, p0, v0

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->r:F

    const/16 v0, 0xf

    aget v0, p0, v0

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->s:F

    const/16 v0, 0x10

    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    shr-int/lit8 v1, v0, 0x0

    int-to-byte v1, v1

    iput-byte v1, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->t:B

    shr-int/lit8 v0, v0, 0x8

    iput v0, p1, Lcom/hisign/facedetectv1small/FaceDetect$a;->u:I

    return v2
.end method

.method private native jniARGBtoGray([B[BII)I
.end method

.method private native jniFaceDetect([B[III)I
.end method

.method private static native jniGetFaceDetectSDKVersion([J)I
.end method

.method private native jniGetFaceQuality([B[BII[I[F[B)I
.end method


# virtual methods
.method public final a([B[I[FII)I
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v8, -0x8

    sget-boolean v0, Lcom/hisign/facedetectv1small/FaceDetect;->a:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move-object v5, p2

    move-object v6, p3

    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/hisign/facedetectv1small/FaceDetect;->jniGetFaceQuality([B[BII[I[F[B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    move v0, v8

    goto :goto_0
.end method
