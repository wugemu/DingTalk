.class public final Lgwa;
.super Ljava/lang/Object;
.source "ShareUnitInfoFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 21
    .local v0, "shareUnitInfo":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 22
    sget v1, Lgvn$d;->ic_share_whatsapp_friend_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->and_share_whatsapp_friend:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 24
    const-string/jumbo v1, "com.whatsapp"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 25
    const-string/jumbo v1, "THIRD_WHATSAPP_FRIEND"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v1, "whatsapp"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 27
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "iconRes"    # I

    .prologue
    .line 199
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 200
    .local v0, "shareUnitInfo":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 201
    if-lez p2, :cond_1

    .end local p2    # "iconRes":I
    :goto_0
    invoke-virtual {v0, p2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->share_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 204
    const-string/jumbo v1, "DINGDING_REFRESH"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v1, "dingding_refresh"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 206
    return-object v0

    .line 201
    .restart local p1    # "title":Ljava/lang/String;
    .restart local p2    # "iconRes":I
    :cond_1
    sget p2, Lgvn$d;->ic_share_refresh:I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 32
    .local v0, "shareUnitInfo":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 33
    sget v1, Lgvn$d;->share_ic_and_system_more:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 34
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->dt_share_more:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 36
    const-string/jumbo v1, "ANDROID_SYSTEM"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 37
    const-string/jumbo v1, "andsystem"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 56
    .local v0, "shareUnitInfo":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 57
    sget v1, Lgvn$d;->ic_share_wx_group_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->share_wx_group:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "THIRD_WEIXIN_CIRCLE"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "wechatcircle"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 62
    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 67
    .local v0, "shareUnitInfo":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 68
    sget v1, Lgvn$d;->ic_share_sina_weibo_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->share_sina_weibo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v1, "THIRD_SINA_WEIBO"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v1, "weibo"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 73
    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 122
    .local v0, "shareUnitInfo":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 123
    sget v1, Lgvn$d;->ic_share_dingtalk_friend:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->share_dingding_friend:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v1, "DINGDING_FRIEND"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v1, "dingtalk"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 128
    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 133
    .local v0, "shareUnitInfo":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 134
    sget v1, Lgvn$d;->ic_share_webview_open_in_browser:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->share_open_in_browser:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v1, "DINGDING_OPENINBROWSER"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v1, "dingding_openInBrowser"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 139
    return-object v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 144
    .local v0, "shareUnitInfo":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 145
    invoke-static {p0}, Lgwe;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    sget v1, Lgvn$d;->ic_share_webview_open_in_ucweb:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 150
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->share_open_in_ucweb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 152
    const-string/jumbo v1, "DINGDING_OPENINUCWEB"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v1, "dingding_openInUCweb"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 154
    return-object v0

    .line 148
    .restart local p1    # "title":Ljava/lang/String;
    :cond_1
    sget v1, Lgvn$d;->ic_share_webview_open_in_ucweb_activity:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 247
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 248
    .local v0, "shareUnitInfo":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 249
    sget v1, Lgvn$d;->ic_share_alipay_friend_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->dt_im_share_alipay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 251
    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v1, "Share to AliPay"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 253
    const-string/jumbo v1, "alipayfriend"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 254
    return-object v0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 265
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 266
    .local v0, "shareUnitInfo":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 267
    sget v1, Lgvn$d;->ic_share_alipay_timeline_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->dt_im_share_alipayliving:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 269
    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 270
    const-string/jumbo v1, "Share to AliPay TimeLine"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 271
    const-string/jumbo v1, "alipaylife"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 272
    return-object v0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 276
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 277
    .local v0, "shareUnitInfo":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 278
    sget v1, Lgvn$d;->ic_share_favorite:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->share_favorite:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 281
    const-string/jumbo v1, "DINGDING_FAVORITE"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v1, "DINGDING_FAVORITE"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 283
    return-object v0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 304
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 305
    .local v0, "shareUnitInfo":Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 306
    sget v1, Lgvn$d;->ic_share_fb_friend_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->and_share_fb_friend:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v1, "THIRD_FACEBOOK_FRIEND"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v1, "facebook"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 311
    return-object v0
.end method
