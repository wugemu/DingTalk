.class public final Ljjn;
.super Ljava/lang/Object;
.source "OrangeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljjn$a;
    }
.end annotation


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    sput-boolean v1, Ljjn;->a:Z

    .line 30
    :try_start_0
    const-string/jumbo v0, "com.taobao.orange.OrangeConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Ljjn;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    sput-boolean v1, Ljjn;->a:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "groupName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-boolean v0, Ljjn;->a:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 81
    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 80
    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "OrangeAdapter"

    const-string/jumbo v1, "no orange sdk"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    .locals 3
    .param p0, "groupnames"    # [Ljava/lang/String;
    .param p1, "listener"    # Lcom/taobao/orange/OrangeConfigListenerV1;

    .prologue
    .line 46
    sget-boolean v0, Ljjn;->a:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/orange/OrangeConfig;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string/jumbo v0, "OrangeAdapter"

    const-string/jumbo v1, "no orange sdk"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    const/4 v0, 0x1

    .line 100
    .local v0, "result":Z
    :try_start_0
    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "smart_hb_enable"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ljjn;->a(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 105
    :goto_0
    const-string/jumbo v2, "OrangeAdapter"

    const-string/jumbo v3, "isSmartHb"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "result"

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    return v0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "OrangeAdapter"

    const-string/jumbo v3, "isSmartHb"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v7, 0x0

    .line 151
    move v1, p2

    .line 153
    .local v1, "result":Z
    :try_start_0
    const-string/jumbo v3, "ACCS_SDK"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 154
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v4, "getConfigFromSP fail:"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "key"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Z)Z
    .locals 13
    .param p0, "fromOrange"    # Z

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, "result":Z
    :try_start_0
    const-string/jumbo v2, "default"

    .line 117
    .local v2, "value":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 118
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "tnet_log_off"

    const-string/jumbo v5, "default"

    invoke-static {v3, v4, v5}, Ljjn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    :cond_0
    const-string/jumbo v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "tnet_log_off"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ljjn;->a(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 130
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v4, "isTnetLogOff"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "result"

    aput-object v6, v5, v10

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    return v0

    .line 124
    .restart local v2    # "value":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 125
    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "tnet_log_off"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1163
    if-nez v3, :cond_2

    .line 1164
    :try_start_2
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v5, "saveTLogOffToSP context null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1173
    :catch_0
    move-exception v3

    .line 1174
    :try_start_3
    const-string/jumbo v5, "OrangeAdapter"

    const-string/jumbo v6, "saveConfigToSP fail:"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "key"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "value"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v3, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1176
    :goto_1
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v5, "saveConfigToSP"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "key"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v4, 0x2

    const-string/jumbo v7, "value"

    aput-object v7, v6, v4

    const/4 v4, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 127
    .end local v2    # "value":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 128
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v4, "isTnetLogOff"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1167
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string/jumbo v5, "ACCS_SDK"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1169
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1170
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1172
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method public static b()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 135
    sget-boolean v0, Ljim;->k:Z

    .line 137
    .local v0, "result":Z
    :try_start_0
    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "election_enable"

    sget-boolean v4, Ljim;->k:Z

    invoke-static {v2, v3, v4}, Ljjn;->a(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 142
    :goto_0
    if-nez v0, :cond_0

    .line 143
    const-string/jumbo v2, "OrangeAdapter"

    const-string/jumbo v3, "isElectionEnable"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "result"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_0
    return v0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "OrangeAdapter"

    const-string/jumbo v3, "isElectionEnable"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-static {}, Ljjn;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string/jumbo v0, "OrangeAdapter"

    const-string/jumbo v1, "force enable service"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/ACCSManager;->forceEnableService(Landroid/content/Context;)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const-string/jumbo v0, "OrangeAdapter"

    const-string/jumbo v1, "force disable service"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/ACCSManager;->forceDisableService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static d()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 87
    const/4 v0, 0x1

    .line 89
    .local v0, "enable":Z
    :try_start_0
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "main_function_enable"

    const-string/jumbo v4, "true"

    invoke-static {v2, v3, v4}, Ljjn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 93
    :goto_0
    const-string/jumbo v2, "OrangeAdapter"

    const-string/jumbo v3, "isAccsEnabled"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "enable"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    return v0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "OrangeAdapter"

    const-string/jumbo v3, "isAccsEnabled"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
