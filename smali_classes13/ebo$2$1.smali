.class final Lebo$2$1;
.super Ljava/util/TimerTask;
.source "VideoEncode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lebo$2;->notifyReEncodeFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lebo$2;


# direct methods
.method constructor <init>(Lebo$2;)V
    .locals 0
    .param p1, "this$1"    # Lebo$2;

    .prologue
    .line 193
    iput-object p1, p0, Lebo$2$1;->a:Lebo$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    iget-object v1, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v1, v1, Lebo$2;->a:Lebo;

    .line 1027
    iget-wide v2, v1, Lebo;->a:J

    .line 196
    invoke-static {v2, v3}, Lcom/taobao/media/MediaEncoderMgr;->reEncodeMp4Files_finish(J)I

    move-result v1

    if-gez v1, :cond_1

    .line 197
    const-string/jumbo v1, "VideoEncodeManager"

    const-string/jumbo v2, "video encode error"

    .line 2018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v1, v1, Lebo$2;->a:Lebo;

    .line 2027
    iget-object v1, v1, Lebo;->e:Lcma;

    .line 198
    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v1, v1, Lebo$2;->a:Lebo;

    .line 3027
    iget-object v1, v1, Lebo;->e:Lcma;

    .line 199
    const-string/jumbo v2, "404"

    const-string/jumbo v3, "video encode error"

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const-string/jumbo v1, "VideoEncodeManager"

    const-string/jumbo v2, "video encode finish"

    .line 4018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v1, v1, Lebo$2;->a:Lebo;

    .line 4027
    iget-object v1, v1, Lebo;->c:Ljava/lang/String;

    .line 203
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v1, v1, Lebo$2;->a:Lebo;

    .line 5027
    iget-object v1, v1, Lebo;->e:Lcma;

    .line 204
    if-eqz v1, :cond_2

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v1, v1, Lebo$2;->a:Lebo;

    iget-object v1, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v1, v1, Lebo$2;->a:Lebo;

    .line 6027
    iget-object v1, v1, Lebo;->c:Ljava/lang/String;

    .line 7027
    invoke-static {v1}, Lebo;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 205
    iget-object v1, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v1, v1, Lebo$2;->a:Lebo;

    iget-object v1, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v1, v1, Lebo$2;->a:Lebo;

    .line 8027
    iget-object v1, v1, Lebo;->b:Ljava/lang/String;

    .line 9027
    invoke-static {v1}, Lebo;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 205
    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    .line 207
    iget-object v1, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v1, v1, Lebo$2;->a:Lebo;

    .line 10027
    iget-object v1, v1, Lebo;->e:Lcma;

    .line 207
    iget-object v2, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v2, v2, Lebo$2;->a:Lebo;

    .line 11027
    iget-object v2, v2, Lebo;->c:Ljava/lang/String;

    .line 207
    invoke-interface {v1, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 213
    :cond_2
    :goto_1
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "encodeVideo, input size="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v6, v6, Lebo$2;->a:Lebo;

    .line 14027
    iget-object v6, v6, Lebo;->b:Ljava/lang/String;

    .line 214
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", out size="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, ", duration="

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v5, v5, Lebo$2;->a:Lebo;

    iget-object v5, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v5, v5, Lebo$2;->a:Lebo;

    .line 15027
    iget-object v5, v5, Lebo;->d:Lcom/alibaba/wukong/im/Message;

    .line 16027
    invoke-static {v5}, Lebo;->a(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v6

    .line 215
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 213
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_3
    iget-object v1, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v1, v1, Lebo$2;->a:Lebo;

    .line 12027
    iget-object v1, v1, Lebo;->e:Lcma;

    .line 210
    iget-object v2, p0, Lebo$2$1;->a:Lebo$2;

    iget-object v2, v2, Lebo$2;->a:Lebo;

    .line 13027
    iget-object v2, v2, Lebo;->b:Ljava/lang/String;

    .line 210
    invoke-interface {v1, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_1
.end method
