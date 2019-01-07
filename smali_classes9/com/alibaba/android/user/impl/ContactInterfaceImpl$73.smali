.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$73;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 2894
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$73;->c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$73;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$73;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2915
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "launcher enter updateNewFriendAndGroupUnreadCount()"

    aput-object v1, v0, v2

    const-string/jumbo v1, " getConversation failed,code=%s,reason=%s"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2916
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2894
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2894
    check-cast p1, Ljava/util/List;

    .line 5897
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 5898
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "launcher enter updateNewFriendAndGroupUnreadCount()"

    aput-object v1, v0, v4

    const-string/jumbo v1, " conversation is null"

    aput-object v1, v0, v8

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6071
    :cond_1
    :goto_0
    return-void

    :cond_2
    move v3, v4

    move-object v1, v5

    move-object v2, v5

    .line 5902
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 5903
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 5904
    iget-object v6, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$73;->a:Ljava/lang/String;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 5902
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    .line 5906
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$73;->b:Ljava/lang/String;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v1, v2

    .line 5907
    goto :goto_2

    .line 5910
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$73;->c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .line 6052
    if-eqz v2, :cond_8

    .line 6053
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 6055
    :goto_3
    if-eqz v1, :cond_5

    .line 6056
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v4

    add-int/2addr v0, v4

    .line 6058
    :cond_5
    if-nez v0, :cond_6

    .line 7111
    iput-object v5, v3, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->g:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    .line 6060
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto :goto_0

    .line 6063
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6064
    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;-><init>()V

    iput-object v6, v3, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->g:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    .line 6065
    iget-object v6, v3, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->g:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    iput v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    .line 6066
    iget-object v0, v3, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->g:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    .line 6070
    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 6071
    new-instance v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;Ljava/util/ArrayList;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {v2, v5, v8, v9, v0}, Lcom/alibaba/wukong/im/Conversation;->listPreviousMessages(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 6115
    :cond_7
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 6116
    new-instance v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$76;

    invoke-direct {v0, v3, v1, v4}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$76;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;Ljava/util/ArrayList;)V

    invoke-interface {v1, v5, v8, v9, v0}, Lcom/alibaba/wukong/im/Conversation;->listPreviousMessages(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    :cond_8
    move v0, v4

    goto :goto_3

    :cond_9
    move-object v0, v1

    move-object v1, v2

    goto :goto_2
.end method
