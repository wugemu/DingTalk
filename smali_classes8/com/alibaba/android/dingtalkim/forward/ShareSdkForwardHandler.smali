.class public Lcom/alibaba/android/dingtalkim/forward/ShareSdkForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
.source "ShareSdkForwardHandler.java"


# instance fields
.field private mShareDelegate:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)V
    .locals 0
    .param p1, "shareDelegate"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareSdkForwardHandler;->mShareDelegate:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .line 19
    return-void
.end method


# virtual methods
.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 6
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->onBackPressed(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareSdkForwardHandler;->mShareDelegate:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareSdkForwardHandler;->mShareDelegate:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .line 1844
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[ShareDelegate] "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "userCancel"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const-string/jumbo v1, "user cancel"

    .line 1847
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b:Ljava/lang/String;

    const/4 v4, -0x2

    invoke-static {v2, v3, v4, v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    .line 1848
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->l:Z

    if-eqz v1, :cond_0

    .line 1849
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Landroid/app/Activity;)V

    .line 37
    :cond_0
    return-void
.end method

.method protected paramInvalidate()Z
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareSdkForwardHandler;->mShareDelegate:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 41
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/forward/ShareSdkForwardHandler;->mShareDelegate:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iget-object v1, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2202
    if-eqz v1, :cond_0

    .line 2203
    iget-object v0, v7, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2204
    sget-object v0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a:Ljava/lang/String;

    const-string/jumbo v1, "share to conversation failed, no network"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    sget v0, Lctk$i;->and_network_no_connection:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2206
    :cond_0
    :goto_0
    return-void

    .line 2208
    :cond_1
    sget v0, Lctk$i;->loading:I

    invoke-virtual {v7, v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(I)V

    .line 2209
    new-instance v5, Lgwo;

    invoke-direct {v5}, Lgwo;-><init>()V

    .line 2210
    iget-object v0, v7, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->f:Ljava/lang/String;

    iput-object v0, v5, Lgwo;->d:Ljava/lang/String;

    .line 2211
    iget-object v0, v7, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->e:Ljava/lang/String;

    iput-object v0, v5, Lgwo;->a:Ljava/lang/String;

    .line 2212
    iget-object v0, v7, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->g:Ljava/lang/String;

    iput-object v0, v5, Lgwo;->c:Ljava/lang/String;

    .line 2213
    iget-object v0, v7, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->h:Ljava/lang/String;

    iput-object v0, v5, Lgwo;->b:Ljava/lang/String;

    .line 2214
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2216
    :try_start_0
    const-string/jumbo v0, "to"

    const-string/jumbo v3, "chat"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2217
    const-string/jumbo v0, "cid"

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2221
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2223
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 2232
    new-instance v2, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$11;

    invoke-direct {v2, v7, v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$11;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;)V

    .line 2224
    const-class v1, Lcma;

    iget-object v3, v7, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j:Landroid/app/Activity;

    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newAdapterCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->k:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .line 2225
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v0

    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d:Ljava/lang/String;

    iget-object v2, v7, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b:Ljava/lang/String;

    iget-object v3, v7, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->c:Ljava/lang/String;

    iget v4, v7, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->k:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .line 2226
    invoke-virtual {v7}, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->asInterface()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    .line 2225
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->checkShareApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lgwo;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 2218
    :catch_0
    move-exception v0

    .line 2219
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
