.class final Lcqp$3$1;
.super Ljava/util/TimerTask;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcqp$3;->notifyReEncodeFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcqp$3;


# direct methods
.method constructor <init>(Lcqp$3;)V
    .locals 0
    .param p1, "this$1"    # Lcqp$3;

    .prologue
    .line 173
    iput-object p1, p0, Lcqp$3$1;->a:Lcqp$3;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    iget-object v1, p0, Lcqp$3$1;->a:Lcqp$3;

    iget-object v1, v1, Lcqp$3;->a:Lcqp;

    .line 1021
    iget-wide v2, v1, Lcqp;->a:J

    .line 176
    invoke-static {v2, v3}, Lcom/taobao/media/MediaEncoderMgr;->reEncodeMp4Files_finish(J)I

    move-result v1

    if-gez v1, :cond_1

    .line 177
    const-string/jumbo v1, "VideoEncoder"

    const-string/jumbo v2, "video encode error"

    .line 2018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcqp$3$1;->a:Lcqp$3;

    iget-object v1, v1, Lcqp$3;->a:Lcqp;

    .line 2021
    iget-object v1, v1, Lcqp;->d:Lcma;

    .line 178
    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcqp$3$1;->a:Lcqp$3;

    iget-object v1, v1, Lcqp$3;->a:Lcqp;

    .line 3021
    iget-object v1, v1, Lcqp;->d:Lcma;

    .line 179
    const-string/jumbo v2, "404"

    const-string/jumbo v3, "video encode error"

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string/jumbo v1, "VideoEncoder"

    const-string/jumbo v2, "video encode finish"

    .line 4018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcqp$3$1;->a:Lcqp$3;

    iget-object v1, v1, Lcqp$3;->a:Lcqp;

    .line 4021
    iget-object v1, v1, Lcqp;->c:Ljava/lang/String;

    .line 183
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lcqp$3$1;->a:Lcqp$3;

    iget-object v1, v1, Lcqp$3;->a:Lcqp;

    .line 5021
    iget-object v1, v1, Lcqp;->d:Lcma;

    .line 184
    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcqp$3$1;->a:Lcqp$3;

    iget-object v1, v1, Lcqp$3;->a:Lcqp;

    .line 6021
    iget-object v2, v1, Lcqp;->d:Lcma;

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcqp$3$1;->a:Lcqp$3;

    iget-object v1, v1, Lcqp$3;->a:Lcqp;

    .line 7021
    iget-object v1, v1, Lcqp;->c:Ljava/lang/String;

    .line 186
    :goto_1
    invoke-interface {v2, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcqp$3$1;->a:Lcqp$3;

    iget-object v1, v1, Lcqp$3;->a:Lcqp;

    .line 8021
    iget-object v1, v1, Lcqp;->b:Ljava/lang/String;

    goto :goto_1
.end method
