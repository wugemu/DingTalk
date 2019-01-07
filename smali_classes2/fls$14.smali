.class final Lfls$14;
.super Ljava/lang/Object;
.source "ContactUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfls;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1342
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "resetGroupRequestUnreadCount() "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ","

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1343
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1323
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1323
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 2326
    if-eqz p1, :cond_0

    .line 2330
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 2332
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2333
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->read()V

    .line 2337
    :goto_0
    const-string/jumbo v0, "resetGroupRequestUnreadCount() friend has reset unread count."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1323
    :cond_0
    return-void

    .line 2335
    :cond_1
    const-string/jumbo v0, "resetGroupRequestUnreadCount() friend latest message null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
