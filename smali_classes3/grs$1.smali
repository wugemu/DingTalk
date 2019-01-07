.class final Lgrs$1;
.super Ljava/lang/Object;
.source "FaceBoxService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgrs;->a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;Lgru;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field volatile a:Z

.field final synthetic b:Lgru;

.field final synthetic c:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

.field final synthetic d:Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;

.field final synthetic e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

.field final synthetic f:J

.field final synthetic g:Lgrs;

.field private h:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lgrs;Lgru;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;J)V
    .locals 2
    .param p1, "this$0"    # Lgrs;

    .prologue
    .line 68
    iput-object p1, p0, Lgrs$1;->g:Lgrs;

    iput-object p2, p0, Lgrs$1;->b:Lgru;

    iput-object p3, p0, Lgrs$1;->c:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    iput-object p4, p0, Lgrs$1;->d:Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;

    iput-object p5, p0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iput-wide p6, p0, Lgrs$1;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lgrs$1$1;

    invoke-direct {v0, p0}, Lgrs$1$1;-><init>(Lgrs$1;)V

    iput-object v0, p0, Lgrs$1;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lgrs$1;Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;)V
    .locals 4
    .param p0, "x0"    # Lgrs$1;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;

    .prologue
    .line 68
    .line 1345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1346
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lgrs$1$3;

    invoke-direct {v3, p0, v0, v1}, Lgrs$1$3;-><init>(Lgrs$1;J)V

    .line 2266
    if-nez p1, :cond_0

    .line 2309
    :goto_0
    return-void

    .line 2270
    :cond_0
    const-string/jumbo v0, "faceboxrpc"

    invoke-static {v0}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2271
    invoke-static {v0}, Lgrx$a;->a(Landroid/os/IBinder;)Lgrx;

    move-result-object v0

    .line 2273
    if-nez v0, :cond_2

    .line 2274
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2275
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "recognizeFace, IFaceBoxRpcService is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2277
    :cond_1
    const-string/jumbo v0, "11"

    const-string/jumbo v1, "IFaceBoxRpcService is null"

    invoke-static {v2, v3, v0, v1}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "rpc"

    const-string/jumbo v2, "recognizeFace, IFaceBoxRpcService is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2285
    :cond_2
    :try_start_0
    new-instance v1, Lgst$7;

    invoke-direct {v1, v2, v3}, Lgst$7;-><init>(Landroid/os/Handler;Lcma;)V

    invoke-interface {v0, p1, v1}, Lgrx;->a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;Lgrw;)V

    .line 2304
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2306
    :catch_0
    move-exception v0

    const-string/jumbo v0, "11"

    const-string/jumbo v1, "recognizeFace rpc remote err"

    invoke-static {v2, v3, v0, v1}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    invoke-static {}, Lcja;->c()V

    .line 2308
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "rpc"

    const-string/jumbo v2, "recognizeFace rpc error"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lgrs$1;)Z
    .locals 1
    .param p0, "x0"    # Lgrs$1;

    .prologue
    .line 68
    iget-boolean v0, p0, Lgrs$1;->a:Z

    return v0
.end method

