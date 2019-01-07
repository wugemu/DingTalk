.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 2161
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2164
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2164
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2165
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2166
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 2167
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 2168
    .local v1, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v1, :cond_3

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2169
    const/4 v4, 0x0

    .line 2170
    .local v4, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 4116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 2170
    if-eqz v5, :cond_0

    .line 2171
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 5116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 2171
    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2172
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 2171
    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    .line 2174
    :cond_0
    if-eqz v4, :cond_1

    .line 2175
    invoke-static {v1, v4}, Ldza;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 2177
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 6116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c:Landroid/os/Handler;

    .line 2177
    new-instance v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18$1;

    invoke-direct {v6, p0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18$1;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2186
    .end local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v4    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    return-void

    .line 2166
    .restart local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
