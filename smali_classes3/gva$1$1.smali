.class final Lgva$1$1;
.super Ljava/lang/Object;
.source "VideoPlayerUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgva$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgva$1;


# direct methods
.method constructor <init>(Lgva$1;)V
    .locals 0
    .param p1, "this$0"    # Lgva$1;

    .prologue
    .line 31
    iput-object p1, p0, Lgva$1$1;->a:Lgva$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 34
    iget-object v0, p0, Lgva$1$1;->a:Lgva$1;

    iget-object v0, v0, Lgva$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lgva$1$1;->a:Lgva$1;

    iget-object v0, v0, Lgva$1;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-void
.end method
