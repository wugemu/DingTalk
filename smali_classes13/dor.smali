.class final Ldor;
.super Ljava/lang/Object;
.source "MenuCopyLinkHandler.java"

# interfaces
.implements Ldon;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "menuSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    .line 23
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    .line 27
    .local v2, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_0

    instance-of v3, v2, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 31
    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 32
    .local v1, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->url()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "copiedContent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 37
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lctk$i;->chat_copy_is_success:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-static {p1, v0, v3}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    goto :goto_0
.end method
