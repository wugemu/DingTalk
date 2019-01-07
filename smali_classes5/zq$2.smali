.class final Lzq$2;
.super Ljava/lang/Object;
.source "VideoHelper.java"

# interfaces
.implements Lcom/taobao/media/MediaEncoder$OnReEncodeFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzq;


# direct methods
.method constructor <init>(Lzq;)V
    .locals 0
    .param p1, "this$0"    # Lzq;

    .prologue
    .line 152
    iput-object p1, p0, Lzq$2;->a:Lzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyReEncodeFinish()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lzq$2;->a:Lzq;

    .line 1022
    iget-boolean v0, v0, Lzq;->d:Z

    .line 155
    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lzq$2;->a:Lzq;

    .line 2022
    const/4 v1, 0x1

    iput-boolean v1, v0, Lzq;->d:Z

    .line 157
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lzq$2$1;

    invoke-direct {v1, p0}, Lzq$2$1;-><init>(Lzq$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 175
    :cond_0
    return-void
.end method
