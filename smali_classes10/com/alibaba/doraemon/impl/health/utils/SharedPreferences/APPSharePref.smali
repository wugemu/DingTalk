.class public Lcom/alibaba/doraemon/impl/health/utils/SharedPreferences/APPSharePref;
.super Ljava/lang/Object;
.source "APPSharePref.java"


# static fields
.field private static final IS_FIRST_LAUNCH:Ljava/lang/String; = "is_first_launch"

.field private static final PREF_PATH:Ljava/lang/String; = "app_doraemon_heath"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isFirstLaunch(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const-class v6, Lcom/alibaba/doraemon/impl/health/utils/SharedPreferences/APPSharePref;

    monitor-enter v6

    const/4 v2, 0x0

    .line 26
    .local v2, "isFirstLaunch":Z
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->isMainProcess(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    const-string/jumbo v5, "app_doraemon_heath"

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 30
    .local v0, "appPref":Landroid/content/SharedPreferences;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 31
    .local v1, "info":Landroid/content/pm/PackageInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "is_first_launch"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "prefKey":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 39
    .end local v0    # "appPref":Landroid/content/SharedPreferences;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "prefKey":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v6

    return v2

    .line 33
    .restart local v0    # "appPref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    .line 34
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 23
    .end local v0    # "appPref":Landroid/content/SharedPreferences;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized setLaunched(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const-class v6, Lcom/alibaba/doraemon/impl/health/utils/SharedPreferences/APPSharePref;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v5, "app_doraemon_heath"

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 46
    .local v0, "appPref":Landroid/content/SharedPreferences;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 47
    .local v2, "info":Landroid/content/pm/PackageInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "is_first_launch"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "prefKey":Ljava/lang/String;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 49
    .local v3, "localEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 50
    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "localEditor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "prefKey":Ljava/lang/String;
    :goto_0
    monitor-exit v6

    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 43
    .end local v0    # "appPref":Landroid/content/SharedPreferences;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
