.class final Lcom/alibaba/android/rimet/RimetDDContext$44;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->registerScreenStatesReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 3604
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$44;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 3611
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 3721
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 3709
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3619
    iget-object v6, p0, Lcom/alibaba/android/rimet/RimetDDContext$44;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/RimetDDContext;->isOncreateDone()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3621
    const/4 v3, 0x1

    .line 3622
    .local v3, "status":I
    const/4 v2, 0x0

    .line 3624
    .local v2, "noNeedScreenLock":Z
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/android/rimet/RimetDDContext$44;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3625
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 3626
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v7, "com.alibaba-inc.check.login.status.resume"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3627
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v7, "NoNeedScreenLock"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3632
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    if-ne v6, v3, :cond_1

    .line 3633
    iget-object v6, p0, Lcom/alibaba/android/rimet/RimetDDContext$44;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/RimetDDContext;->isLogin()Z

    move-result v6

    if-nez v6, :cond_6

    .line 3634
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v4

    .line 3635
    .local v4, "uid":J
    const-string/jumbo v7, "user_lg"

    invoke-static {}, Lcom/alibaba/android/rimet/RimetDDContext;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "resume login check failed %s %s %b %b %b"

    const/4 v6, 0x5

    new-array v10, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz p1, :cond_2

    move-object v6, p1

    :goto_1
    aput-object v6, v10, v11

    const/4 v6, 0x1

    iget-object v11, p0, Lcom/alibaba/android/rimet/RimetDDContext$44;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    iget-object v12, p0, Lcom/alibaba/android/rimet/RimetDDContext$44;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    .line 3636
    invoke-virtual {v12}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alibaba/android/rimet/RimetDDContext;->access$1100(Lcom/alibaba/android/rimet/RimetDDContext;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    cmp-long v6, v4, v12

    if-lez v6, :cond_3

    const/4 v6, 0x1

    .line 3637
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v10, v11

    const/4 v11, 0x3

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v12

    cmp-long v6, v4, v12

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v10, v11

    const/4 v11, 0x4

    .line 3638
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v10, v11

    .line 3635
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v8, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3640
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/rimet/RimetDDContext$44$1;

    invoke-direct {v7, p0, p1}, Lcom/alibaba/android/rimet/RimetDDContext$44$1;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$44;Landroid/app/Activity;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3705
    .end local v2    # "noNeedScreenLock":Z
    .end local v3    # "status":I
    .end local v4    # "uid":J
    :cond_1
    :goto_5
    return-void

    .line 3629
    .restart local v2    # "noNeedScreenLock":Z
    .restart local v3    # "status":I
    :catch_0
    move-exception v1

    .line 3630
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 3635
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "uid":J
    :cond_2
    const-string/jumbo v6, ""

    goto :goto_1

    .line 3636
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 3637
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 3638
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 3649
    .end local v4    # "uid":J
    :cond_6
    if-nez v2, :cond_1

    .line 3650
    iget-object v6, p0, Lcom/alibaba/android/rimet/RimetDDContext$44;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v6}, Lcom/alibaba/android/rimet/RimetDDContext;->access$1200(Lcom/alibaba/android/rimet/RimetDDContext;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3651
    iget-object v6, p0, Lcom/alibaba/android/rimet/RimetDDContext$44;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v6}, Lcom/alibaba/android/rimet/RimetDDContext;->access$1300(Lcom/alibaba/android/rimet/RimetDDContext;)J

    move-result-wide v6

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/alibaba/android/rimet/RimetDDContext$44;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v8}, Lcom/alibaba/android/rimet/RimetDDContext;->access$1300(Lcom/alibaba/android/rimet/RimetDDContext;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_8

    .line 3652
    :cond_7
    invoke-static {}, Lekw;->b()Lekw;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/rimet/RimetDDContext$44$2;

    invoke-direct {v7, p0, p1}, Lcom/alibaba/android/rimet/RimetDDContext$44$2;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$44;Landroid/app/Activity;)V

    invoke-virtual {v6, v7}, Lekw;->a(Lcom/alibaba/wukong/Callback;)V

    goto :goto_5

    .line 3698
    :cond_8
    iget-object v6, p0, Lcom/alibaba/android/rimet/RimetDDContext$44;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/RimetDDContext;->setAppFront()V

    goto :goto_5
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 3717
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 3615
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 3713
    return-void
.end method
