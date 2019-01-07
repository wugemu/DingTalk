.class public final Lgse;
.super Ljava/lang/Object;
.source "CameraRecordRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgse$a;
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/SurfaceTexture;

.field public b:I

.field public c:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

.field public d:Z

.field public e:I

.field public f:Z

.field g:Z

.field public h:Lgse$a;

.field private final i:Landroid/os/Handler;

.field private j:I

.field private k:Z

.field private l:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

.field private final m:Ljava/lang/String;

.field private final n:[F

.field private final o:[F

.field private p:Lgsf;

.field private q:Landroid/app/Activity;

.field private r:Ljava/util/concurrent/locks/ReentrantLock;

.field private s:Z

.field private volatile t:Z

.field private final u:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 3
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "cameraHandler"    # Landroid/os/Handler;

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lgse;->j:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgse;->k:Z

    .line 37
    iput v2, p0, Lgse;->b:I

    .line 38
    new-instance v0, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    invoke-direct {v0}, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;-><init>()V

    iput-object v0, p0, Lgse;->c:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    .line 39
    new-instance v0, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    invoke-direct {v0}, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;-><init>()V

    iput-object v0, p0, Lgse;->l:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    .line 40
    const-string/jumbo v0, "CameraRecordRenderer"

    iput-object v0, p0, Lgse;->m:Ljava/lang/String;

    .line 42
    new-array v0, v1, [F

    iput-object v0, p0, Lgse;->n:[F

    .line 43
    new-array v0, v1, [F

    iput-object v0, p0, Lgse;->o:[F

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lgse;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    iput-boolean v2, p0, Lgse;->s:Z

    .line 270
    iput v2, p0, Lgse;->e:I

    .line 271
    iput-boolean v2, p0, Lgse;->f:Z

    .line 347
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgse;->u:Ljava/lang/Object;

    .line 54
    iput-object p2, p0, Lgse;->i:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lgse;->q:Landroid/app/Activity;

    .line 56
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "f_facebox_reenterlock_enable"

    invoke-static {v0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lgse;->s:Z

    .line 58
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 246
    iget-object v1, p0, Lgse;->a:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lgse;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 248
    const/4 v1, 0x0

    iput-object v1, p0, Lgse;->a:Landroid/graphics/SurfaceTexture;

    .line 251
    :cond_0
    iget-boolean v1, p0, Lgse;->t:Z

    if-eqz v1, :cond_1

    .line 253
    :try_start_0
    invoke-static {}, Lcom/taobao/xsandroidcamerademo/AlBeautify;->DeinitEffectModule()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    iput-boolean v6, p0, Lgse;->t:Z

    .line 260
    :cond_1
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    const-string/jumbo v1, "facebox"

    const-string/jumbo v2, "CameraRecordRenderer"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "notifyPausing err "

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 7
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 299
    iput-boolean p1, p0, Lgse;->g:Z

    .line 301
    if-eqz p1, :cond_0

    .line 302
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/taobao/xsandroidcamerademo/AlBeautify;->RemoveEffect(I)I

    .line 303
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/taobao/xsandroidcamerademo/AlBeautify;->AddEffect(I)I

    .line 304
    invoke-static {}, Lcom/taobao/xsandroidcamerademo/AlBeautify;->a()I

    .line 313
    :goto_0
    return-void

    .line 306
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/taobao/xsandroidcamerademo/AlBeautify;->RemoveEffect(I)I

    .line 307
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/taobao/xsandroidcamerademo/AlBeautify;->AddEffect(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "facebox"

    const-string/jumbo v2, "CameraRecordRenderer"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "setFaceBeautyEnable err "

    aput-object v4, v3, v5

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v13, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 128
    iget-boolean v6, p0, Lgse;->s:Z

    if-eqz v6, :cond_0

    .line 129
    iget-object v6, p0, Lgse;->r:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 132
    :cond_0
    :try_start_0
    iget-object v6, p0, Lgse;->a:Landroid/graphics/SurfaceTexture;

    if-nez v6, :cond_2

    .line 133
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glClearColor(FFFF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    iget-boolean v4, p0, Lgse;->s:Z

    if-eqz v4, :cond_1

    .line 189
    iget-object v4, p0, Lgse;->r:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 138
    :cond_2
    :try_start_1
    iget-boolean v6, p0, Lgse;->t:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lgse;->l:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    iget v6, v6, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iWidth:I

    if-lez v6, :cond_c

    iget-object v6, p0, Lgse;->l:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    iget v6, v6, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iHeight:I

    if-lez v6, :cond_c

    .line 139
    iget-object v6, p0, Lgse;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 146
    const/16 v6, 0x10e

    iget v7, p0, Lgse;->e:I

    if-ne v6, v7, :cond_5

    .line 148
    iget-boolean v6, p0, Lgse;->f:Z

    if-eqz v6, :cond_4

    .line 149
    const/4 v2, 0x1

    .line 150
    .local v2, "bIfRotate":Z
    const/4 v0, 0x1

    .line 151
    .local v0, "bIfFilpX":Z
    const/4 v1, 0x1

    .line 173
    .local v1, "bIfFilpY":Z
    :goto_1
    iget-object v6, p0, Lgse;->c:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    iget-object v7, p0, Lgse;->l:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    .line 1196
    invoke-static {v6, v7, v2, v0, v1}, Lcom/taobao/xsandroidcamerademo/AlBeautify;->OneFrameProcess_NoFaceRelated_TexIn_FboOut(Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;ZZZ)I

    .line 1202
    iget-object v7, p0, Lgse;->u:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1203
    :try_start_2
    iget-boolean v8, p0, Lgse;->d:Z

    if-eqz v8, :cond_b

    .line 1204
    new-instance v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;

    invoke-direct {v8}, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;-><init>()V

    .line 1206
    if-eqz v2, :cond_8

    .line 1207
    iget v9, v6, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iHeight:I

    iput v9, v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;->iWidth:I

    .line 1208
    iget v9, v6, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iWidth:I

    iput v9, v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;->iHeight:I

    .line 1214
    :goto_2
    sget v9, Lcom/taobao/xsandroidcamerademo/FilterConstants;->Format_RGBA:I

    iput v9, v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;->iFormat:I

    .line 1215
    iget v9, v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;->iWidth:I

    iget v10, v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;->iHeight:I

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x4

    int-to-long v10, v9

    iput-wide v10, v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;->lLen:J

    .line 1216
    iget v9, v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;->iWidth:I

    iget v10, v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;->iHeight:I

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x4

    new-array v9, v9, [B

    iput-object v9, v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;->data:[B

    .line 1219
    if-nez v0, :cond_9

    :goto_3
    invoke-static {v6, v8, v2, v4, v1}, Lcom/taobao/xsandroidcamerademo/AlBeautify;->OneFrameProcess_NoFaceRelated_TexIn_RawOut(Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;ZZZ)I

    move-result v4

    .line 1225
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgse;->d:Z

    .line 1228
    iget-object v6, v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;->data:[B

    if-eqz v6, :cond_b

    if-nez v4, :cond_b

    .line 1230
    iget-object v9, v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;->data:[B

    move v6, v5

    move v4, v5

    .line 1329
    :goto_4
    array-length v10, v9

    if-ge v6, v10, :cond_a

    .line 1330
    add-int/lit8 v4, v4, 0x1

    .line 1331
    if-ne v4, v13, :cond_3

    .line 1332
    add-int/lit8 v4, v6, -0x3

    aget-byte v4, v9, v4

    .line 1333
    add-int/lit8 v10, v6, -0x2

    aget-byte v10, v9, v10

    .line 1334
    add-int/lit8 v11, v6, -0x1

    aget-byte v11, v9, v11

    .line 1335
    aget-byte v12, v9, v6

    .line 1336
    aput-byte v12, v9, v6

    .line 1337
    add-int/lit8 v12, v6, -0x1

    aput-byte v11, v9, v12

    .line 1338
    add-int/lit8 v11, v6, -0x2

    aput-byte v10, v9, v11

    .line 1339
    add-int/lit8 v10, v6, -0x3

    aput-byte v4, v9, v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    .line 1329
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 153
    .end local v0    # "bIfFilpX":Z
    .end local v1    # "bIfFilpY":Z
    .end local v2    # "bIfRotate":Z
    :cond_4
    const/4 v2, 0x1

    .line 154
    .restart local v2    # "bIfRotate":Z
    const/4 v0, 0x1

    .line 155
    .restart local v0    # "bIfFilpX":Z
    const/4 v1, 0x0

    .restart local v1    # "bIfFilpY":Z
    goto :goto_1

    .line 157
    .end local v0    # "bIfFilpX":Z
    .end local v1    # "bIfFilpY":Z
    .end local v2    # "bIfRotate":Z
    :cond_5
    const/16 v6, 0x5a

    :try_start_3
    iget v7, p0, Lgse;->e:I

    if-ne v6, v7, :cond_7

    .line 159
    iget-boolean v6, p0, Lgse;->f:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_6

    .line 160
    const/4 v2, 0x1

    .line 161
    .restart local v2    # "bIfRotate":Z
    const/4 v0, 0x0

    .line 162
    .restart local v0    # "bIfFilpX":Z
    const/4 v1, 0x0

    .restart local v1    # "bIfFilpY":Z
    goto/16 :goto_1

    .line 164
    .end local v0    # "bIfFilpX":Z
    .end local v1    # "bIfFilpY":Z
    .end local v2    # "bIfRotate":Z
    :cond_6
    const/4 v2, 0x1

    .line 165
    .restart local v2    # "bIfRotate":Z
    const/4 v0, 0x0

    .line 166
    .restart local v0    # "bIfFilpX":Z
    const/4 v1, 0x1

    .restart local v1    # "bIfFilpY":Z
    goto/16 :goto_1

    .line 169
    .end local v0    # "bIfFilpX":Z
    .end local v1    # "bIfFilpY":Z
    .end local v2    # "bIfRotate":Z
    :cond_7
    const/4 v2, 0x0

    .line 170
    .restart local v2    # "bIfRotate":Z
    const/4 v0, 0x0

    .line 171
    .restart local v0    # "bIfFilpX":Z
    const/4 v1, 0x0

    .restart local v1    # "bIfFilpY":Z
    goto/16 :goto_1

    .line 1210
    :cond_8
    :try_start_4
    iget v9, v6, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iWidth:I

    iput v9, v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;->iWidth:I

    .line 1211
    iget v9, v6, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iHeight:I

    iput v9, v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;->iHeight:I

    goto :goto_2

    .line 1240
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 184
    .end local v0    # "bIfFilpX":Z
    .end local v1    # "bIfFilpY":Z
    .end local v2    # "bIfRotate":Z
    :catch_0
    move-exception v3

    .line 185
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    const-string/jumbo v4, "facebox"

    const-string/jumbo v5, "CameraRecordRenderer"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "onDrawFrame err "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 188
    iget-boolean v4, p0, Lgse;->s:Z

    if-eqz v4, :cond_1

    .line 189
    iget-object v4, p0, Lgse;->r:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v0    # "bIfFilpX":Z
    .restart local v1    # "bIfFilpY":Z
    .restart local v2    # "bIfRotate":Z
    :cond_9
    move v4, v5

    .line 1219
    goto/16 :goto_3

    .line 1231
    :cond_a
    :try_start_7
    iget v4, v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;->iWidth:I

    iget v5, v8, Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;->iHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1232
    if-eqz v4, :cond_b

    .line 1233
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1234
    iget-object v5, p0, Lgse;->h:Lgse$a;

    if-eqz v5, :cond_b

    .line 1235
    iget-object v5, p0, Lgse;->h:Lgse$a;

    invoke-interface {v5, v4}, Lgse$a;->a(Landroid/graphics/Bitmap;)V

    .line 1240
    :cond_b
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 188
    .end local v0    # "bIfFilpX":Z
    .end local v1    # "bIfFilpY":Z
    .end local v2    # "bIfRotate":Z
    :goto_5
    iget-boolean v4, p0, Lgse;->s:Z

    if-eqz v4, :cond_1

    .line 189
    iget-object v4, p0, Lgse;->r:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 179
    :cond_c
    const/16 v4, 0x4000

    :try_start_8
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 180
    iget-object v4, p0, Lgse;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 181
    iget-object v4, p0, Lgse;->a:Landroid/graphics/SurfaceTexture;

    iget-object v5, p0, Lgse;->n:[F

    invoke-virtual {v4, v5}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 182
    iget-object v4, p0, Lgse;->p:Lgsf;

    iget v5, p0, Lgse;->j:I

    iget-object v6, p0, Lgse;->n:[F

    .line 2080
    iget v7, v4, Lgsf;->a:I

    invoke-static {v7}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2081
    if-eqz v6, :cond_d

    .line 2082
    iget v7, v4, Lgsf;->c:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v6, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2083
    :cond_d
    iget v6, v4, Lgsf;->b:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v4, v4, Lgsf;->d:[F

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v4, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2084
    const v4, 0x84c0

    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 2085
    const v4, 0x8d65

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2086
    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 2087
    const v4, 0x8d65

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2088
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 188
    :catchall_1
    move-exception v4

    iget-boolean v5, p0, Lgse;->s:Z

    if-eqz v5, :cond_e

    .line 189
    iget-object v5, p0, Lgse;->r:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_e
    throw v4
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v5, 0x10

    .line 81
    iget-boolean v1, p0, Lgse;->s:Z

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lgse;->r:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 85
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    :try_start_0
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 87
    new-instance v1, Lgsf;

    invoke-direct {v1}, Lgsf;-><init>()V

    iput-object v1, p0, Lgse;->p:Lgsf;

    .line 88
    iget-object v1, p0, Lgse;->p:Lgsf;

    iget-object v2, p0, Lgse;->o:[F

    .line 1092
    if-eqz v2, :cond_4

    array-length v3, v2

    if-lt v3, v5, :cond_4

    .line 1093
    const/4 v3, 0x0

    iget-object v1, v1, Lgsf;->d:[F

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    :goto_0
    if-eqz p1, :cond_1

    .line 90
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 92
    :cond_1
    iget-object v1, p0, Lgse;->l:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    iput p2, v1, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iWidth:I

    .line 93
    iget-object v1, p0, Lgse;->l:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    iput p3, v1, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iHeight:I

    .line 94
    iget-object v1, p0, Lgse;->i:Landroid/os/Handler;

    iget-object v2, p0, Lgse;->i:Landroid/os/Handler;

    const/16 v3, 0x1002

    iget-object v4, p0, Lgse;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    iget-boolean v1, p0, Lgse;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    if-lez p3, :cond_2

    .line 102
    :try_start_1
    invoke-static {}, Lcom/taobao/xsandroidcamerademo/AlBeautify;->InitEffectModule()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :goto_1
    :try_start_2
    iget-boolean v1, p0, Lgse;->g:Z

    invoke-virtual {p0, v1}, Lgse;->a(Z)V

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgse;->t:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :cond_2
    iget-boolean v1, p0, Lgse;->s:Z

    if-eqz v1, :cond_3

    .line 114
    iget-object v1, p0, Lgse;->r:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 117
    :cond_3
    return-void

    .line 1095
    :cond_4
    :try_start_3
    iget-object v1, v1, Lgsf;->d:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lgse;->s:Z

    if-eqz v2, :cond_5

    .line 114
    iget-object v2, p0, Lgse;->r:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_5
    throw v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    const-string/jumbo v1, "facebox"

    const-string/jumbo v2, "CameraRecordRenderer"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "InitEffectModule err "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lgse;->o:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 63
    new-instance v0, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    invoke-direct {v0}, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;-><init>()V

    iput-object v0, p0, Lgse;->c:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    .line 64
    invoke-static {}, Lgsf;->a()I

    move-result v0

    iput v0, p0, Lgse;->j:I

    .line 65
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lgse;->j:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lgse;->a:Landroid/graphics/SurfaceTexture;

    .line 66
    iget-object v0, p0, Lgse;->c:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    iget v1, p0, Lgse;->j:I

    iput v1, v0, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iId:I

    .line 67
    iget-object v0, p0, Lgse;->c:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    sget v1, Lcom/taobao/xsandroidcamerademo/FilterConstants;->Format_RGBA:I

    iput v1, v0, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iFormat:I

    .line 68
    new-instance v0, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    invoke-direct {v0}, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;-><init>()V

    iput-object v0, p0, Lgse;->l:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    .line 69
    iget-object v0, p0, Lgse;->l:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    iput v2, v0, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iId:I

    .line 70
    iget-object v0, p0, Lgse;->l:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    sget v1, Lcom/taobao/xsandroidcamerademo/FilterConstants;->Format_RGBA:I

    iput v1, v0, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iFormat:I

    .line 71
    return-void
.end method
