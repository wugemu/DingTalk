.class public final Ldoy;
.super Ljava/lang/Object;
.source "MenuFavoriteEmotionHandler.java"

# interfaces
.implements Ldon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "atSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    .line 37
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 38
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x10

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 39
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "retail_im_msglist_detail_msgaddemoji"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 41
    :cond_0
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-eqz v4, :cond_1

    .line 42
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 43
    .local v3, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldjy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "commonMediaId":Ljava/lang/String;
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    invoke-static {v4, p3}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldjy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "authMediaId":Ljava/lang/String;
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "authEntity":Ljava/lang/String;
    invoke-static {p3}, Ldkc;->D(Lcom/alibaba/wukong/im/Message;)V

    .line 47
    invoke-static {}, Ldps;->a()Ldps;

    move-result-object v5

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v6

    new-instance v7, Ldoy$1;

    invoke-direct {v7, p0}, Ldoy$1;-><init>(Ldoy;)V

    const-class v8, Lcma;

    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    invoke-interface {v6, v7, v8, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    invoke-virtual {v5, v2, v1, v0, v4}, Ldps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 63
    instance-of v4, p1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v4, :cond_1

    .line 64
    check-cast p1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->b(Lcom/alibaba/wukong/im/Conversation;)V

    .line 68
    .end local v0    # "authEntity":Ljava/lang/String;
    .end local v1    # "authMediaId":Ljava/lang/String;
    .end local v2    # "commonMediaId":Ljava/lang/String;
    .end local v3    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    :cond_1
    return-void
.end method
