.class public final Ldpd;
.super Ljava/lang/Object;
.source "MenuMoreHandler.java"

# interfaces
.implements Ldon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "menuSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    .line 24
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "chat_more_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 27
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    instance-of v2, p1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 28
    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 29
    .local v0, "activity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->U()Ldru;

    move-result-object v1

    .line 30
    .local v1, "msm":Ldru;
    if-eqz v1, :cond_0

    .line 31
    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Ldru;->a(Lcom/alibaba/wukong/im/Message;Z)V

    .line 32
    invoke-virtual {v1}, Ldru;->c()V

    .line 35
    .end local v0    # "activity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    .end local v1    # "msm":Ldru;
    :cond_0
    return-void
.end method
