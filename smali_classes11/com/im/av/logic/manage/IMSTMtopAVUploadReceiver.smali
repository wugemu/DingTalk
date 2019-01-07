.class public Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IMSTMtopAVUploadReceiver.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    const-string/jumbo v0, "UploadReceiver"

    iput-object v0, p0, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    const-string/jumbo v4, "videoPath"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 30
    .local v16, "videoPath":Ljava/lang/String;
    const-string/jumbo v4, "framePicPath"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 31
    .local v14, "framePicPath":Ljava/lang/String;
    const-string/jumbo v4, "uploadID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 33
    :cond_0
    invoke-static {}, Lixy;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@sv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    const-string/jumbo v4, "http"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "http"

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 37
    :cond_3
    invoke-static {}, Lixy;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@sv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 41
    :cond_4
    new-instance v15, Ljava/io/File;

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v15, "videoFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, "framePicFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_6

    .line 44
    :cond_5
    invoke-static {}, Lixy;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@sv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 47
    :cond_6
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 48
    .local v12, "videoSize":J
    invoke-static {}, Lixy;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@sv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "videoSize ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 51
    .local v8, "imgSize":J
    invoke-static {}, Lixy;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@sv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "imgSize ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    :cond_8
    add-long v10, v12, v8

    .line 54
    .local v10, "totalSize":J
    long-to-float v4, v8

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    long-to-float v5, v10

    div-float/2addr v4, v5

    float-to-int v6, v4

    .line 56
    .local v6, "imageUploadFinishedPercent":I
    new-instance v3, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver$1;

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p1

    invoke-direct/range {v3 .. v13}, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver$1;-><init>(Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver;Landroid/content/Intent;ILandroid/content/Context;JJJ)V

    .line 125
    .local v3, "uploadListener":Lixz;
    invoke-static {}, Lixy;->a()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@sv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start upload "

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_9
    invoke-static {}, Liya;->a()Liya;

    move-result-object v4

    .line 1118
    iget-object v5, v4, Liya;->b:Landroid/os/Handler;

    if-eqz v5, :cond_1

    iget-object v5, v4, Liya;->a:Ljkk;

    if-eqz v5, :cond_1

    .line 1124
    iget-object v5, v4, Liya;->a:Ljkk;

    .line 2064
    iget-object v5, v5, Ljkk;->a:Landroid/os/Handler;

    .line 1124
    new-instance v7, Liya$2;

    move-object/from16 v0, v16

    invoke-direct {v7, v4, v14, v0, v3}, Liya$2;-><init>(Liya;Ljava/lang/String;Ljava/lang/String;Lixz;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 125
    :cond_a
    const-string/jumbo v4, "extras null"

    goto :goto_1
.end method
