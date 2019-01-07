.class final Lbxt$1;
.super Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;
.source "VideoViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxt;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxt;


# direct methods
.method constructor <init>(Lbxt;)V
    .locals 0
    .param p1, "this$0"    # Lbxt;

    .prologue
    .line 69
    iput-object p1, p0, Lbxt$1;->a:Lbxt;

    invoke-direct {p0}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Lbxt$1;->a:Lbxt;

    invoke-static {v0}, Lbxt;->a(Lbxt;)Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 75
    iget-object v0, p0, Lbxt$1;->a:Lbxt;

    invoke-static {v0}, Lbxt;->b(Lbxt;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbxt$1;->a:Lbxt;

    invoke-static {v0}, Lbxt;->c(Lbxt;)Ljon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lbxt$1;->a:Lbxt;

    invoke-static {v0}, Lbxt;->c(Lbxt;)Ljon;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljon;->a(Z)V

    .line 79
    :cond_0
    return-void
.end method
