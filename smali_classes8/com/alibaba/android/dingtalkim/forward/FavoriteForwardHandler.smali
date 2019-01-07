.class public Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;
.source "FavoriteForwardHandler.java"


# instance fields
.field private mSendMessageObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->mSendMessageObjects:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getForwardTipInfo()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->mSendMessageObjects:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->mSendMessageObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_trans_to_multiple_favorite_tip:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->mSendMessageObjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method protected paramInvalidate()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->mSendMessageObjects:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->mSendMessageObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->paramInvalidate()Z

    move-result v0

    goto :goto_0
.end method

.method public send2ConversationsImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 11
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->mSendMessageObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    .line 52
    .local v5, "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    iget v0, v5, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1

    iget-object v0, v5, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    if-eqz v0, :cond_1

    .line 53
    iget-object v6, v5, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v6, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    .line 54
    .local v6, "videoMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;
    iget-object v0, v6, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->videoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_video_url_null:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1, v9}, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    .line 96
    .end local v5    # "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    .end local v6    # "videoMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;
    :cond_0
    :goto_1
    return-void

    .line 59
    .restart local v5    # "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    :cond_1
    iget v0, v5, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    const/16 v1, 0xca

    if-ne v0, v1, :cond_2

    iget-object v0, v5, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;

    if-eqz v0, :cond_2

    .line 60
    iget-object v6, v5, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v6, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;

    .line 61
    .local v6, "videoMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;
    iget-object v0, v6, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->videoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_video_url_null:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1, v9}, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    goto :goto_1

    .line 67
    .end local v6    # "videoMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->getTextSender(Lcom/alibaba/wukong/im/Conversation;)Ldiz;

    move-result-object v2

    .line 68
    .local v2, "textSender":Ldiz;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->getFromSingleThreadPool()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v8

    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;Ldiz;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V

    invoke-interface {v8, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
