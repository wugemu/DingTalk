.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$44;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/ConversationDisplayProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    .prologue
    .line 2932
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$44;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastestMsg(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/Message;
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "realLastMsg"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2936
    if-nez p1, :cond_1

    .line 2937
    const/4 p2, 0x0

    .line 3066
    .end local p2    # "realLastMsg":Lcom/alibaba/wukong/im/Message;
    :cond_0
    :goto_0
    return-object p2

    .line 2939
    .restart local p2    # "realLastMsg":Lcom/alibaba/wukong/im/Message;
    :cond_1
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v0

    .line 3060
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->loadConversationsUseV3()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3063
    iget-object v1, v0, Ldks;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3064
    iget-object v0, v0, Ldks;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkt;

    .line 3065
    invoke-virtual {v0, p1}, Ldkt;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3419
    iget-object p2, v0, Ldkt;->b:Lcom/alibaba/wukong/im/Message;

    goto :goto_0
.end method

.method public final getUnreadCount(Lcom/alibaba/wukong/im/Conversation;I)I
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "realUnreadCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2944
    if-nez p1, :cond_1

    .line 2945
    const/4 p2, 0x0

    .line 4081
    .end local p2    # "realUnreadCount":I
    :cond_0
    :goto_0
    return p2

    .line 2947
    .restart local p2    # "realUnreadCount":I
    :cond_1
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v0

    .line 4075
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->loadConversationsUseV3()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4078
    iget-object v1, v0, Ldks;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4079
    iget-object v0, v0, Ldks;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkt;

    .line 4080
    invoke-virtual {v0, p1}, Ldkt;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4423
    iget p2, v0, Ldkt;->c:I

    goto :goto_0
.end method
