.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/app/Activity;Landroid/os/Bundle;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3;->e:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3;->b:Landroid/os/Bundle;

    iput-boolean p4, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3;->c:Z

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 748
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 698
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 698
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1701
    if-eqz p1, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3;->b:Landroid/os/Bundle;

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3;->c:Z

    invoke-static {v0, p1, v1, v2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Landroid/os/Bundle;Z)V

    .line 1709
    :goto_0
    return-void

    .line 1704
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3;->d:Ljava/lang/String;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1706
    sget v0, Lctk$i;->and_ding_conversation_not_exist:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1707
    const-string/jumbo v0, "im"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "getConv null nav to a group chat which is not exist"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1711
    :cond_1
    new-instance v1, Lcom/alibaba/wukong/im/CreateConversationParams;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/CreateConversationParams;-><init>()V

    .line 1712
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTitle(Ljava/lang/String;)V

    .line 1713
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setIcon(Ljava/lang/String;)V

    .line 1714
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setMessage(Lcom/alibaba/wukong/im/Message;)V

    .line 1715
    invoke-virtual {v1, v4}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTypeMask(I)V

    .line 1716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1717
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3;->d:Ljava/lang/String;

    invoke-static {v2}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1718
    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setOpenIds(Ljava/util/List;)V

    .line 1719
    invoke-static {}, Ldzb;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1720
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1721
    const-string/jumbo v2, "scheme"

    const-string/jumbo v3, "https://qr.dingtalk.com/page/member_messages"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setExtension(Ljava/util/Map;)V

    .line 1723
    const-wide/16 v2, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTag(J)V

    .line 1724
    invoke-virtual {v1, v4}, Lcom/alibaba/wukong/im/CreateConversationParams;->setForceRpcIfLocalNotExist(Z)V

    .line 1726
    :cond_2
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3$1;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3;)V

    invoke-interface {v0, v2, v1}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/CreateConversationParams;)V

    goto/16 :goto_0
.end method
