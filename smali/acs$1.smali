.class final Lacs$1;
.super Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;
.source "MailNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacs;


# direct methods
.method constructor <init>(Lacs;)V
    .locals 0
    .param p1, "this$0"    # Lacs;

    .prologue
    .line 129
    iput-object p1, p0, Lacs$1;->a:Lacs;

    invoke-direct {p0}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lacs$1;->a:Lacs;

    invoke-static {v0}, Lacs;->a(Lacs;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lacs$1;->a:Lacs;

    invoke-static {v0}, Lacs;->a(Lacs;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 138
    :cond_1
    iget-object v0, p0, Lacs$1;->a:Lacs;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lacs;->a(Lacs;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 143
    iget-object v0, p0, Lacs$1;->a:Lacs;

    invoke-static {v0}, Lacs;->a(Lacs;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacs$1;->a:Lacs;

    invoke-static {v0}, Lacs;->a(Lacs;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 144
    iget-object v0, p0, Lacs$1;->a:Lacs;

    invoke-static {v0}, Lacs;->a(Lacs;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 145
    iget-object v0, p0, Lacs$1;->a:Lacs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lacs;->a(Lacs;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 147
    :cond_0
    return-void
.end method
