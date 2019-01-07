.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic d:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;Ljava/util/ArrayList;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 3071
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;->d:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3104
    const-string/jumbo v0, "updateNewFriendAndGroupUnreadCount(c1,c2) listPreviousMessages failed,code=%s,reason=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3105
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 3071
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3071
    check-cast p1, Ljava/util/List;

    .line 4074
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;->d:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;->b:Ljava/util/ArrayList;

    invoke-static {v0, p1, v1, v2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/util/List;Lcom/alibaba/wukong/im/Conversation;Ljava/util/ArrayList;)V

    .line 4076
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4077
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;->c:Lcom/alibaba/wukong/im/Conversation;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x14

    new-instance v4, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75$1;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/wukong/im/Conversation;->listPreviousMessages(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V

    :goto_0
    return-void

    .line 4098
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->n:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto :goto_0
.end method
