.class public Lccq;
.super Ljava/lang/Object;
.source "NotificationsSettingManagerInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)Landroid/net/Uri;
    .locals 1
    .param p1, "scene"    # I
    .param p2, "type"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 49
    const-class v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v2, "notification_settings"

    const-string/jumbo v3, "notification_enabled"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 50
    .local v0, "cs":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_0

    .line 51
    const-string/jumbo v1, "1"

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 53
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public b(II)Lcom/alibaba/android/dingtalkbase/notification/Sound;
    .locals 1
    .param p1, "scene"    # I
    .param p2, "type"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 62
    const-class v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v2, "wk_xpn"

    const-string/jumbo v3, "show_detail"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 63
    .local v0, "cs":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v1, "1"

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 66
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public d()Lchj;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lchj;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lchj;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lchj;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lchj;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method
