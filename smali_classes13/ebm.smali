.class public final Lebm;
.super Ljava/lang/Object;
.source "VideoCompressImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/VideoCompress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lebm;Ljava/lang/String;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)V
    .locals 0
    .param p0, "x0"    # Lebm;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/wukong/Callback;
    .param p3, "x3"    # Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lebm;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)V

    return-void
.end method

.method static synthetic a(Lebm;Ljava/lang/String;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;)V
    .locals 0
    .param p0, "x0"    # Lebm;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/wukong/Callback;
    .param p3, "x3"    # Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lebm;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)V
    .locals 16
    .param p1, "output"    # Ljava/lang/String;
    .param p3, "commonVideoContent"    # Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;>;"
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v14, "file":Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 149
    .local v4, "fileSize":J
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 153
    :cond_0
    const-wide/32 v2, 0x1400000

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    .line 2125
    if-eqz p2, :cond_1

    .line 2126
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lebm$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lebm$5;-><init>(Lebm;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    invoke-static/range {p1 .. p1}, Lebj;->d(Ljava/lang/String;)Lebq;

    move-result-object v15

    .line 160
    .local v15, "videoInfo":Lebq;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 162
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->fileName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mp4"

    iget-wide v8, v15, Lebq;->a:J

    iget v10, v15, Lebq;->b:I

    iget v11, v15, Lebq;->c:I

    .line 163
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->picUrl()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v3, p1

    .line 161
    invoke-interface/range {v2 .. v12}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCommonVideoContent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    move-result-object v13

    .line 164
    .local v13, "commonVideoContentResult":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    if-eqz p2, :cond_1

    .line 165
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lebm$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1, v13}, Lebm$7;-><init>(Lebm;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;)V
    .locals 16
    .param p1, "output"    # Ljava/lang/String;
    .param p3, "commonVideoContent"    # Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;>;"
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v14, "file":Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 178
    .local v4, "fileSize":J
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 182
    :cond_0
    const-wide/32 v2, 0x1400000

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    .line 2136
    if-eqz p2, :cond_1

    .line 2137
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lebm$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lebm$6;-><init>(Lebm;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    invoke-static/range {p1 .. p1}, Lebj;->d(Ljava/lang/String;)Lebq;

    move-result-object v15

    .line 189
    .local v15, "videoInfo":Lebq;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 191
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->fileName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mp4"

    iget-wide v8, v15, Lebq;->a:J

    iget v10, v15, Lebq;->b:I

    iget v11, v15, Lebq;->c:I

    .line 192
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->picUrl()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v3, p1

    .line 190
    invoke-interface/range {v2 .. v12}, Lcom/alibaba/wukong/im/MessageBuilder;->buildEncryptCommonVideoContent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;

    move-result-object v13

    .line 193
    .local v13, "commonVideoContentResult":Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    if-eqz p2, :cond_1

    .line 194
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lebm$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1, v13}, Lebm$8;-><init>(Lebm;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public final compress(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    if-eqz v3, :cond_0

    .line 25
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .line 26
    .local v0, "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lebj;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 27
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->url()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->fileName()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-static {v3, v4}, Lebj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->fileName()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->url()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {v3, v4}, Lebj;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2, v0}, Lebm;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)V

    .line 71
    .end local v0    # "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    :cond_0
    :goto_0
    return-void

    .line 34
    .restart local v0    # "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    :cond_1
    invoke-static {}, Lebp;->a()Lebp;

    move-result-object v3

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lebp;->a(J)Lebo;

    move-result-object v2

    .line 35
    .local v2, "videoEncode":Lebo;
    new-instance v1, Lebm$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lebm$1;-><init>(Lebm;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)V

    .line 55
    .local v1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 56
    new-instance v2, Lebo;

    .end local v2    # "videoEncode":Lebo;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->url()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1}, Lebo;-><init>(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcma;)V

    .line 57
    .restart local v2    # "videoEncode":Lebo;
    invoke-virtual {v2}, Lebo;->a()V

    .line 61
    :goto_1
    invoke-static {}, Lebp;->a()Lebp;

    move-result-object v3

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Lebp;->a(JLebo;)V

    goto :goto_0

    .line 1063
    :cond_2
    iput-object v1, v2, Lebo;->e:Lcma;

    goto :goto_1

    .line 63
    .end local v1    # "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    .end local v2    # "videoEncode":Lebo;
    :cond_3
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lebm$2;

    invoke-direct {v4, p0, p2, v0}, Lebm$2;-><init>(Lebm;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final compressEncryptVideo(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;

    if-eqz v3, :cond_0

    .line 76
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;

    .line 77
    .local v0, "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lebj;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->url()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->fileName()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v3, v4}, Lebj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->fileName()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->url()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static {v3, v4}, Lebj;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2, v0}, Lebm;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;)V

    .line 122
    .end local v0    # "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    :cond_0
    :goto_0
    return-void

    .line 85
    .restart local v0    # "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    :cond_1
    invoke-static {}, Lebp;->a()Lebp;

    move-result-object v3

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lebp;->a(J)Lebo;

    move-result-object v2

    .line 86
    .local v2, "videoEncode":Lebo;
    new-instance v1, Lebm$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lebm$3;-><init>(Lebm;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;)V

    .line 106
    .local v1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 107
    new-instance v2, Lebo;

    .end local v2    # "videoEncode":Lebo;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->url()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1}, Lebo;-><init>(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcma;)V

    .line 108
    .restart local v2    # "videoEncode":Lebo;
    invoke-virtual {v2}, Lebo;->a()V

    .line 112
    :goto_1
    invoke-static {}, Lebp;->a()Lebp;

    move-result-object v3

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Lebp;->a(JLebo;)V

    goto :goto_0

    .line 2063
    :cond_2
    iput-object v1, v2, Lebo;->e:Lcma;

    goto :goto_1

    .line 114
    .end local v1    # "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    .end local v2    # "videoEncode":Lebo;
    :cond_3
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lebm$4;

    invoke-direct {v4, p0, p2, v0}, Lebm$4;-><init>(Lebm;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
