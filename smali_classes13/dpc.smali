.class public final Ldpc;
.super Ljava/lang/Object;
.source "MenuMoreEmotionHandler.java"

# interfaces
.implements Ldon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "menuSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    .line 21
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    invoke-static {p3}, Ldkc;->p(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v0

    .line 1054
    .local v0, "topicId":J
    invoke-static {}, Ldiy$a;->a()Ldiy;

    move-result-object v2

    .line 25
    invoke-virtual {v2, v0, v1}, Ldiy;->a(J)V

    goto :goto_0
.end method
