.class final Lewq$1$1;
.super Ljava/lang/Object;
.source "TeleConfVideoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewq$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewq$1;


# direct methods
.method constructor <init>(Lewq$1;)V
    .locals 0
    .param p1, "this$1"    # Lewq$1;

    .prologue
    .line 119
    iput-object p1, p0, Lewq$1$1;->a:Lewq$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 123
    iget-object v0, p0, Lewq$1$1;->a:Lewq$1;

    iget-object v0, v0, Lewq$1;->b:Lewq;

    invoke-static {v0}, Lewq;->a(Lewq;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lewq$1$1;->a:Lewq$1;

    iget-object v0, v0, Lewq$1;->b:Lewq;

    invoke-static {v0}, Lewq;->a(Lewq;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 125
    iget-object v0, p0, Lewq$1$1;->a:Lewq$1;

    iget-object v0, v0, Lewq$1;->b:Lewq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lewq;->a(Lewq;Ljava/util/Timer;)Ljava/util/Timer;

    .line 127
    :cond_0
    return-void
.end method
