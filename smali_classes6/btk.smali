.class public final Lbtk;
.super Ljava/lang/Object;
.source "StateUtils.java"


# static fields
.field private static a:Z

.field private static b:I

.field private static final c:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lbtk;->a:Z

    .line 37
    const/4 v0, -0x1

    sput v0, Lbtk;->b:I

    .line 45
    new-instance v0, Lbtk$1;

    invoke-direct {v0}, Lbtk$1;-><init>()V

    sput-object v0, Lbtk;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    sget-object v1, Lbtk;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    sget-object v1, Lbtk;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .param p0, "bindMode"    # Z

    .prologue
    .line 41
    sput-boolean p0, Lbtk;->a:Z

    .line 42
    invoke-static {}, Lbtk;->a()V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 106
    const-string/jumbo v5, "LIFECYCLE"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 107
    .local v3, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    if-eqz v3, :cond_1

    .line 108
    invoke-interface {v3}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    .line 121
    :goto_0
    return v5

    :cond_0
    move v5, v7

    .line 108
    goto :goto_0

    .line 110
    :cond_1
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 111
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 112
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 113
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 114
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "currentPackageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    .line 117
    goto :goto_0

    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "currentPackageName":Ljava/lang/String;
    :cond_2
    move v5, v7

    .line 121
    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lbtk;->b:I

    return v0
.end method

.method static synthetic c()V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1065
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    move v0, v1

    .line 2054
    :goto_0
    sget-object v4, Lbry$c;->a:Lbry;

    .line 2418
    iget-object v4, v4, Lbry;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1067
    if-lez v4, :cond_2

    move v4, v1

    .line 1070
    :goto_1
    if-eqz v0, :cond_3

    sget-boolean v5, Lbtk;->a:Z

    if-eqz v5, :cond_3

    move v2, v3

    .line 1079
    :cond_0
    :goto_2
    sget v0, Lbtk;->b:I

    if-ne v0, v8, :cond_4

    if-nez v2, :cond_4

    .line 1080
    const-string/jumbo v0, "BeaconScan"

    const-string/jumbo v1, "state is none"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 1065
    goto :goto_0

    :cond_2
    move v4, v2

    .line 1067
    goto :goto_1

    .line 1072
    :cond_3
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    move v2, v1

    .line 1073
    goto :goto_2

    .line 1081
    :cond_4
    sget v0, Lbtk;->b:I

    if-eq v0, v3, :cond_5

    sget v0, Lbtk;->b:I

    if-ne v0, v1, :cond_6

    :cond_5
    if-nez v2, :cond_6

    .line 1082
    const-string/jumbo v0, "BeaconScan"

    const-string/jumbo v1, "state enable --> disable"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    sput v8, Lbtk;->b:I

    .line 1085
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->stopBeaconService(Landroid/content/Context;)V

    goto :goto_3

    .line 1087
    :cond_6
    const-string/jumbo v0, "BeaconScan"

    const-string/jumbo v1, "update state"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    sput v2, Lbtk;->b:I

    .line 1091
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.alibaba.android.dingtalk.ACTION_BEACON_STATE_CHANGED"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->startBeaconService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3
.end method
