.class public Ldfa;
.super Ljava/lang/Object;
.source "AbsConfigChatPlugin.java"

# interfaces
.implements Ldfc;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/alibaba/wukong/im/Conversation;

.field protected c:Ldsd;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Ldfa;->a:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Ldfa;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 50
    return-void
.end method

.method static synthetic a(Ldfa;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Ldfa;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 36
    .line 8133
    iget-object v0, p0, Ldfa;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 8151
    :cond_0
    :goto_0
    return-void

    .line 8134
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 8135
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8139
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 8141
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-static {v4}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8142
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8145
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 8146
    const/4 v0, 0x1

    if-ne v3, v0, :cond_4

    .line 8147
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 8148
    if-eqz v0, :cond_0

    .line 8149
    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-direct {p0, p1, v0, v1}, Ldfa;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 8152
    :cond_4
    new-array v4, v3, [Ljava/lang/String;

    .line 8153
    :goto_2
    if-ge v1, v3, :cond_5

    .line 8154
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    aput-object v0, v4, v1

    .line 8153
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 8156
    :cond_5
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Ldfa;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lctk$i;->choose_from_enterprise:I

    .line 8157
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v3, Ldfa$2;

    invoke-direct {v3, p0, p1, v2}, Ldfa$2;-><init>(Ldfa;Ljava/lang/String;Ljava/util/List;)V

    .line 8158
    invoke-virtual {v0, v4, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 8163
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method static synthetic a(Ldfa;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Ldfa;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Ldfa;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 6
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "orgId"    # J

    .prologue
    .line 174
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "orgId"

    .line 175
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "staffId"

    .line 176
    invoke-static {p2, p3}, Ldje;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 177
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    iget-object v1, p0, Ldfa;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 178
    const-string/jumbo v1, "entranceId"

    iget-object v2, p0, Ldfa;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 179
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->getEntranceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 181
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    iget-object v1, p0, Ldfa;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 182
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    .line 181
    invoke-virtual {v2, v1, v3, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 183
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "rlListContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 188
    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "ivWaterMark"    # Landroid/widget/ImageView;

    .prologue
    .line 198
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;)V
    .locals 10
    .param p1, "addAppContainer"    # Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Ldfa;->c:Ldsd;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ldfa;->c:Ldsd;

    .line 6277
    iget-object v0, v0, Ldsd;->g:Ljava/util/List;

    .line 110
    if-eqz v0, :cond_8

    .line 112
    iget-object v0, p0, Ldfa;->a:Landroid/content/Context;

    .line 7040
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "pref_locale"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7042
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7043
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getSystemLocale()Ljava/util/Locale;

    move-result-object v0

    .line 7044
    if-eqz v0, :cond_0

    .line 7045
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "localeStr":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Ldfa;->c:Ldsd;

    .line 7277
    iget-object v0, v0, Ldsd;->g:Ljava/util/List;

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldsd$a;

    .line 115
    .local v7, "button":Ldsd$a;
    iget-object v2, v7, Ldsd$a;->b:Ljava/lang/String;

    .line 8059
    if-eqz v7, :cond_1

    invoke-static {v8}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v3, v6

    .line 116
    :goto_1
    new-instance v5, Ldfa$1;

    invoke-direct {v5, p0, v7}, Ldfa$1;-><init>(Ldfa;Ldsd$a;)V

    move-object v0, p1

    move v4, v1

    .line 115
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(ILjava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Lckj$a;)V

    goto :goto_0

    .line 8060
    :cond_2
    const-string/jumbo v0, "zh_CN"

    invoke-static {v8, v0}, Ldgy;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8061
    iget-object v3, v7, Ldsd$a;->d:Ljava/lang/String;

    goto :goto_1

    .line 8062
    :cond_3
    const-string/jumbo v0, "zh_TW"

    invoke-static {v8, v0}, Ldgy;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8063
    iget-object v3, v7, Ldsd$a;->e:Ljava/lang/String;

    goto :goto_1

    .line 8064
    :cond_4
    const-string/jumbo v0, "zh_HK"

    invoke-static {v8, v0}, Ldgy;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8065
    iget-object v3, v7, Ldsd$a;->f:Ljava/lang/String;

    goto :goto_1

    .line 8066
    :cond_5
    const-string/jumbo v0, "ja_JP"

    invoke-static {v8, v0}, Ldgy;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8067
    iget-object v3, v7, Ldsd$a;->i:Ljava/lang/String;

    goto :goto_1

    .line 8068
    :cond_6
    const-string/jumbo v0, "vi_VN"

    invoke-static {v8, v0}, Ldgy;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8069
    iget-object v3, v7, Ldsd$a;->h:Ljava/lang/String;

    goto :goto_1

    .line 8071
    :cond_7
    iget-object v3, v7, Ldsd$a;->g:Ljava/lang/String;

    goto :goto_1

    .line 125
    .end local v7    # "button":Ldsd$a;
    .end local v8    # "localeStr":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V
    .locals 0
    .param p1, "inputPanelView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 193
    return-void
.end method

.method public final a(Ldsd;)V
    .locals 1
    .param p1, "conversationConfig"    # Ldsd;

    .prologue
    .line 54
    iput-object p1, p0, Ldfa;->c:Ldsd;

    .line 56
    iget-object v0, p0, Ldfa;->c:Ldsd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfa;->c:Ldsd;

    .line 1289
    iget-boolean v0, v0, Ldsd;->a:Z

    .line 56
    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Ldfa;->c:Ldsd;

    .line 59
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    iget-object v5, p0, Ldfa;->c:Ldsd;

    if-eqz v5, :cond_0

    .line 64
    iget-object v5, p0, Ldfa;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_1

    iget-object v5, p0, Ldfa;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 65
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    move v0, v4

    .line 66
    .local v0, "isGroupChat":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v5, p0, Ldfa;->c:Ldsd;

    .line 2285
    iget-object v1, v5, Ldsd;->d:Ljava/lang/String;

    .line 69
    .local v1, "schema":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    .end local v0    # "isGroupChat":Z
    .end local v1    # "schema":Ljava/lang/String;
    :cond_0
    :goto_2
    return v3

    :cond_1
    move v0, v3

    .line 65
    goto :goto_0

    .line 66
    .restart local v0    # "isGroupChat":Z
    :cond_2
    iget-object v5, p0, Ldfa;->c:Ldsd;

    .line 3281
    iget-object v1, v5, Ldsd;->c:Ljava/lang/String;

    goto :goto_1

    .line 73
    .restart local v1    # "schema":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v5, "openId"

    .line 74
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 75
    .local v2, "uriBuilder":Landroid/net/Uri$Builder;
    iget-object v3, p0, Ldfa;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_4

    .line 76
    const-string/jumbo v3, "entranceId"

    iget-object v5, p0, Ldfa;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->getEntranceId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v5, "cid"

    iget-object v6, p0, Ldfa;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 77
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 80
    :cond_4
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v5

    iget-object v3, p0, Ldfa;->a:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    move v3, v4

    .line 82
    goto :goto_2
.end method

.method public a(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 100
    iget-object v0, p0, Ldfa;->c:Ldsd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfa;->c:Ldsd;

    invoke-virtual {v0, p1}, Ldsd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 5
    .param p1, "appId"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Ldfa;->c:Ldsd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldfa;->c:Ldsd;

    .line 4272
    iget-object v3, v0, Ldsd;->e:Landroid/util/SparseBooleanArray;

    if-nez v3, :cond_0

    iget-object v3, v0, Ldsd;->f:Lfp;

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, v0, Ldsd;->f:Lfp;

    if-eqz v3, :cond_3

    iget-object v3, v0, Ldsd;->f:Lfp;

    .line 5096
    invoke-virtual {v3, p1, p2, v4}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4273
    if-eqz v3, :cond_3

    iget-object v0, v0, Ldsd;->f:Lfp;

    .line 6096
    invoke-virtual {v0, p1, p2, v4}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4273
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    .line 105
    :goto_0
    if-eqz v0, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    return v0

    :cond_3
    move v0, v1

    .line 4273
    goto :goto_0

    :cond_4
    move v0, v1

    .line 105
    goto :goto_1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;)Z
    .locals 1
    .param p1, "addAppContainer"    # Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ldfa;->c:Ldsd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfa;->c:Ldsd;

    .line 4263
    iget-boolean v0, v0, Ldsd;->b:Z

    .line 95
    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Ldfa;->a:Landroid/content/Context;

    .line 213
    iput-object v0, p0, Ldfa;->c:Ldsd;

    .line 214
    return-void
.end method
