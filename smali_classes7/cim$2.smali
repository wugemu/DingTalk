.class final Lcim$2;
.super Ljava/lang/Object;
.source "DebugLocationMonitor.java"

# interfaces
.implements Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcim;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcim;


# direct methods
.method constructor <init>(Lcim;)V
    .locals 0
    .param p1, "this$0"    # Lcim;

    .prologue
    .line 33
    iput-object p1, p0, Lcim$2;->a:Lcim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterBackground()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 36
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcim$2;->a:Lcim;

    .line 1014
    iget-object v1, v1, Lcim;->d:Ljava/lang/Runnable;

    .line 36
    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcim$2;->a:Lcim;

    .line 2014
    iget-object v1, v1, Lcim;->d:Ljava/lang/Runnable;

    .line 39
    iget-object v2, p0, Lcim$2;->a:Lcim;

    .line 3014
    iget-wide v2, v2, Lcim;->a:J

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    return-void
.end method

.method public final onEnterForeground()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 44
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcim$2;->a:Lcim;

    .line 4014
    iget-object v1, v1, Lcim;->d:Ljava/lang/Runnable;

    .line 44
    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    iget-object v0, p0, Lcim$2;->a:Lcim;

    const/4 v1, 0x1

    .line 5014
    iput-boolean v1, v0, Lcim;->c:Z

    .line 47
    return-void
.end method
