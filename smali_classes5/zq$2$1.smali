.class final Lzq$2$1;
.super Ljava/util/TimerTask;
.source "VideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzq$2;->notifyReEncodeFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzq$2;


# direct methods
.method constructor <init>(Lzq$2;)V
    .locals 0
    .param p1, "this$1"    # Lzq$2;

    .prologue
    .line 157
    iput-object p1, p0, Lzq$2$1;->a:Lzq$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 159
    iget-object v1, p0, Lzq$2$1;->a:Lzq$2;

    iget-object v1, v1, Lzq$2;->a:Lzq;

    .line 1022
    iget-wide v2, v1, Lzq;->e:J

    .line 159
    invoke-static {v2, v3}, Lcom/taobao/media/MediaEncoderMgr;->reEncodeMp4Files_finish(J)I

    move-result v1

    if-gez v1, :cond_1

    .line 160
    const-string/jumbo v1, "VideoHelper"

    const-string/jumbo v2, "video encode error"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lzq$2$1;->a:Lzq$2;

    iget-object v1, v1, Lzq$2;->a:Lzq;

    .line 2022
    iget-object v1, v1, Lzq;->f:Lcma;

    .line 161
    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lzq$2$1;->a:Lzq$2;

    iget-object v1, v1, Lzq$2;->a:Lzq;

    .line 3022
    iget-object v1, v1, Lzq;->f:Lcma;

    .line 162
    const-string/jumbo v2, "2"

    const-string/jumbo v3, "video encode error"

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string/jumbo v1, "VideoHelper"

    const-string/jumbo v2, "video encode finish"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lzq$2$1;->a:Lzq$2;

    iget-object v1, v1, Lzq$2;->a:Lzq;

    .line 4022
    iget-object v1, v1, Lzq;->g:Ljava/lang/String;

    .line 166
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lzq$2$1;->a:Lzq$2;

    iget-object v1, v1, Lzq$2;->a:Lzq;

    .line 5022
    iget-object v1, v1, Lzq;->f:Lcma;

    .line 167
    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lzq$2$1;->a:Lzq$2;

    iget-object v1, v1, Lzq$2;->a:Lzq;

    .line 6022
    iget-object v2, v1, Lzq;->f:Lcma;

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lzq$2$1;->a:Lzq$2;

    iget-object v1, v1, Lzq$2;->a:Lzq;

    .line 7022
    iget-object v1, v1, Lzq;->g:Ljava/lang/String;

    .line 168
    :goto_1
    invoke-interface {v2, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v1, p0, Lzq$2$1;->a:Lzq$2;

    iget-object v1, v1, Lzq$2;->a:Lzq;

    .line 8022
    iget-object v1, v1, Lzq;->a:Ljava/lang/String;

    goto :goto_1
.end method
