.class public Lelk;
.super Ljava/lang/Object;
.source "ChannelLogSwitchManager.java"


# static fields
.field private static volatile a:Lelk;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static synthetic a(Lelk;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "x0"    # Lelk;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 26
    .line 1140
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    const-string/jumbo p3, "main"

    .line 1144
    .end local p3    # "x3":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "main"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/rimet/logswitch/MainProcessLoggerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1151
    :goto_0
    const-string/jumbo v1, "cmd_open_accs"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1152
    const-string/jumbo v1, "intent_key_open_accs_log"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    :cond_1
    :goto_1
    return-object v0

    .line 1146
    :cond_2
    const-string/jumbo v0, ":tools"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1147
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/rimet/logswitch/ToolsProcessLoggerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1149
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/rimet/logswitch/ChannelLoggerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1153
    :cond_4
    const-string/jumbo v1, "cmd_close_accs"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1154
    const-string/jumbo v1, "intent_key_open_accs_log"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1155
    :cond_5
    const-string/jumbo v1, "cmd_open_ut"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1156
    const-string/jumbo v1, "intent_key_open_ut_log"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1157
    :cond_6
    const-string/jumbo v1, "cmd_close_ut"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1158
    const-string/jumbo v1, "intent_key_open_ut_log"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static a()Lelk;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lelk;->a:Lelk;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lelk;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lelk;->a:Lelk;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lelk;

    invoke-direct {v0}, Lelk;-><init>()V

    sput-object v0, Lelk;->a:Lelk;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lelk;->a:Lelk;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
