.class final Ljkl$a;
.super Ljava/lang/Object;
.source "TaoAudioRecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljkl;


# direct methods
.method constructor <init>(Ljkl;)V
    .locals 0
    .param p1, "this$0"    # Ljkl;

    .prologue
    .line 86
    iput-object p1, p0, Ljkl$a;->a:Ljkl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v14, 0x1

    const/4 v10, 0x0

    .line 89
    iget-object v11, p0, Ljkl$a;->a:Ljkl;

    .line 1099
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->InputSamples()J

    move-result-wide v0

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v12, v0, 0x8

    .line 1101
    new-array v13, v12, [B

    .line 1102
    new-array v1, v12, [B

    move v0, v10

    .line 1103
    :goto_0
    if-ge v0, v12, :cond_0

    .line 1104
    aput-byte v10, v1, v0

    .line 1103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1106
    :cond_0
    const-wide/16 v2, 0x0

    move-wide v8, v2

    .line 1107
    :goto_1
    iget-boolean v0, v11, Ljkl;->b:Z

    if-ne v0, v14, :cond_1

    .line 1108
    iget-object v0, v11, Ljkl;->a:Landroid/media/AudioRecord;

    if-nez v0, :cond_3

    .line 1109
    iput-boolean v10, v11, Ljkl;->b:Z

    .line 1136
    :cond_1
    :goto_2
    iget-object v0, v11, Ljkl;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    iget-boolean v0, v11, Ljkl;->b:Z

    if-nez v0, :cond_2

    .line 1138
    :try_start_0
    iget-object v0, v11, Ljkl;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 1139
    iget-object v0, v11, Ljkl;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :goto_3
    const/4 v0, 0x0

    iput-object v0, v11, Ljkl;->a:Landroid/media/AudioRecord;

    .line 1146
    :cond_2
    iput-boolean v10, v11, Ljkl;->e:Z

    .line 1147
    iput-boolean v14, v11, Ljkl;->d:Z

    .line 90
    return-void

    .line 1113
    :cond_3
    iget-object v0, v11, Ljkl;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0, v13, v10, v12}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 1114
    if-gtz v0, :cond_4

    .line 1115
    iput-boolean v10, v11, Ljkl;->b:Z

    goto :goto_2

    .line 1119
    :cond_4
    iput-boolean v14, v11, Ljkl;->e:Z

    .line 1120
    div-int/lit8 v3, v0, 0x2

    .line 1122
    const-wide/16 v4, 0x5

    cmp-long v0, v8, v4

    if-gez v0, :cond_6

    .line 1123
    iget-object v0, v11, Ljkl;->c:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 2062
    iget-object v0, v0, Lcom/taobao/av/logic/media/TaoMediaRecorder;->h:Ljkn;

    .line 1123
    if-eqz v0, :cond_5

    if-lez v12, :cond_5

    .line 1124
    iget-object v0, v11, Ljkl;->c:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 3062
    iget-object v0, v0, Lcom/taobao/av/logic/media/TaoMediaRecorder;->h:Ljkn;

    .line 1124
    int-to-long v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljkn;->a([BJJ)I

    .line 1132
    :cond_5
    :goto_4
    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    move-wide v8, v2

    goto :goto_1

    .line 1128
    :cond_6
    iget-object v0, v11, Ljkl;->c:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 4062
    iget-object v0, v0, Lcom/taobao/av/logic/media/TaoMediaRecorder;->h:Ljkn;

    .line 1128
    if-eqz v0, :cond_5

    if-lez v12, :cond_5

    .line 1129
    iget-object v0, v11, Ljkl;->c:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 5062
    iget-object v2, v0, Lcom/taobao/av/logic/media/TaoMediaRecorder;->h:Ljkn;

    .line 1129
    int-to-long v4, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v3, v13

    invoke-virtual/range {v2 .. v7}, Ljkn;->a([BJJ)I

    goto :goto_4

    .line 1140
    :catch_0
    move-exception v0

    .line 1141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
