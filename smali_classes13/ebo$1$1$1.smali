.class final Lebo$1$1$1;
.super Ljava/lang/Object;
.source "VideoEncode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lebo$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lebo$1$1;


# direct methods
.method constructor <init>(Lebo$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lebo$1$1;

    .prologue
    .line 85
    iput-object p1, p0, Lebo$1$1$1;->a:Lebo$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 88
    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v7, v7, Lebo$1;->a:Lebo;

    .line 1187
    new-instance v10, Lebo$2;

    invoke-direct {v10, v7}, Lebo$2;-><init>(Lebo;)V

    invoke-static {v10}, Lcom/taobao/media/MediaEncoder;->registerNativeListener(Lcom/taobao/media/MediaEncoder$OnReEncodeFinishListener;)V

    .line 89
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v7, v7, Lebo$1;->a:Lebo;

    .line 2027
    iget-object v7, v7, Lebo;->b:Ljava/lang/String;

    .line 89
    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 91
    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v7, v7, Lebo$1;->a:Lebo;

    .line 3027
    iget-object v7, v7, Lebo;->e:Lcma;

    .line 91
    if-eqz v7, :cond_0

    .line 92
    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v7, v7, Lebo$1;->a:Lebo;

    .line 4027
    iget-object v7, v7, Lebo;->e:Lcma;

    .line 92
    const-string/jumbo v10, "404"

    const-string/jumbo v11, "file not found"

    invoke-interface {v7, v10, v11}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v7, v7, Lebo$1;->a:Lebo;

    .line 97
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 96
    invoke-static {v10, v11}, Lebj;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5027
    iput-object v10, v7, Lebo;->c:Ljava/lang/String;

    .line 100
    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v7, v7, Lebo$1;->a:Lebo;

    .line 6027
    iget-object v7, v7, Lebo;->b:Ljava/lang/String;

    .line 100
    move-object/from16 v0, p0

    iget-object v10, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v10, v10, Lebo$1$1;->a:Lebo$1;

    iget-object v10, v10, Lebo$1;->a:Lebo;

    .line 7027
    iget-object v10, v10, Lebo;->c:Ljava/lang/String;

    .line 100
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 101
    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v7, v7, Lebo$1;->a:Lebo;

    .line 8027
    iget-object v7, v7, Lebo;->e:Lcma;

    .line 101
    if-eqz v7, :cond_0

    .line 102
    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v7, v7, Lebo$1;->a:Lebo;

    .line 9027
    iget-object v7, v7, Lebo;->e:Lcma;

    .line 102
    move-object/from16 v0, p0

    iget-object v10, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v10, v10, Lebo$1$1;->a:Lebo$1;

    iget-object v10, v10, Lebo$1;->a:Lebo;

    .line 10027
    iget-object v10, v10, Lebo;->c:Ljava/lang/String;

    .line 102
    invoke-interface {v7, v10}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_2
    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v10, v10, Lebo$1$1;->a:Lebo$1;

    iget-object v10, v10, Lebo$1;->a:Lebo;

    .line 11027
    iget-object v10, v10, Lebo;->b:Ljava/lang/String;

    .line 107
    aput-object v10, v4, v7

    .line 108
    .local v4, "inputEncodeUrl":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v10, v10, Lebo$1$1;->a:Lebo$1;

    iget-object v10, v10, Lebo$1;->a:Lebo;

    .line 12027
    iget-object v10, v10, Lebo;->c:Ljava/lang/String;

    .line 108
    aput-object v10, v5, v7

    .line 110
    .local v5, "outputEncodePath":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v7, v7, Lebo$1;->a:Lebo;

    .line 13027
    iget-object v7, v7, Lebo;->c:Ljava/lang/String;

    .line 13147
    if-nez v7, :cond_7

    .line 112
    :cond_3
    :goto_1
    const/4 v6, 0x1

    .line 113
    .local v6, "quality":I
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 115
    .local v8, "scaleFactor":D
    :try_start_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v7

    const-string/jumbo v10, "f_im_video_encode_update"

    invoke-virtual {v7, v10}, Lchx;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 116
    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v7, v7, Lebo$1;->a:Lebo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v10, v10, Lebo$1$1;->a:Lebo$1;

    iget-object v10, v10, Lebo$1;->a:Lebo;

    .line 14027
    iget-object v10, v10, Lebo;->d:Lcom/alibaba/wukong/im/Message;

    .line 15258
    iget-object v7, v7, Lebo;->b:Ljava/lang/String;

    invoke-static {v7}, Lebo;->a(Ljava/lang/String;)J

    move-result-wide v12

    .line 15259
    invoke-static {v10}, Lebo;->a(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v10

    .line 15260
    const-wide/32 v14, 0xc00000

    cmp-long v7, v12, v14

    if-gtz v7, :cond_4

    const-wide/16 v14, 0x3c

    cmp-long v7, v10, v14

    if-lez v7, :cond_8

    .line 15261
    :cond_4
    const/4 v6, 0x3

    .line 117
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v13, v7, Lebo$1;->a:Lebo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v7, v7, Lebo$1;->a:Lebo;

    .line 16027
    iget-object v10, v7, Lebo;->d:Lcom/alibaba/wukong/im/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17225
    if-nez v10, :cond_a

    .line 17226
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 125
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v7, v7, Lebo$1;->a:Lebo;

    .line 18027
    iget-wide v10, v7, Lebo;->g:D

    .line 125
    const-wide/16 v12, 0x0

    cmpl-double v7, v10, v12

    if-eqz v7, :cond_6

    .line 126
    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v7, v7, Lebo$1;->a:Lebo;

    .line 19027
    iget-wide v8, v7, Lebo;->g:D

    .line 128
    :cond_6
    const-string/jumbo v7, "im"

    const/4 v10, 0x0

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "encodeVideo, scaleFactor="

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 129
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, ", quality="

    aput-object v13, v11, v12

    const/4 v12, 0x3

    .line 130
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 128
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v7, v7, Lebo$1;->a:Lebo;

    invoke-static {v4, v5, v8, v9, v6}, Lcom/taobao/media/MediaEncoderMgr;->reEncodeMp4Files_createHandle([Ljava/lang/String;[Ljava/lang/String;DI)J

    move-result-wide v10

    .line 20027
    iput-wide v10, v7, Lebo;->a:J

    .line 135
    move-object/from16 v0, p0

    iget-object v7, v0, Lebo$1$1$1;->a:Lebo$1$1;

    iget-object v7, v7, Lebo$1$1;->a:Lebo$1;

    iget-object v7, v7, Lebo$1;->a:Lebo;

    .line 21027
    iget-wide v10, v7, Lebo;->a:J

    .line 135
    invoke-static {v10, v11}, Lcom/taobao/media/MediaEncoderMgr;->reEncodeMp4Files_start(J)I

    .line 136
    const-string/jumbo v7, "VideoEncodeManager"

    const-string/jumbo v10, "video encode start"

    .line 22018
    const-string/jumbo v11, "im"

    invoke-static {v7, v10, v11}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13150
    .end local v6    # "quality":I
    .end local v8    # "scaleFactor":D
    :cond_7
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13151
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 13152
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 15262
    .restart local v6    # "quality":I
    .restart local v8    # "scaleFactor":D
    :cond_8
    const-wide/32 v10, 0x800000

    cmp-long v7, v12, v10

    if-lez v7, :cond_9

    .line 15263
    const/4 v6, 0x2

    goto/16 :goto_2

    .line 15265
    :cond_9
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 17228
    :cond_a
    const/4 v11, 0x0

    .line 17229
    const/4 v7, 0x0

    .line 17230
    :try_start_1
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v10

    .line 17231
    instance-of v12, v10, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    if-eqz v12, :cond_c

    .line 17232
    move-object v0, v10

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    move-object v7, v0

    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getWidth()I

    move-result v11

    .line 17233
    check-cast v10, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getHeight()I

    move-result v7

    move v12, v11

    move v11, v7

    .line 17238
    :goto_4
    if-lez v12, :cond_b

    if-gtz v11, :cond_d

    .line 17239
    :cond_b
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    goto/16 :goto_3

    .line 17234
    :cond_c
    instance-of v12, v10, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;

    if-eqz v12, :cond_f

    .line 17235
    move-object v0, v10

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;

    move-object v7, v0

    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->getWidth()I

    move-result v11

    .line 17236
    check-cast v10, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;

    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->getHeight()I

    move-result v7

    move v12, v11

    move v11, v7

    goto :goto_4

    .line 17242
    :cond_d
    const/16 v10, 0x3c0

    .line 17243
    const/16 v7, 0x21c

    .line 17244
    iget-object v13, v13, Lebo;->b:Ljava/lang/String;

    invoke-static {v13}, Lebo;->a(Ljava/lang/String;)J

    move-result-wide v14

    .line 17245
    const-wide/32 v16, 0x3200000

    cmp-long v13, v14, v16

    if-lez v13, :cond_e

    .line 17247
    const/16 v10, 0x280

    .line 17248
    const/16 v7, 0x170

    .line 17251
    :cond_e
    int-to-double v14, v10

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-double v0, v10

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    int-to-double v0, v7

    move-wide/from16 v16, v0

    .line 17252
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-double v10, v7

    div-double v10, v16, v10

    .line 17251
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 17253
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    goto/16 :goto_3

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "im"

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "encode adjust failed, error="

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 121
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 120
    invoke-static {v7, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_f
    move v12, v11

    move v11, v7

    goto :goto_4
.end method
