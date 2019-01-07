.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75$1;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;
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
.field final synthetic a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;

    .prologue
    .line 3077
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;

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
    const/4 v2, 0x0

    .line 3086
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 3087
    const-string/jumbo v0, "updateNewFriendAndGroupUnreadCount(c1,c2) listPreviousMessages failed,code=%s,reason=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3088
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 3077
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3077
    check-cast p1, Ljava/util/List;

    .line 4080
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;

    iget-object v0, v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;->d:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;

    iget-object v1, v1, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;->c:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;

    iget-object v2, v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$75;->b:Ljava/util/ArrayList;

    invoke-static {v0, p1, v1, v2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/util/List;Lcom/alibaba/wukong/im/Conversation;Ljava/util/ArrayList;)V

    .line 4081
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->n:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 3077
    return-void
.end method
