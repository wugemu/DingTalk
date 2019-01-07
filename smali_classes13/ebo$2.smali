.class final Lebo$2;
.super Ljava/lang/Object;
.source "VideoEncode.java"

# interfaces
.implements Lcom/taobao/media/MediaEncoder$OnReEncodeFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lebo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lebo;


# direct methods
.method constructor <init>(Lebo;)V
    .locals 0
    .param p1, "this$0"    # Lebo;

    .prologue
    .line 187
    iput-object p1, p0, Lebo$2;->a:Lebo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyReEncodeFinish()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    iget-object v0, p0, Lebo$2;->a:Lebo;

    .line 1027
    iget-boolean v0, v0, Lebo;->f:Z

    .line 190
    if-nez v0, :cond_0

    .line 191
    invoke-static {}, Lebp;->a()Lebp;

    move-result-object v2

    iget-object v0, p0, Lebo$2;->a:Lebo;

    .line 2027
    iget-object v0, v0, Lebo;->d:Lcom/alibaba/wukong/im/Message;

    .line 191
    if-eqz v0, :cond_1

    iget-object v0, p0, Lebo$2;->a:Lebo;

    .line 3027
    iget-object v0, v0, Lebo;->d:Lcom/alibaba/wukong/im/Message;

    .line 191
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lebp;->b(J)V

    .line 192
    iget-object v0, p0, Lebo$2;->a:Lebo;

    .line 6027
    const/4 v1, 0x1

    iput-boolean v1, v0, Lebo;->f:Z

    .line 193
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lebo$2$1;

    invoke-direct {v1, p0}, Lebo$2$1;-><init>(Lebo$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 220
    :cond_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lebo$2;->a:Lebo;

    .line 4027
    iget-object v0, v0, Lebo;->b:Ljava/lang/String;

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lebo$2;->a:Lebo;

    .line 5027
    iget-object v0, v0, Lebo;->b:Ljava/lang/String;

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
