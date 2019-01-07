.class final Ldjg$2;
.super Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;
.source "ConversationChangeMaid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjg;


# direct methods
.method constructor <init>(Ldjg;)V
    .locals 0
    .param p1, "this$0"    # Ldjg;

    .prologue
    .line 74
    iput-object p1, p0, Ldjg$2;->a:Ldjg;

    invoke-direct {p0}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 78
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Ldjg$2;->a:Ldjg;

    invoke-static {v0}, Ldjg;->b(Ldjg;)Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 114
    iget-object v0, p0, Ldjg$2;->a:Ldjg;

    invoke-static {v0}, Ldjg;->d(Ldjg;)Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Ldjg$2;->a:Ldjg;

    invoke-static {v0}, Ldjg;->d(Ldjg;)Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 117
    :cond_0
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Ldjg$2;->a:Ldjg;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 118
    invoke-static {p1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Ldjg$2;->a:Ldjg;

    invoke-static {v1}, Ldjg;->e(Ldjg;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 119
    iget-object v0, p0, Ldjg$2;->a:Ldjg;

    invoke-static {v0, v2}, Ldjg;->a(Ldjg;Landroid/app/Activity;)Landroid/app/Activity;

    .line 120
    iget-object v0, p0, Ldjg$2;->a:Ldjg;

    invoke-static {v0, v2}, Ldjg;->a(Ldjg;Landroid/widget/AbsListView;)Landroid/widget/AbsListView;

    .line 122
    :cond_1
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Ldjg$2;->a:Ldjg;

    invoke-static {v0}, Ldjg;->b(Ldjg;)Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 89
    iget-object v0, p0, Ldjg$2;->a:Ldjg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldjg;->a(Ldjg;Z)Z

    .line 90
    iget-object v0, p0, Ldjg$2;->a:Ldjg;

    invoke-static {v0}, Ldjg;->c(Ldjg;)V

    .line 92
    :cond_0
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 109
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Ldjg$2;->a:Ldjg;

    invoke-static {v0}, Ldjg;->b(Ldjg;)Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Ldjg$2;->a:Ldjg;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldjg;->a(Ldjg;Z)Z

    .line 104
    :cond_0
    return-void
.end method