.method static synthetic b(Lgrs$1;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lgrs$1;

    .prologue
    .line 68
    iget-object v0, p0, Lgrs$1;->h:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 30

    .prologue
    .line 96
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->c:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgrs$1;->d:Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;

    invoke-static {v3, v4}, Lgtd;->b(Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;)Lgsq;

    move-result-object v19

    .line 97
    .local v19, "imageInfo":Lgsq;
    if-nez v19, :cond_1

    .line 98
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->b:Lgru;

    if-eqz v3, :cond_0

    .line 100
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->b:Lgru;

    const-string/jumbo v4, "12"

    const-string/jumbo v6, "transform frame error"

    invoke-interface {v3, v4, v6}, Lgru;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1340
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v3

    invoke-static {}, Lcja;->c()V

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->a:Lgsr;

    iget-object v3, v3, Lgsr;->e:[B

    const-string/jumbo v4, "faceRecognize"

    const-string/jumbo v6, "face"

    invoke-static {v3, v4, v6}, Lgsz;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 115
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->a:Lgsr;

    iget-object v3, v3, Lgsr;->e:[B

    const/4 v4, 0x0

    move-object/from16 v0, v19

    iget-object v6, v0, Lgsq;->a:Lgsr;

    iget-object v6, v6, Lgsr;->e:[B

    array-length v6, v6

    invoke-static {v3, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 116
    .local v24, "rgbBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iget-object v4, v0, Lgsq;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iget-object v6, v0, Lgsq;->b:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iget-object v7, v0, Lgsq;->b:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    move-object/from16 v0, v19

    iget-object v7, v0, Lgsq;->b:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iget-object v0, v0, Lgsq;->b:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v7, v7, v27

    move-object/from16 v0, v24

    invoke-static {v0, v3, v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 118
    .local v23, "rectBitmap":Landroid/graphics/Bitmap;
    const/16 v3, 0x64

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lgsz;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v25

    .line 119
    .local v25, "rgbdata":[B
    const-string/jumbo v3, "faceRecognize"

    const-string/jumbo v4, "face_rect"

    move-object/from16 v0, v25

    invoke-static {v0, v3, v4}, Lgsz;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 122
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->c:Lgsr;

    iget-object v3, v3, Lgsr;->e:[B

    const-string/jumbo v4, "faceRecognize"

    const-string/jumbo v6, "big"

    invoke-static {v3, v4, v6}, Lgsz;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 124
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->c:Lgsr;

    iget-object v3, v3, Lgsr;->e:[B

    const/4 v4, 0x0

    move-object/from16 v0, v19

    iget-object v6, v0, Lgsq;->c:Lgsr;

    iget-object v6, v6, Lgsr;->e:[B

    array-length v6, v6

    invoke-static {v3, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 125
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iget-object v4, v0, Lgsq;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iget-object v6, v0, Lgsq;->d:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iget-object v7, v0, Lgsq;->d:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    move-object/from16 v0, v19

    iget-object v7, v0, Lgsq;->d:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iget-object v0, v0, Lgsq;->d:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v7, v7, v27

    move-object/from16 v0, v24

    invoke-static {v0, v3, v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 127
    const/16 v3, 0x64

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lgsz;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v25

    .line 128
    const-string/jumbo v3, "faceRecognize"

    const-string/jumbo v4, "big_rect"

    move-object/from16 v0, v25

    invoke-static {v0, v3, v4}, Lgsz;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 132
    .end local v23    # "rectBitmap":Landroid/graphics/Bitmap;
    .end local v24    # "rgbBitmap":Landroid/graphics/Bitmap;
    .end local v25    # "rgbdata":[B
    :cond_2
    const/4 v15, 0x0

    .line 133
    .local v15, "faceRectModel":Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;
    const/16 v22, 0x0

    .line 135
    .local v22, "liveRectModel":Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;
    const/16 v26, 0x0

    .line 137
    .local v26, "start":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iget-boolean v3, v3, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->recognizeFace:Z

    if-eqz v3, :cond_3

    .line 138
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->a:Lgsr;

    iget-object v3, v3, Lgsr;->e:[B

    array-length v0, v3

    move/from16 v21, v0

    .line 139
    .local v21, "len":I
    new-instance v15, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    .end local v15    # "faceRectModel":Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;
    invoke-direct {v15}, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;-><init>()V

    .line 140
    .restart local v15    # "faceRectModel":Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v15, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;->left:Ljava/lang/Integer;

    .line 141
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v15, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;->top:Ljava/lang/Integer;

    .line 142
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v15, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;->width:Ljava/lang/Integer;

    .line 143
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v15, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;->height:Ljava/lang/Integer;

    .line 144
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v6, ":"

    aput-object v6, v3, v4

    const/4 v4, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;->sliceIndex:Ljava/lang/String;

    .line 145
    add-int/lit8 v26, v21, 0x0

    .line 148
    .end local v21    # "len":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iget-boolean v3, v3, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->recognizeLive:Z

    if-eqz v3, :cond_4

    .line 149
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->c:Lgsr;

    iget-object v3, v3, Lgsr;->e:[B

    array-length v0, v3

    move/from16 v21, v0

    .line 150
    .restart local v21    # "len":I
    new-instance v22, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    .end local v22    # "liveRectModel":Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;
    invoke-direct/range {v22 .. v22}, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;-><init>()V

    .line 151
    .restart local v22    # "liveRectModel":Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;->left:Ljava/lang/Integer;

    .line 152
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;->top:Ljava/lang/Integer;

    .line 153
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;->width:Ljava/lang/Integer;

    .line 154
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;->height:Ljava/lang/Integer;

    .line 155
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v6, ":"

    aput-object v6, v3, v4

    const/4 v4, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;->sliceIndex:Ljava/lang/String;

    .line 159
    .end local v21    # "len":I
    :cond_4
    if-nez v15, :cond_5

    if-nez v22, :cond_5

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->b:Lgru;

    if-eqz v3, :cond_0

    .line 162
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->b:Lgru;

    const-string/jumbo v4, "13"

    const-string/jumbo v6, "live rect model and face rect model is null"

    invoke-interface {v3, v4, v6}, Lgru;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcja;->b()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 165
    :catch_1
    move-exception v3

    invoke-static {}, Lcja;->c()V

    goto/16 :goto_0

    .line 172
    :cond_5
    new-instance v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;

    invoke-direct {v8}, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;-><init>()V

    .line 173
    .local v8, "model":Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iget-object v3, v3, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->userId:Ljava/lang/String;

    iput-object v3, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->userId:Ljava/lang/String;

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iget-object v3, v3, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->corpId:Ljava/lang/String;

    iput-object v3, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->corpId:Ljava/lang/String;

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iget-object v3, v3, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->groupUid:Ljava/lang/String;

    iput-object v3, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->groupUid:Ljava/lang/String;

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iget-object v3, v3, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->deviceUid:Ljava/lang/String;

    iput-object v3, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->deviceUid:Ljava/lang/String;

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iget-object v3, v3, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->source:Ljava/lang/String;

    iput-object v3, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->source:Ljava/lang/String;

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iget v3, v3, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->faceReqNum:I

    iput v3, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->faceReqNum:I

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iget-object v3, v3, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->faceAttributes:Ljava/lang/String;

    iput-object v3, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->faceAttributes:Ljava/lang/String;

    .line 180
    iput-object v15, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->faceRect:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    .line 181
    move-object/from16 v0, v22

    iput-object v0, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->liveRect:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    .line 183
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 185
    .local v9, "context":Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 187
    .local v2, "cacheDir":Ljava/io/File;
    if-nez v2, :cond_6

    .line 188
    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 191
    :cond_6
    new-instance v12, Ljava/io/File;

    const-string/jumbo v3, "face_temp"

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    .local v12, "dir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 194
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 197
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 198
    .local v16, "fileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v5, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .local v5, "temp":Ljava/io/File;
    const/16 v17, 0x0

    .line 201
    .local v17, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .local v18, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iget-boolean v3, v3, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->recognizeFace:Z

    if-eqz v3, :cond_8

    .line 203
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->a:Lgsr;

    iget-object v3, v3, Lgsr;->e:[B

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 205
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iget-boolean v3, v3, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->recognizeLive:Z

    if-eqz v3, :cond_9

    .line 206
    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->c:Lgsr;

    iget-object v3, v3, Lgsr;->e:[B

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 208
    :cond_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    invoke-static/range {v18 .. v18}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    move-object/from16 v17, v18

    .line 225
    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 226
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v6, "prepare recognize time="

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lgrs$1;->f:J

    move-wide/from16 v28, v0

    sub-long v6, v6, v28

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    .line 230
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iget v3, v3, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->recognizeTimeout:I

    if-lez v3, :cond_b

    .line 231
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lgrs$1;->h:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iget v6, v6, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->recognizeTimeout:I

    int-to-long v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1239
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1242
    new-instance v27, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;

    invoke-direct/range {v27 .. v27}, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;-><init>()V

    .line 1243
    const/4 v3, 0x1

    move-object/from16 v0, v27

    iput-boolean v3, v0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->isAuth:Z

    .line 1245
    sget-object v3, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->TEMP_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v3}, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->getValue()I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->authType:I

    .line 1247
    const/16 v3, 0xb40

    move-object/from16 v0, v27

    iput v3, v0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->expiredTime:I

    .line 1248
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->filePath:Ljava/lang/String;

    .line 1250
    const-string/jumbo v3, "faceboxrpc"

    invoke-static {v3}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1251
    invoke-static {v3}, Lgrx$a;->a(Landroid/os/IBinder;)Lgrx;

    move-result-object v28

    .line 1253
    if-nez v28, :cond_11

    .line 1254
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1255
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "IFaceBoxRpcService is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    :catch_2
    move-exception v13

    .line 210
    .local v13, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string/jumbo v3, "facebox"

    const-string/jumbo v4, "FaceBoxService"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v27, "[Face] save image file error ->"

    aput-object v27, v6, v7

    const/4 v7, 0x1

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iget-boolean v3, v3, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->recognizeFace:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->a:Lgsr;

    iget-object v10, v3, Lgsr;->e:[B

    .line 213
    .local v10, "data1":[B
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->e:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    iget-boolean v3, v3, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->recognizeLive:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, v19

    iget-object v3, v0, Lgsq;->c:Lgsr;

    iget-object v11, v3, Lgsr;->e:[B

    .line 214
    .local v11, "data2":[B
    :goto_4
    const/4 v3, 0x2

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v10, v3, v4

    const/4 v4, 0x1

    aput-object v11, v3, v4

    move-object/from16 v0, v16

    invoke-static {v9, v0, v3}, Lgtb;->a(Landroid/content/Context;Ljava/lang/String;[[B)Ljava/io/File;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v20

    .line 215
    .local v20, "innerFile":Ljava/io/File;
    if-eqz v20, :cond_c

    .line 216
    move-object/from16 v5, v20

    .line 222
    .end local v10    # "data1":[B
    .end local v11    # "data2":[B
    .end local v20    # "innerFile":Ljava/io/File;
    :cond_c
    :goto_5
    invoke-static/range {v17 .. v17}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 212
    :cond_d
    const/4 v10, 0x0

    goto :goto_3

    .line 213
    .restart local v10    # "data1":[B
    :cond_e
    const/4 v11, 0x0

    goto :goto_4

    .line 218
    .end local v10    # "data1":[B
    :catch_3
    move-exception v14

    .line 219
    .local v14, "e1":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v3, "facebox"

    const-string/jumbo v4, "FaceBoxService"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v27, "[Face] save image file error ->"

    aput-object v27, v6, v7

    const/4 v7, 0x1

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 222
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v14    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_6
    invoke-static/range {v17 .. v17}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v3

    .line 1258
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->b:Lgru;

    if-eqz v3, :cond_10

    .line 1260
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lgrs$1;->b:Lgru;

    const-string/jumbo v4, "11"

    const-string/jumbo v6, "IFaceBoxRpcService is null"

    invoke-interface {v3, v4, v6}, Lgru;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1267
    :cond_10
    :goto_7
    const-string/jumbo v3, "facebox"

    const-string/jumbo v4, "rpc"

    const-string/jumbo v6, "[Face] uploadImage, IFaceBoxRpcService is null"

    invoke-static {v3, v4, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1261
    :catch_4
    move-exception v3

    .line 1262
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1263
    invoke-static {}, Lcja;->c()V

    goto :goto_7

    .line 1272
    :cond_11
    :try_start_8
    new-instance v3, Lgrs$1$2;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lgrs$1$2;-><init>(Lgrs$1;Ljava/io/File;JLcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v3}, Lgrx;->a(Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;Lgrw;)V

    .line 1337
    invoke-static {}, Lcja;->b()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 1339
    :catch_5
    move-exception v3

    invoke-static {}, Lcja;->c()V

    goto/16 :goto_0

    .line 222
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object/from16 v17, v18

    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 209
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v13

    move-object/from16 v17, v18

    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method
