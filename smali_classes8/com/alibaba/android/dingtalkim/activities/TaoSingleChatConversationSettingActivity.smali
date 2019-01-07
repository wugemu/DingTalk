.class public Lcom/alibaba/android/dingtalkim/activities/TaoSingleChatConversationSettingActivity;
.super Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;
.source "TaoSingleChatConversationSettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # J

    .prologue
    .line 52
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    .line 53
    .local v6, "profileObj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-nez v6, :cond_0

    .line 88
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v5, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    .line 57
    .local v5, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v3, "corpIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 59
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 60
    .local v4, "orgId":Ljava/lang/Long;
    if-eqz v4, :cond_1

    .line 61
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ldjl;->c(J)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "corpId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 63
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v4    # "orgId":Ljava/lang/Long;
    :cond_2
    const/4 v2, 0x0

    .line 69
    .local v2, "corpIdStr":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 70
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 71
    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 73
    :cond_3
    const-string/jumbo v8, "https://ulifem.taobao.com/memberProfile"

    .line 74
    .local v8, "url":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v9

    sget v10, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v9, v10, :cond_5

    .line 75
    const-string/jumbo v8, "https://pre-ulifem.taobao.com/memberProfile"

    .line 79
    :cond_4
    :goto_2
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 80
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string/jumbo v10, "corpId"

    .line 81
    invoke-virtual {v9, v10, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string/jumbo v10, "buyerId"

    .line 82
    invoke-static {p1, p2}, Ldje;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string/jumbo v10, "dd_func_wk"

    const-string/jumbo v11, "true"

    .line 83
    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 84
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "url"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v9

    const/high16 v10, 0x10000000

    invoke-virtual {v9, p0, v0, v10}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 76
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v9

    if-nez v9, :cond_4

    .line 77
    const-string/jumbo v8, "http://ulifem.daily.taobao.net/memberProfile"

    goto :goto_2
.end method


# virtual methods
.method protected final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 47
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "retail_im_msglist_detail_set_profile"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/TaoSingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/TaoSingleChatConversationSettingActivity;->a(Landroid/content/Context;J)V

    .line 49
    return-void
.end method

.method protected final t_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 41
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->t_()V

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/TaoSingleChatConversationSettingActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    return-void
.end method
