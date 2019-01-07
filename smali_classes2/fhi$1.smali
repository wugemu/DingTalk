.class final Lfhi$1;
.super Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;
.source "EnterpriseSquareEntranceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfhi;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lfhi;


# direct methods
.method constructor <init>(Lfhi;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lfhi;

    .prologue
    .line 42
    iput-object p1, p0, Lfhi$1;->b:Lfhi;

    iput-object p2, p0, Lfhi$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "a"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lfhi$1;->a:Landroid/app/Activity;

    if-ne p1, v0, :cond_1

    .line 64
    iget-object v1, p0, Lfhi$1;->b:Lfhi;

    .line 1119
    iget-object v0, v1, Lfhi;->b:Lifn;

    if-eqz v0, :cond_0

    .line 1120
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    iget-object v2, v1, Lfhi;->b:Lifn;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/settings/CloudSettingService;->b(Lifn;)V

    .line 1121
    iput-object v3, v1, Lfhi;->b:Lifn;

    .line 1123
    :cond_0
    iget-object v0, v1, Lfhi;->c:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    if-eqz v0, :cond_1

    .line 1124
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iget-object v2, v1, Lfhi;->c:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 1125
    iput-object v3, v1, Lfhi;->c:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    .line 66
    :cond_1
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 53
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 50
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 47
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 56
    return-void
.end method
