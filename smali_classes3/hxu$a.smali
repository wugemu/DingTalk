.class final Lhxu$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhxu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:[B

.field c:[I

.field final synthetic d:Lhxu;


# direct methods
.method constructor <init>(Lhxu;)V
    .locals 1

    iput-object p1, p0, Lhxu$a;->d:Lhxu;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lhxu$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lhxu$a;->b:[B

    const/16 v0, 0x22

    new-array v0, v0, [I

    iput-object v0, p0, Lhxu$a;->c:[I

    return-void
.end method

.method private a([B[I[Lcom/hisign/facedetectv1small/FaceDetect$b;)I
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    const/4 v9, 0x4

    const/high16 v6, 0x447a0000    # 1000.0f

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lhxu$a;->c:[I

    iget v2, p0, Lhxu$a;->a:I

    aput v2, v0, v1

    iget-object v0, p0, Lhxu$a;->c:[I

    const/16 v2, 0x8

    aput v2, v0, v8

    iget-object v0, p0, Lhxu$a;->c:[I

    iget-object v2, p0, Lhxu$a;->d:Lhxu;

    iget-object v2, v2, Lhxu;->j:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v2

    aput v2, v0, v7

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget-object v0, v0, Lhxu;->j:Lcom/hisign/facedetectv1small/LiveDetect$d;

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->BlinkEye:Lcom/hisign/facedetectv1small/LiveDetect$d;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lhxu$a;->c:[I

    aget v2, v0, v8

    or-int/lit8 v2, v2, 0x20

    aput v2, v0, v8

    :cond_0
    iget-object v0, p0, Lhxu$a;->c:[I

    invoke-static {p1, v0}, Lcom/hisign/FaceSDK/FaceLiveDetect;->a([B[I)I

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "FaceLiveDetectSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "THIDLiveDetectProcess Error! nRet="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lhxu$a;->c:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lhxu$a;->c:[I

    array-length v0, v0

    const/16 v3, 0x22

    if-ge v0, v3, :cond_5

    :cond_3
    const-string/jumbo v1, "FaceLiveDetectSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "THIDLiveDetectProcess Error! LD_result len = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lhxu$a;->c:[I

    if-nez v0, :cond_4

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x63

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lhxu$a;->c:[I

    array-length v0, v0

    goto :goto_1

    :cond_5
    iget v0, p0, Lhxu$a;->a:I

    if-eqz v0, :cond_6

    iget v0, p0, Lhxu$a;->a:I

    if-ne v8, v0, :cond_7

    :cond_6
    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget-object v0, v0, Lhxu;->i:[F

    iget-object v3, p0, Lhxu$a;->c:[I

    aget v3, v3, v1

    int-to-float v3, v3

    div-float/2addr v3, v6

    aput v3, v0, v8

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget-object v0, v0, Lhxu;->i:[F

    iget-object v3, p0, Lhxu$a;->c:[I

    aget v3, v3, v8

    int-to-float v3, v3

    div-float/2addr v3, v6

    aput v3, v0, v7

    iget-object v0, p0, Lhxu$a;->c:[I

    aget v0, v0, v7

    aput v0, p2, v1

    move v0, v1

    :goto_2
    aget v3, p2, v1

    if-lt v0, v3, :cond_e

    :cond_7
    iget v0, p0, Lhxu$a;->a:I

    if-eqz v0, :cond_8

    iget v0, p0, Lhxu$a;->a:I

    if-ne v7, v0, :cond_15

    :cond_8
    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget-object v3, p0, Lhxu$a;->c:[I

    aget v3, v3, v1

    iput v3, v0, Lhxu;->s:I

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget-object v3, p0, Lhxu$a;->c:[I

    aget v3, v3, v8

    iput v3, v0, Lhxu;->q:I

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget-object v3, p0, Lhxu$a;->c:[I

    aget v3, v3, v7

    iput v3, v0, Lhxu;->r:I

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    invoke-static {}, Lcom/hisign/facedetectv1small/LiveDetect$c;->values()[Lcom/hisign/facedetectv1small/LiveDetect$c;

    move-result-object v3

    iget-object v4, p0, Lhxu$a;->c:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lhxu;->a(Lhxu;Lcom/hisign/facedetectv1small/LiveDetect$c;)V

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget-object v0, v0, Lhxu;->i:[F

    iget-object v3, p0, Lhxu$a;->c:[I

    aget v3, v3, v9

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    aput v3, v0, v1

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget-object v3, p0, Lhxu$a;->c:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    iput v3, v0, Lhxu;->t:F

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget-object v3, p0, Lhxu$a;->c:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    iput v3, v0, Lhxu;->u:F

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget v0, v0, Lhxu;->q:I

    sget-object v3, Lcom/hisign/facedetectv1small/LiveDetect$c;->BadColor:Lcom/hisign/facedetectv1small/LiveDetect$c;

    invoke-virtual {v3}, Lcom/hisign/facedetectv1small/LiveDetect$c;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_9

    sget-boolean v0, Lhxu;->a:Z

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iput v9, v0, Lhxu;->s:I

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget-object v3, p0, Lhxu$a;->d:Lhxu;

    iget v3, v3, Lhxu;->q:I

    iput v3, v0, Lhxu;->r:I

    :cond_9
    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget v0, v0, Lhxu;->s:I

    if-ne v0, v7, :cond_b

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget-object v0, v0, Lhxu;->j:Lcom/hisign/facedetectv1small/LiveDetect$d;

    sget-object v3, Lcom/hisign/facedetectv1small/LiveDetect$d;->ShakeHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    if-eq v0, v3, :cond_a

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget-object v0, v0, Lhxu;->j:Lcom/hisign/facedetectv1small/LiveDetect$d;

    sget-object v3, Lcom/hisign/facedetectv1small/LiveDetect$d;->NodHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    if-ne v0, v3, :cond_b

    :cond_a
    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    invoke-static {v0}, Lhxu;->a(Lhxu;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lhxu;->a(Lhxu;I)V

    :cond_b
    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    invoke-static {v0}, Lhxu;->a(Lhxu;)I

    move-result v0

    if-ge v0, v7, :cond_c

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    invoke-static {v0}, Lhxu;->b(Lhxu;)Lcom/hisign/facedetectv1small/LiveDetect$c;

    move-result-object v0

    sget-object v3, Lcom/hisign/facedetectv1small/LiveDetect$c;->NoError:Lcom/hisign/facedetectv1small/LiveDetect$c;

    if-ne v0, v3, :cond_15

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget-object v0, v0, Lhxu;->j:Lcom/hisign/facedetectv1small/LiveDetect$d;

    sget-object v3, Lcom/hisign/facedetectv1small/LiveDetect$d;->Movement3D:Lcom/hisign/facedetectv1small/LiveDetect$d;

    if-ne v0, v3, :cond_15

    :cond_c
    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    invoke-static {v0, v1}, Lhxu;->a(Lhxu;I)V

    move v0, v2

    move v2, v1

    :goto_3
    const/16 v3, 0xa

    if-lt v2, v3, :cond_10

    :cond_d
    :goto_4
    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$c;->NoError:Lcom/hisign/facedetectv1small/LiveDetect$c;

    iget-object v2, p0, Lhxu$a;->d:Lhxu;

    invoke-static {v2}, Lhxu;->b(Lhxu;)Lcom/hisign/facedetectv1small/LiveDetect$c;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lhxu$a;->d:Lhxu;

    iput v9, v1, Lhxu;->s:I

    iget-object v1, p0, Lhxu$a;->d:Lhxu;

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$c;->Bad3DStructure:Lcom/hisign/facedetectv1small/LiveDetect$c;

    invoke-static {v1, v2}, Lhxu;->a(Lhxu;Lcom/hisign/facedetectv1small/LiveDetect$c;)V

    sget-boolean v1, Lhxu;->a:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "FaceLiveDetectSDK"

    const-string/jumbo v2, "3DDetect 3D\u672a\u5b8c\u6210--4"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    if-eqz p3, :cond_f

    aget-object v3, p3, v0

    iget-object v4, p0, Lhxu$a;->c:[I

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, 0x3

    aget v4, v4, v5

    iput v4, v3, Lcom/hisign/facedetectv1small/FaceDetect$b;->a:I

    aget-object v3, p3, v0

    iget-object v4, p0, Lhxu$a;->c:[I

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, 0x4

    aget v4, v4, v5

    iput v4, v3, Lcom/hisign/facedetectv1small/FaceDetect$b;->b:I

    aget-object v3, p3, v0

    iget-object v4, p0, Lhxu$a;->c:[I

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, 0x5

    aget v4, v4, v5

    iput v4, v3, Lcom/hisign/facedetectv1small/FaceDetect$b;->c:I

    aget-object v3, p3, v0

    iget-object v4, p0, Lhxu$a;->c:[I

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, 0x6

    aget v4, v4, v5

    iput v4, v3, Lcom/hisign/facedetectv1small/FaceDetect$b;->d:I

    aget-object v3, p3, v0

    iget-object v4, p0, Lhxu$a;->c:[I

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, 0x8

    aget v4, v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    iput v4, v3, Lcom/hisign/facedetectv1small/FaceDetect$b;->e:F

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Lhxu$a;->c:[I

    iget v3, p0, Lhxu$a;->a:I

    aput v3, v0, v1

    iget-object v0, p0, Lhxu$a;->c:[I

    const/16 v3, 0xc

    aput v3, v0, v8

    iget-object v0, p0, Lhxu$a;->c:[I

    iget-object v3, p0, Lhxu$a;->d:Lhxu;

    iget-object v3, v3, Lhxu;->j:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-virtual {v3}, Lcom/hisign/facedetectv1small/LiveDetect$d;->ordinal()I

    move-result v3

    aput v3, v0, v7

    iget-object v0, p0, Lhxu$a;->c:[I

    invoke-static {p1, v0}, Lcom/hisign/FaceSDK/FaceLiveDetect;->a([B[I)I

    move-result v0

    iget-object v3, p0, Lhxu$a;->d:Lhxu;

    invoke-static {}, Lcom/hisign/facedetectv1small/LiveDetect$c;->values()[Lcom/hisign/facedetectv1small/LiveDetect$c;

    move-result-object v4

    iget-object v5, p0, Lhxu$a;->c:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lhxu;->a(Lhxu;Lcom/hisign/facedetectv1small/LiveDetect$c;)V

    sget-boolean v3, Lhxu;->a:Z

    if-eqz v3, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "3DDetect \u540eszStatusSign3D="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lhxu$a;->d:Lhxu;

    invoke-static {v4}, Lhxu;->b(Lhxu;)Lcom/hisign/facedetectv1small/LiveDetect$c;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_11
    iget-object v3, p0, Lhxu$a;->d:Lhxu;

    invoke-static {v3}, Lhxu;->b(Lhxu;)Lcom/hisign/facedetectv1small/LiveDetect$c;

    move-result-object v3

    sget-object v4, Lcom/hisign/facedetectv1small/LiveDetect$c;->Bad3DStructure:Lcom/hisign/facedetectv1small/LiveDetect$c;

    if-ne v3, v4, :cond_12

    sget-boolean v1, Lhxu;->a:Z

    iget-object v1, p0, Lhxu$a;->d:Lhxu;

    iput v9, v1, Lhxu;->s:I

    goto/16 :goto_4

    :cond_12
    iget-object v3, p0, Lhxu$a;->d:Lhxu;

    invoke-static {v3}, Lhxu;->b(Lhxu;)Lcom/hisign/facedetectv1small/LiveDetect$c;

    move-result-object v3

    sget-object v4, Lcom/hisign/facedetectv1small/LiveDetect$c;->IsLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

    if-ne v3, v4, :cond_13

    sget-boolean v1, Lhxu;->a:Z

    if-eqz v1, :cond_d

    goto/16 :goto_4

    :cond_13
    sget-boolean v3, Lhxu;->a:Z

    iget-object v3, p0, Lhxu$a;->d:Lhxu;

    sget-object v4, Lcom/hisign/facedetectv1small/LiveDetect$c;->NoError:Lcom/hisign/facedetectv1small/LiveDetect$c;

    invoke-static {v3, v4}, Lhxu;->a(Lhxu;Lcom/hisign/facedetectv1small/LiveDetect$c;)V

    sget-boolean v3, Lcom/hisign/facedetectv1small/LiveDetect$a;->b:Z

    if-eqz v3, :cond_14

    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_14
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    :cond_15
    move v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    invoke-static {v0}, Lhxu;->c(Lhxu;)I

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    invoke-static {v0}, Lhxu;->d(Lhxu;)I

    iget-object v0, p0, Lhxu$a;->b:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhxu$a;->b:[B

    iget-object v1, p0, Lhxu$a;->d:Lhxu;

    invoke-static {v1}, Lhxu;->e(Lhxu;)I

    iget-object v1, p0, Lhxu$a;->d:Lhxu;

    invoke-static {v1}, Lhxu;->f(Lhxu;)[I

    move-result-object v1

    iget-object v2, p0, Lhxu$a;->d:Lhxu;

    invoke-static {v2}, Lhxu;->g(Lhxu;)[Lcom/hisign/facedetectv1small/FaceDetect$b;

    move-result-object v2

    iget-object v3, p0, Lhxu$a;->d:Lhxu;

    invoke-static {v3}, Lhxu;->h(Lhxu;)[Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1, v2}, Lhxu$a;->a([B[I[Lcom/hisign/facedetectv1small/FaceDetect$b;)I

    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    iget-object v1, p0, Lhxu$a;->d:Lhxu;

    iget v1, v1, Lhxu;->q:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lhxu;->b(Lhxu;I)V

    const/4 v0, 0x2

    iget-object v1, p0, Lhxu$a;->d:Lhxu;

    iget v1, v1, Lhxu;->s:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0xb

    iget-object v1, p0, Lhxu$a;->d:Lhxu;

    iget v1, v1, Lhxu;->s:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhxu;->a(Lhxu;Z)V

    :cond_1
    iget-object v0, p0, Lhxu$a;->d:Lhxu;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lhxu;->d:Z

    return-void
.end method
