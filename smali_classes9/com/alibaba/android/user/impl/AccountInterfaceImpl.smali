.class public Lcom/alibaba/android/user/impl/AccountInterfaceImpl;
.super Lcom/alibaba/android/dingtalk/userbase/AccountInterface;
.source "AccountInterfaceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 127
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/login.html"

    new-instance v2, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$3;-><init>(Lcom/alibaba/android/user/impl/AccountInterfaceImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 134
    return-void
.end method

.method public final a(Landroid/app/Activity;I)V
    .locals 7
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 226
    .line 2582
    new-instance v2, Lcom/alibaba/android/user/settings/utils/SettingsUtils$4;

    invoke-direct {v2, p1, p2}, Lcom/alibaba/android/user/settings/utils/SettingsUtils$4;-><init>(Landroid/app/Activity;I)V

    .line 2612
    if-eqz p1, :cond_0

    .line 2613
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v1, Lcma;

    invoke-interface {v0, v2, v1, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    move-object v2, v0

    .line 2616
    :cond_0
    invoke-static {}, Lfxi;->a()Lfxi;

    move-result-object v1

    .line 3285
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 3286
    const-class v0, Lfxi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 3287
    sget-object v0, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 3288
    new-instance v0, Lfxi$5;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lfxi$5;-><init>(Lfxi;Lcma;ZZLandroid/app/Activity;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 291
    invoke-static {p1, p2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 292
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .param p1, "activity"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 88
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/login_pwd.html"

    new-instance v2, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$1;-><init>(Lcom/alibaba/android/user/impl/AccountInterfaceImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 96
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "clearTask"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 107
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/login_pwd.html"

    new-instance v2, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$2;

    invoke-direct {v2, p0, p3, p2}, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$2;-><init>(Lcom/alibaba/android/user/impl/AccountInterfaceImpl;ZLjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 123
    return-void
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "clearTask"    # Z

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/android/user/impl/AccountInterfaceImpl;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 101
    return-void
.end method

.method public final a(Lcjo$a;)V
    .locals 1
    .param p1, "listener"    # Lcjo$a;

    .prologue
    .line 252
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->e()Lfmp;

    move-result-object v0

    invoke-interface {v0, p1}, Lfmp;->a(Lcjo$a;)V

    .line 253
    return-void
.end method

.method public final a(Lifg;)V
    .locals 0
    .param p1, "command"    # Lifg;

    .prologue
    .line 148
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    .line 149
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8
    .param p1, "jsonStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 329
    .line 4033
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4038
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4044
    const-string/jumbo v0, "org_blacklist"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4045
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 4046
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 4047
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 4048
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4047
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4050
    :cond_0
    invoke-static {v5}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v3, v0

    .line 4054
    :goto_2
    const-string/jumbo v0, "industry_blacklist"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 4055
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 4056
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 4057
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 4058
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4057
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    move v0, v2

    .line 4050
    goto :goto_1

    .line 4060
    :cond_2
    invoke-static {v6}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 4063
    :goto_4
    const-string/jumbo v5, "pref_key_is_medal_entry_blocked_by_blacklist"

    if-nez v0, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    invoke-static {v5, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 4064
    const-string/jumbo v0, "pref_key_show_medal_entry_total_switch"

    const-string/jumbo v1, "enable"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4067
    :cond_5
    :goto_5
    return-void

    :cond_6
    move v0, v2

    .line 4060
    goto :goto_4

    .line 4065
    :catch_0
    move-exception v0

    .line 4066
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    move v3, v2

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "oldPwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lfac;->e(Ljava/lang/String;Lcma;)V

    .line 201
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 72
    invoke-static {}, Lfrb;->a()V

    .line 73
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 247
    invoke-static {p1}, Lcom/alibaba/android/user/devset/DevSettingActivity;->a(Landroid/content/Context;)V

    .line 248
    return-void
.end method

.method public final b(Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "phone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lezm;->a(Ljava/lang/String;Lcma;)V

    .line 206
    return-void
.end method

.method public final c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 156
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string/jumbo v0, "login_get_user_time"

    invoke-static {v0}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v8

    .line 160
    .local v8, "time":J
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v8, v9}, Lcms;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v2

    new-instance v6, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$4;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$4;-><init>(Lcom/alibaba/android/user/impl/AccountInterfaceImpl;)V

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJLcma;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 210
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v0

    invoke-interface {v0}, Lezm;->a()V

    .line 211
    invoke-static {}, Lfxn;->a()Lfxn;

    move-result-object v0

    .line 1139
    iget-object v0, v0, Lfxn;->a:Landroid/content/Context;

    const-string/jumbo v1, "key_upload_device_identifier"

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public final e()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 216
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    .line 2113
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->d()J

    move-result-wide v0

    .line 216
    return-wide v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->c()V

    .line 222
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 270
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lfrb;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 276
    const-string/jumbo v0, "AccountInterfaceImpl"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$5;-><init>(Lcom/alibaba/android/user/impl/AccountInterfaceImpl;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method public final i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 240
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 241
    invoke-static {}, Lfxi;->a()Lfxi;

    move-result-object v0

    invoke-virtual {v0}, Lfxi;->b()V

    .line 243
    :cond_0
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/app/Application;

    .prologue
    .line 258
    return-void
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 286
    invoke-static {}, Lcmm;->b()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 297
    invoke-static {}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-static {v0}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "pref_key_last_show_energy_popup_time"

    .line 299
    invoke-static {v1}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcms;->b(J)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 305
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_user"

    const-string/jumbo v3, "activity"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    const-class v1, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;

    invoke-static {v0, v1}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;

    .line 309
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final m()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/alibaba/android/user/impl/AccountInterfaceImpl;->l()Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;

    move-result-object v1

    .line 315
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->setClickDate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    invoke-static {v1}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "modifyResult":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "dt_user"

    const-string/jumbo v4, "activity"

    sget-object v5, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v2, v3, v4, v0, v5}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 325
    .end local v0    # "modifyResult":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 4077
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Z)Z

    move-result v0

    .line 334
    return v0
.end method

.method public onApplicationCreate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 262
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->onApplicationCreate()V

    .line 264
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcms;->h(Landroid/content/Context;)I

    move-result v0

    .line 265
    .local v0, "currentVersionCode":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "last_version_code"

    invoke-static {v1, v2, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 266
    return-void
.end method
