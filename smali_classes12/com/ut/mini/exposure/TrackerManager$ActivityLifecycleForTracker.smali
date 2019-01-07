.class Lcom/ut/mini/exposure/TrackerManager$ActivityLifecycleForTracker;
.super Ljava/lang/Object;
.source "TrackerManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/exposure/TrackerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityLifecycleForTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/exposure/TrackerManager;


# direct methods
.method private constructor <init>(Lcom/ut/mini/exposure/TrackerManager;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ut/mini/exposure/TrackerManager$ActivityLifecycleForTracker;->this$0:Lcom/ut/mini/exposure/TrackerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ut/mini/exposure/TrackerManager;Lcom/ut/mini/exposure/TrackerManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ut/mini/exposure/TrackerManager;
    .param p2, "x1"    # Lcom/ut/mini/exposure/TrackerManager$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/ut/mini/exposure/TrackerManager$ActivityLifecycleForTracker;-><init>(Lcom/ut/mini/exposure/TrackerManager;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 86
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 180
    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/app/TabActivity;

    if-nez v2, :cond_0

    instance-of v2, p1, Landroid/app/ActivityGroup;

    if-eqz v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string/jumbo v2, "com.taobao.weex.WXActivity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ut/mini/exposure/TrackerManager$ActivityLifecycleForTracker;->this$0:Lcom/ut/mini/exposure/TrackerManager;

    invoke-static {v2}, Lcom/ut/mini/exposure/TrackerManager;->access$100(Lcom/ut/mini/exposure/TrackerManager;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    :cond_2
    const v2, 0x1020002

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 191
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 194
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/ut/mini/exposure/TrackerFrameLayout;

    if-eqz v2, :cond_0

    .line 195
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v0    # "container":Landroid/view/ViewGroup;
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 172
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 96
    if-eqz p1, :cond_0

    instance-of v5, p1, Landroid/app/TabActivity;

    if-nez v5, :cond_0

    instance-of v5, p1, Landroid/app/ActivityGroup;

    if-eqz v5, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string/jumbo v5, "com.taobao.weex.WXActivity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/ut/mini/exposure/TrackerManager$ActivityLifecycleForTracker;->this$0:Lcom/ut/mini/exposure/TrackerManager;

    invoke-static {v5}, Lcom/ut/mini/exposure/TrackerManager;->access$100(Lcom/ut/mini/exposure/TrackerManager;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    :cond_2
    sget-boolean v5, Lcom/ut/mini/exposure/ExposureConfigMgr;->trackerExposureOpen:Z

    if-eqz v5, :cond_0

    .line 108
    const v5, 0x1020002

    :try_start_0
    invoke-virtual {p1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 109
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 113
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 114
    .local v2, "root":Landroid/view/View;
    instance-of v5, v2, Lcom/ut/mini/exposure/TrackerFrameLayout;

    if-eqz v5, :cond_3

    .line 115
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "no attachTrackerFrameLayout "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v0    # "container":Landroid/view/ViewGroup;
    .end local v2    # "root":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v10, v1, v5}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "container":Landroid/view/ViewGroup;
    .restart local v2    # "root":Landroid/view/View;
    :cond_3
    :try_start_1
    new-instance v3, Lcom/ut/mini/exposure/TrackerFrameLayout;

    invoke-direct {v3, p1}, Lcom/ut/mini/exposure/TrackerFrameLayout;-><init>(Landroid/content/Context;)V

    .line 118
    .local v3, "trackerFrameLayout":Lcom/ut/mini/exposure/TrackerFrameLayout;
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 119
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 120
    .local v4, "view":Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 121
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ut/mini/exposure/TrackerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 123
    .end local v4    # "view":Landroid/view/View;
    :cond_4
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 204
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 176
    return-void
.end method
