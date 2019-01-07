.class public final Ldoz;
.super Ljava/lang/Object;
.source "MenuFavoriteHandler.java"

# interfaces
.implements Ldon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "atSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    .line 23
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 24
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_collection_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v0

    .line 26
    .local v0, "favoriteInterface":Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;
    invoke-virtual {v0, p1, p3, p2}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    .line 28
    .end local v0    # "favoriteInterface":Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;
    :cond_0
    return-void
.end method
