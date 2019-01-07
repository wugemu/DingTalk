.class public abstract Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;
.super Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;
.source "CameraBridgeViewBase.java"


# instance fields
.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:F

.field protected h:I

.field protected i:I

.field protected j:Z

.field protected k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

.field private m:I

.field private n:Lgwv;

.field private o:Z

.field private p:Ljava/lang/Object;

.field private q:I

.field private r:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput v3, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->m:I

    .line 45
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->p:Ljava/lang/Object;

    .line 51
    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->g:F

    .line 52
    const/4 v2, 0x1

    iput v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->h:I

    .line 53
    iput v4, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->i:I

    .line 63
    iput v3, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->q:I

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->k:Ljava/util/ArrayList;

    .line 74
    instance-of v2, p1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    if-eqz v2, :cond_0

    .line 75
    check-cast p1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->l:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 78
    :cond_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    .line 79
    .local v0, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Attr count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lov$e;->CameraBridgeViewBase:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 81
    .local v1, "styledAttrs":Landroid/content/res/TypedArray;
    sget v2, Lov$e;->CameraBridgeViewBase_camera_id:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->i:I

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 84
    iput v4, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->f:I

    .line 85
    iput v4, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->e:I

    .line 86
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    iget-object v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->l:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 1706
    iget-object v2, v2, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    .line 2041
    iget-object v2, v2, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 88
    invoke-virtual {p0, v2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->a(Lcom/alibaba/dt/ar/core/ArJniWrapper;)V

    .line 89
    return-void
.end method

.method private g()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    iget-boolean v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->j:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->o:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 191
    const/4 v0, 0x1

    .line 195
    .local v0, "targetState":I
    :goto_0
    iget v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->m:I

    if-eq v0, v1, :cond_1

    .line 197
    iget v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->m:I

    .line 2222
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "call processExitState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2223
    packed-switch v1, :pswitch_data_0

    .line 198
    :cond_0
    :goto_1
    iput v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->m:I

    .line 199
    iget v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->m:I

    .line 3204
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "call processEnterState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3205
    packed-switch v1, :pswitch_data_1

    .line 201
    :cond_1
    :goto_2
    return-void

    .line 193
    .end local v0    # "targetState":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "targetState":I
    goto :goto_0

    .line 2262
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->e()V

    .line 2264
    invoke-virtual {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->a()V

    .line 2266
    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->l:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 2706
    iget-object v1, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    .line 3041
    iget-object v1, v1, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 2266
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->SetNetworkBitmap(Landroid/graphics/Bitmap;)V

    .line 2267
    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->r:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 2268
    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 3246
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->a(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3247
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3248
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 3249
    const-string/jumbo v2, "It seems that you device does not support camera (or it is locked). Application will be closed."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3250
    const/4 v2, -0x3

    const-string/jumbo v3, "OK"

    new-instance v4, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase$1;

    invoke-direct {v4, p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase$1;-><init>(Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3256
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 2223
    .line 3205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected final a(Ljava/util/List;Lgww;II)Lgwy;
    .locals 16
    .param p2, "accessor"    # Lgww;
    .param p3, "surfaceWidth"    # I
    .param p4, "surfaceHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lgww;",
            "II)",
            "Lgwy;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 306
    .local p1, "supportedSizes":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v3, 0x0

    .line 307
    .local v3, "calcWidth":I
    const/4 v2, 0x0

    .line 309
    .local v2, "calcHeight":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->f:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->f:I

    move/from16 v0, p3

    if-ge v10, v0, :cond_1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->f:I

    .line 310
    .local v6, "maxAllowedWidth":I
    :goto_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->e:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->e:I

    move/from16 v0, p4

    if-ge v10, v0, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->e:I

    .line 312
    .local v5, "maxAllowedHeight":I
    :goto_1
    move v8, v6

    .line 313
    .local v8, "tmp":I
    move v6, v5

    .line 314
    move v5, v8

    .line 316
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "support : surface width = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 319
    .local v7, "size":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lgww;->a(Ljava/lang/Object;)I

    move-result v9

    .line 320
    .local v9, "width":I
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lgww;->b(Ljava/lang/Object;)I

    move-result v4

    .line 323
    .local v4, "height":I
    if-gt v9, v6, :cond_0

    if-gt v4, v5, :cond_0

    .line 324
    if-lt v9, v3, :cond_0

    if-lt v4, v2, :cond_0

    .line 325
    move v3, v9

    .line 326
    move v2, v4

    goto :goto_2

    .end local v4    # "height":I
    .end local v5    # "maxAllowedHeight":I
    .end local v6    # "maxAllowedWidth":I
    .end local v7    # "size":Ljava/lang/Object;
    .end local v8    # "tmp":I
    .end local v9    # "width":I
    :cond_1
    move/from16 v6, p3

    .line 309
    goto :goto_0

    .restart local v6    # "maxAllowedWidth":I
    :cond_2
    move/from16 v5, p4

    .line 310
    goto :goto_1

    .line 331
    .restart local v5    # "maxAllowedHeight":I
    .restart local v8    # "tmp":I
    :cond_3
    new-instance v10, Lgwy;

    int-to-double v12, v3

    int-to-double v14, v2

    invoke-direct {v10, v12, v13, v14, v15}, Lgwy;-><init>(DD)V

    return-object v10
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method protected abstract a(II)Z
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->j:Z

    .line 165
    invoke-direct {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->g()V

    .line 166
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->j:Z

    .line 180
    invoke-direct {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->g()V

    .line 181
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract e()V
.end method

.method protected final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 291
    iget v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->c:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->l:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 3706
    iget-object v1, v1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    .line 4041
    iget-object v1, v1, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 291
    invoke-virtual {v1}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->GetFrameShrinkScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->d:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->l:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 4706
    iget-object v2, v2, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    .line 5041
    iget-object v2, v2, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 291
    invoke-virtual {v2}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->GetFrameShrinkScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->r:Landroid/graphics/Bitmap;

    .line 292
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->l:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 5706
    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    .line 6041
    iget-object v0, v0, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 292
    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->SetNetworkBitmap(Landroid/graphics/Bitmap;)V

    .line 293
    return-void
.end method

.method public getNetWorkBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->r:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setCvCameraViewListener(Lgwv;)V
    .locals 0
    .param p1, "listener"    # Lgwv;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->n:Lgwv;

    .line 97
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 126
    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->o:Z

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->o:Z

    .line 129
    invoke-direct {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->g()V

    .line 139
    :goto_0
    monitor-exit v1

    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->o:Z

    .line 134
    invoke-direct {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->g()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->o:Z

    .line 137
    invoke-direct {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->g()V

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 146
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 151
    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->o:Z

    .line 153
    invoke-direct {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->g()V

    .line 154
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
