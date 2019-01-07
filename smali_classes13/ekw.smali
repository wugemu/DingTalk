.class public Lekw;
.super Ljava/lang/Object;
.source "PwdManager.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;


# static fields
.field private static a:Lekw;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lekw;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lekw;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    .line 1156
    const-string/jumbo v0, "pwd"

    const-string/jumbo v1, "PwdManager"

    const-string/jumbo v2, "savePasscodeToDatabase"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 1158
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 1159
    new-instance v1, Lekw$3;

    invoke-direct {v1, p0, v2, v3, p1}, Lekw$3;-><init>(Lekw;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method

.method public static b()Lekw;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lekw;->a:Lekw;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lekw;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lekw;->a:Lekw;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lekw;

    invoke-direct {v0}, Lekw;-><init>()V

    sput-object v0, Lekw;->a:Lekw;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lekw;->a:Lekw;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lekw;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lekw;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    .line 1288
    const-string/jumbo v0, "pwd"

    const-string/jumbo v1, "PwdManager"

    const-string/jumbo v2, "saveScreenLockToDatabase"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 1290
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 1291
    new-instance v1, Lekw$6;

    invoke-direct {v1, p0, v2, v3, p1}, Lekw$6;-><init>(Lekw;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method

.method static synthetic c(Lekw;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lekw;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    .line 1420
    const-string/jumbo v0, "pwd"

    const-string/jumbo v1, "PwdManager"

    const-string/jumbo v2, "saveHideBossModeToDatabase"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 1422
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 1423
    new-instance v1, Lekw$9;

    invoke-direct {v1, p0, v2, v3, p1}, Lekw$9;-><init>(Lekw;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_safe"

    const-string/jumbo v3, "passcode"

    invoke-virtual {v1, v2, v3}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 46
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_safe"

    const-string/jumbo v3, "passcode"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    const-string/jumbo v1, "pwd"

    const-string/jumbo v2, "PwdManager"

    const-string/jumbo v3, "get passcode from cache"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 127
    .end local v0    # "v":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string/jumbo v1, "pwd"

    const-string/jumbo v2, "PwdManager"

    const-string/jumbo v3, "try get passcode async"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-class v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v2, "dt_safe"

    const-string/jumbo v3, "passcode"

    new-instance v4, Lekw$1;

    invoke-direct {v4, p0, p1}, Lekw$1;-><init>(Lekw;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "dt_safe"

    const-string/jumbo v2, "passcode"

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    new-instance v5, Lekw$2;

    invoke-direct {v5, p0, p2, p1}, Lekw$2;-><init>(Lekw;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    .line 153
    return-void
.end method

.method public final a(Z)V
    .locals 5
    .param p1, "value"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 441
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_safe"

    const-string/jumbo v3, "just_hide_boss_chat"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 442
    return-void

    .line 441
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public final a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 446
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_safe"

    const-string/jumbo v3, "just_hide_boss_chat"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/wukong/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_safe"

    const-string/jumbo v3, "protect_lockscreen"

    invoke-virtual {v1, v2, v3}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 178
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_safe"

    const-string/jumbo v3, "protect_lockscreen"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    const-string/jumbo v1, "pwd"

    const-string/jumbo v2, "PwdManager"

    const-string/jumbo v3, "get screen lock from cache"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    if-eqz p1, :cond_0

    .line 182
    invoke-interface {p1, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 259
    .end local v0    # "v":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const-string/jumbo v1, "pwd"

    const-string/jumbo v2, "PwdManager"

    const-string/jumbo v3, "try get screen lock async"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-class v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v2, "dt_safe"

    const-string/jumbo v3, "protect_lockscreen"

    new-instance v4, Lekw$4;

    invoke-direct {v4, p0, p1}, Lekw$4;-><init>(Lekw;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 263
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "dt_safe"

    const-string/jumbo v2, "protect_lockscreen"

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    new-instance v5, Lekw$5;

    invoke-direct {v5, p0, p2, p1}, Lekw$5;-><init>(Lekw;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    .line 285
    return-void
.end method

.method public final c(Lcom/alibaba/wukong/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 309
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_safe"

    const-string/jumbo v3, "hide_bossmode"

    invoke-virtual {v1, v2, v3}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 310
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_safe"

    const-string/jumbo v3, "hide_bossmode"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    const-string/jumbo v1, "pwd"

    const-string/jumbo v2, "PwdManager"

    const-string/jumbo v3, "get boss mode from cache"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    if-eqz p1, :cond_0

    .line 314
    invoke-interface {p1, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 391
    .end local v0    # "v":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const-string/jumbo v1, "pwd"

    const-string/jumbo v2, "PwdManager"

    const-string/jumbo v3, "try get boss mode async"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-class v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v2, "dt_safe"

    const-string/jumbo v3, "hide_bossmode"

    new-instance v4, Lekw$7;

    invoke-direct {v4, p0, p1}, Lekw$7;-><init>(Lekw;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 395
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "dt_safe"

    const-string/jumbo v2, "hide_bossmode"

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    new-instance v5, Lekw$8;

    invoke-direct {v5, p0, p2, p1}, Lekw$8;-><init>(Lekw;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    .line 417
    return-void
.end method
