.class public Lhfw;
.super Ljava/lang/Object;
.source "Core.java"


# static fields
.field public static a:Z

.field private static final b:Ljava/lang/String;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lhfw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhfw;->b:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    sput v0, Lhfw;->c:I

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lhfw;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v10, 0x1b

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 76
    const-class v8, Lhfw;

    monitor-enter v8

    if-nez p0, :cond_1

    .line 77
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p0

    .line 78
    if-nez p0, :cond_1

    .line 222
    :cond_0
    :goto_0
    monitor-exit v8

    return-void

    .line 83
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitUCCoreInitStatus(I)V

    .line 85
    invoke-static {}, Lhfw;->a()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1564
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v7, "f_lightapp_disable_uc_core_degrade"

    const/4 v9, 0x1

    invoke-virtual {v4, v7, v9}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1569
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v4, "f_lightapp_enable_anroid_p_use_uc_core"

    const/4 v7, 0x1

    invoke-static {v4, v7}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1570
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v4, v10, :cond_2

    const-string/jumbo v4, "P"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, v10, :cond_9

    :cond_3
    move v4, v5

    .line 85
    :goto_1
    if-nez v4, :cond_a

    move v1, v5

    .line 87
    .local v1, "isUseUCCoreWebView":Z
    :goto_2
    const-string/jumbo v4, "UCCore"

    const/4 v7, 0x0

    const-string/jumbo v9, "uc_core_init"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "isUseUCCoreWebView="

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v4, v7, v9, v10}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    const-string/jumbo v4, "UCCore"

    const/4 v7, 0x0

    const-string/jumbo v9, "uc_core_init"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "use_system_webview="

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-boolean v12, Lhfx;->a:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v4, v7, v9, v10}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    sget-boolean v4, Lhfx;->c:Z

    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->setPrintLog(Z)V

    .line 93
    const-string/jumbo v4, "CONTEXT"

    invoke-static {v4, p0}, Lcom/uc/webview/export/extension/UCCore;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v4

    const-string/jumbo v7, "MULTI_CORE_TYPE"

    const/4 v9, 0x1

    .line 94
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v9, "SYSTEM_WEBVIEW"

    if-nez v1, :cond_b

    move v7, v5

    .line 95
    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v9, v7}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "AC"

    const/4 v9, 0x0

    .line 96
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "init_setup_thread"

    const/4 v9, 0x1

    .line 97
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "provided_keys"

    sget-object v9, Lhfx;->e:[Ljava/lang/String;

    .line 98
    invoke-virtual {v4, v7, v9}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "loadPolicy"

    const-string/jumbo v9, "SPECIFIED_ONLY"

    .line 99
    invoke-virtual {v4, v7, v9}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "WEBVIEW_POLICY"

    const/4 v9, 0x2

    .line 100
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v9, "delete_core"

    .line 2238
    invoke-static {}, Lhfw;->d()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2239
    const/16 v7, 0x3f

    .line 102
    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v9, v7}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v9, "VERIFY_POLICY"

    .line 3230
    invoke-static {}, Lhfw;->d()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 3231
    const v7, 0x4000001f    # 2.0000074f

    .line 103
    :goto_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v9, v7}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "VIDEO_AC"

    const/4 v9, 0x0

    .line 104
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "disable_multi_unknown_crash"

    const/4 v9, 0x1

    .line 105
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "ucmZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/libWebViewCore_7z_uc.so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/utility/SetupTask;

    .line 108
    .local v2, "setupTask":Lcom/uc/webview/export/utility/SetupTask;
    if-eqz v2, :cond_5

    .line 109
    const-string/jumbo v4, "switch"

    new-instance v7, Lhfw$3;

    invoke-direct {v7, v1}, Lhfw$3;-><init>(Z)V

    invoke-virtual {v2, v4, v7}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "exception"

    new-instance v9, Lhfw$2;

    invoke-direct {v9}, Lhfw$2;-><init>()V

    .line 131
    invoke-virtual {v4, v7, v9}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v7, "success"

    new-instance v9, Lhfw$1;

    invoke-direct {v9}, Lhfw$1;-><init>()V

    .line 150
    invoke-virtual {v4, v7, v9}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 179
    const-string/jumbo v4, "uc_init_log_disable"

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 180
    const-string/jumbo v4, "log_conf"

    invoke-static {}, Lhfw;->e()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    .end local v2    # "setupTask":Lcom/uc/webview/export/utility/SetupTask;
    check-cast v2, Lcom/uc/webview/export/utility/SetupTask;

    .line 183
    .restart local v2    # "setupTask":Lcom/uc/webview/export/utility/SetupTask;
    :cond_4
    invoke-virtual {v2}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 186
    :cond_5
    const-string/jumbo v4, "UCCore"

    const/4 v7, 0x0

    const-string/jumbo v9, "uc_core_init"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "nativeLibraryDir="

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v4, v7, v9, v10}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    sget-boolean v4, Lhfx;->a:Z

    if-nez v4, :cond_0

    .line 3291
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 3292
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string/jumbo v7, "HMD Global"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-ne v4, v7, :cond_e

    move v4, v5

    .line 197
    :goto_6
    if-eqz v4, :cond_6

    .line 4271
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v7, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v4, v7, :cond_f

    move v4, v5

    .line 197
    :goto_7
    if-nez v4, :cond_0

    .line 201
    :cond_6
    const-string/jumbo v0, "https://gw.alicdn.com/bao/uploaded/LB17mLJRFXXXXc1XpXXXXXXXXXX.zip"

    .line 203
    .local v0, "apolloUrl":Ljava/lang/String;
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_uc_apollo_new_version"

    invoke-virtual {v4, v5}, Lchx;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 204
    const-string/jumbo v4, "CSpace"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "apollo_new_version"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string/jumbo v0, "https://file.dingtalk.com/dso/uc/custom/apollo_201802271352.zip"

    .line 208
    :cond_7
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v4, "f_lightapp_uc_core_appllo_url_enable"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 209
    const-string/jumbo v0, "https://files.alicdn.com/tpsservice/ed9eca08bb4497d2456063770fdb1a15.zip"

    .line 210
    const-string/jumbo v4, "UCCore"

    const/4 v5, 0x0

    const-string/jumbo v6, "uc_core_init_apollo_url"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "url="

    aput-object v10, v7, v9

    const/4 v9, 0x1

    aput-object v0, v7, v9

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_8
    move-object v3, p0

    .local v3, "tempContext":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lhfw$4;

    invoke-direct {v5, v3}, Lhfw$4;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v0, v5}, Lcom/uc/webview/export/extension/UCCore;->updateUCPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 76
    .end local v0    # "apolloUrl":Ljava/lang/String;
    .end local v1    # "isUseUCCoreWebView":Z
    .end local v2    # "setupTask":Lcom/uc/webview/export/utility/SetupTask;
    .end local v3    # "tempContext":Landroid/content/Context;
    :catchall_0
    move-exception v4

    monitor-exit v8

    throw v4

    :cond_9
    move v4, v6

    .line 1575
    goto/16 :goto_1

    :cond_a
    move v1, v6

    .line 85
    goto/16 :goto_2

    .restart local v1    # "isUseUCCoreWebView":Z
    :cond_b
    move v7, v6

    .line 94
    goto/16 :goto_3

    :cond_c
    move v7, v6

    .line 2241
    goto/16 :goto_4

    :cond_d
    move v7, v6

    .line 3234
    goto/16 :goto_5

    .restart local v2    # "setupTask":Lcom/uc/webview/export/utility/SetupTask;
    :cond_e
    move v4, v6

    .line 3292
    goto :goto_6

    .line 4275
    :cond_f
    :try_start_2
    const-string/jumbo v4, "debug.checkjni"

    invoke-static {v4}, Lhfw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4276
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string/jumbo v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v5

    .line 4277
    goto/16 :goto_7

    .line 4280
    :cond_10
    const-string/jumbo v4, "dalvik.vm.checkjni"

    invoke-static {v4}, Lhfw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4282
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v5

    .line 4283
    goto/16 :goto_7

    .line 4286
    :cond_11
    const-string/jumbo v4, "ro.kernel.android.checkjni"

    invoke-static {v4}, Lhfw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4287
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    const-string/jumbo v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_12

    move v4, v5

    goto/16 :goto_7

    :cond_12
    move v4, v6

    goto/16 :goto_7
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    .line 4584
    sget-boolean v0, Lhfx;->c:Z

    if-eqz v0, :cond_0

    .line 4585
    const-string/jumbo v0, "RuntimeCore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;IILandroid/webkit/ValueCallback;)V
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "resourceType"    # I
    .param p2, "loadType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/webkit/WebResourceResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "resultCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/webkit/WebResourceResponse;>;"
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 369
    invoke-static {}, Lhfw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4327
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v3, :cond_1

    .line 4328
    const-string/jumbo v0, "UCCore"

    const-string/jumbo v3, "checkPreloadCloudSetting"

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "runtimeMode = debug"

    aput-object v5, v4, v1

    invoke-static {v0, v7, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4329
    sget-boolean v0, Lhfx;->b:Z

    .line 370
    :goto_0
    if-eqz v0, :cond_0

    .line 371
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v3, Lhfw$5;

    invoke-direct {v3, p0, v1, v2, p3}, Lhfw$5;-><init>(Ljava/lang/String;IILandroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 379
    :cond_0
    return-void

    .line 4332
    :cond_1
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v3, "dt_function"

    const-string/jumbo v4, "uc_preload_enable"

    invoke-interface {v0, v3, v4}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 4333
    if-eqz v0, :cond_2

    .line 4334
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 4335
    const-string/jumbo v3, "UCCore"

    const-string/jumbo v4, "checkPreloadCloudSetting"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "value ="

    aput-object v6, v5, v1

    aput-object v0, v5, v2

    invoke-static {v3, v7, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4336
    const-string/jumbo v3, "disable"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 4337
    goto :goto_0

    :cond_2
    move v0, v2

    .line 4340
    goto :goto_0
.end method

.method public static a()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 303
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v2, v5, :cond_1

    .line 304
    const-string/jumbo v2, "UCCore"

    const-string/jumbo v5, "checkUseUCCoreCloudSetting"

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v7, "runtimeMode = debug"

    aput-object v7, v6, v4

    invoke-static {v2, v8, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    sget-boolean v2, Lhfx;->a:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 318
    .local v0, "ucCoreEnableSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    :goto_0
    return v2

    .end local v0    # "ucCoreEnableSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_0
    move v2, v4

    .line 305
    goto :goto_0

    .line 308
    :cond_1
    const-class v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v5, "dt_function"

    const-string/jumbo v6, "uc_core_enable_v2"

    invoke-interface {v2, v5, v6}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 310
    .restart local v0    # "ucCoreEnableSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_2

    .line 311
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "UCCore"

    const-string/jumbo v5, "checkUseUCCoreCloudSetting"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "value ="

    aput-object v7, v6, v4

    aput-object v1, v6, v3

    invoke-static {v2, v8, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    const-string/jumbo v2, "disable"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 314
    goto :goto_0

    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 318
    goto :goto_0
.end method

.method public static b()I
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 344
    const-class v4, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v5, "dt_function"

    const-string/jumbo v6, "uc_core_config"

    .line 345
    invoke-interface {v4, v5, v6}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v2

    .line 346
    .local v2, "ucCoreConfigSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v2, :cond_0

    .line 347
    invoke-interface {v2}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "UCCore"

    const/4 v5, 0x0

    const-string/jumbo v6, "checkUCCoreConfigCloudSetting"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "value ="

    aput-object v8, v7, v0

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 356
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 352
    .restart local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 258
    const/4 v2, 0x0

    .line 261
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 262
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-object v2

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LightApp"

    const-string/jumbo v4, "Core"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getSystemProperty error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5507
    invoke-static {v2}, Lcom/uc/webview/export/extension/UCSettings;->setEnableUCVideoViewFullscreen(Z)V

    .line 5508
    sget-boolean v0, Lhfx;->d:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalEnableUCProxy(Z)V

    .line 5509
    invoke-static {v2}, Lcom/uc/webview/export/extension/UCSettings;->setPageCacheCapacity(I)V

    .line 5511
    const-string/jumbo v0, "video_fixed_sw_hostlist"

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v4, "*"

    aput-object v4, v3, v2

    invoke-static {v1, v5, v0, v3}, Lcom/uc/webview/export/extension/UCSettings;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 5516
    const-string/jumbo v0, "crsp_sp_rc"

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v4, "*"

    aput-object v4, v3, v2

    invoke-static {v1, v5, v0, v3}, Lcom/uc/webview/export/extension/UCSettings;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void

    :cond_0
    move v0, v2

    .line 5508
    goto :goto_0
.end method

.method private static d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 249
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v2, "f_lightapp_enable_verify_policy_all"

    invoke-static {v2, v1}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitUCCoreVerifyPolicy(I)V

    .line 254
    :goto_0
    return v0

    .line 253
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitUCCoreVerifyPolicy(I)V

    move v0, v1

    .line 254
    goto :goto_0
.end method

.method private static e()[Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 432
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/Object;

    .line 434
    .local v0, "logConfig":[Ljava/lang/Object;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 435
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 436
    const/4 v2, 0x2

    new-instance v3, Lhfw$6;

    invoke-direct {v3}, Lhfw$6;-><init>()V

    aput-object v3, v0, v2

    .line 463
    const/4 v2, 0x3

    const-string/jumbo v3, "[all]"

    aput-object v3, v0, v2

    .line 464
    const/4 v2, 0x4

    const-string/jumbo v3, "[all]"

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    return-object v0

    .line 465
    :catch_0
    move-exception v1

    .line 466
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 467
    const-string/jumbo v2, "UCCore"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "initLogConfig exception=>"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
