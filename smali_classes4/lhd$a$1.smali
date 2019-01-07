.class final Llhd$a$1;
.super Ljava/lang/Object;
.source "HandlerScheduler.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llhd$a;->a(Llhf;JLjava/util/concurrent/TimeUnit;)Llgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/schedulers/ScheduledAction;

.field final synthetic b:Llhd$a;


# direct methods
.method constructor <init>(Llhd$a;Lrx/internal/schedulers/ScheduledAction;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Llhd$a$1;->b:Llhd$a;

    iput-object p2, p0, Llhd$a$1;->a:Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Llhd$a$1;->b:Llhd$a;

    .line 1046
    iget-object v0, v0, Llhd$a;->a:Landroid/os/Handler;

    .line 83
    iget-object v1, p0, Llhd$a$1;->a:Lrx/internal/schedulers/ScheduledAction;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method
