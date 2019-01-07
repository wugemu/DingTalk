.class public Lhzr;
.super Ljava/lang/Object;
.source "AnalyticsService.java"


# static fields
.field private static a:Lhzr;


# instance fields
.field private b:Lcom/alibaba/wukong/auth/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lhzr;->b:Lcom/alibaba/wukong/auth/a;

    .line 126
    new-instance v0, Lcom/alibaba/wukong/auth/a;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/a;-><init>()V

    iput-object v0, p0, Lhzr;->b:Lcom/alibaba/wukong/auth/a;

    .line 127
    return-void
.end method

.method static synthetic a(Lhzr;)Lcom/alibaba/wukong/auth/a;
    .locals 1
    .param p0, "x0"    # Lhzr;

    .prologue
    .line 23
    iget-object v0, p0, Lhzr;->b:Lcom/alibaba/wukong/auth/a;

    return-object v0
.end method

.method private a(Lcom/alibaba/wukong/idl/log/models/AlarmModel;Z)V
    .locals 8
    .param p1, "alarmModel"    # Lcom/alibaba/wukong/idl/log/models/AlarmModel;
    .param p2, "allUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 90
    const-string/jumbo v0, "WKLog"

    const-string/jumbo v1, "PARAMETER_ERR"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lhzr$1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getWKExecutor()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v4

    sget-object v5, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    move-object v1, p0

    move v6, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lhzr$1;-><init>(Lhzr;Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;ZLcom/alibaba/wukong/idl/log/models/AlarmModel;)V

    .line 102
    invoke-virtual {v0}, Lhzr$1;->start()V

    goto :goto_0
.end method

.method public static a()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-static {}, Lifo;->a()Lifo;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->VIP_USER:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    .line 108
    invoke-virtual {v4}, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->getModule()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->VIP_USER:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    invoke-virtual {v5}, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-virtual {v3, v4, v5}, Lifo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 109
    .local v0, "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v2

    .line 111
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Ligb;->f(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static b()Z
    .locals 4

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ALLOW_USAGE_STATISTICS"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Liga;->a()Liga;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Liga;->b(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static declared-synchronized c()Lhzr;
    .locals 2

    .prologue
    .line 130
    const-class v1, Lhzr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhzr;->a:Lhzr;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lhzr;

    invoke-direct {v0}, Lhzr;-><init>()V

    sput-object v0, Lhzr;->a:Lhzr;

    .line 133
    :cond_0
    sget-object v0, Lhzr;->a:Lhzr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lhzu;)V
    .locals 2
    .param p1, "alarm"    # Lhzu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Lhzu;->a()Lcom/alibaba/wukong/idl/log/models/AlarmModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lhzr;->a(Lcom/alibaba/wukong/idl/log/models/AlarmModel;Z)V

    goto :goto_0
.end method

.method public final b(Lhzu;)V
    .locals 2
    .param p1, "alarm"    # Lhzu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lhzu;->a()Lcom/alibaba/wukong/idl/log/models/AlarmModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lhzr;->a(Lcom/alibaba/wukong/idl/log/models/AlarmModel;Z)V

    goto :goto_0
.end method

.method public final c(Lhzu;)V
    .locals 0
    .param p1, "alarm"    # Lhzu;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lhzr;->a(Lhzu;)V

    .line 82
    return-void
.end method
