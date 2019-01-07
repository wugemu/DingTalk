.class final Lcmv$2;
.super Ljava/lang/Object;
.source "DDPopupWindowManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmv;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcmv;


# direct methods
.method constructor <init>(Lcmv;)V
    .locals 0
    .param p1, "this$0"    # Lcmv;

    .prologue
    .line 101
    iput-object p1, p0, Lcmv$2;->a:Lcmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 153
    iget-object v0, p0, Lcmv$2;->a:Lcmv;

    .line 10026
    iget-object v0, v0, Lcmv;->e:Ljava/util/Map;

    .line 153
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcmv$2;->a:Lcmv;

    .line 11026
    iget-object v0, v0, Lcmv;->e:Ljava/util/Map;

    .line 154
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcmv$2;->a:Lcmv;

    .line 4026
    iget-object v0, v0, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 134
    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcmv$2;->a:Lcmv;

    .line 5026
    iget-object v0, v0, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 135
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->a()V

    .line 136
    iget-object v0, p0, Lcmv$2;->a:Lcmv;

    .line 6026
    iput-object v1, v0, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 138
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcmv$2;->a:Lcmv;

    .line 7026
    iget-object v0, v0, Lcmv;->d:Landroid/app/Activity;

    .line 138
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcmv$2;->a:Lcmv;

    .line 8026
    iget-object v0, v0, Lcmv;->d:Landroid/app/Activity;

    .line 138
    if-ne p1, v0, :cond_1

    .line 139
    iget-object v0, p0, Lcmv$2;->a:Lcmv;

    .line 9026
    iput-object v1, v0, Lcmv;->d:Landroid/app/Activity;

    .line 141
    :cond_1
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 112
    if-nez p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const/4 v2, 0x1

    .line 117
    .local v2, "status":I
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 118
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 119
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.alibaba-inc.ding.notification.enabled"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 125
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    :goto_1
    if-ne v6, v2, :cond_0

    .line 126
    iget-object v3, p0, Lcmv$2;->a:Lcmv;

    .line 1026
    iput-object p1, v3, Lcmv;->d:Landroid/app/Activity;

    .line 127
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    iget-object v4, p0, Lcmv$2;->a:Lcmv;

    .line 2026
    iget-object v4, v4, Lcmv;->c:Ljava/lang/Runnable;

    .line 127
    invoke-virtual {v3, v4}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    iget-object v4, p0, Lcmv$2;->a:Lcmv;

    .line 3026
    iget-object v4, v4, Lcmv;->c:Ljava/lang/Runnable;

    .line 128
    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 108
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 145
    return-void
.end method
