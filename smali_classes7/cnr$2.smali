.class final Lcnr$2;
.super Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;
.source "ExposureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcnr;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcnr;


# direct methods
.method constructor <init>(Lcnr;)V
    .locals 0
    .param p1, "this$0"    # Lcnr;

    .prologue
    .line 52
    iput-object p1, p0, Lcnr$2;->a:Lcnr;

    invoke-direct {p0}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lcnr$2;->a:Lcnr;

    invoke-static {v0}, Lcnr;->a(Lcnr;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 57
    iget-object v0, p0, Lcnr$2;->a:Lcnr;

    invoke-static {v0}, Lcnr;->b(Lcnr;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 58
    return-void
.end method
