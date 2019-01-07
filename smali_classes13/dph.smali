.class public final Ldph;
.super Ljava/lang/Object;
.source "MenuRemindUpdateHandler.java"

# interfaces
.implements Ldon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "atSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    .line 26
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 35
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 30
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 33
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1, p2, p3}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0
.end method
