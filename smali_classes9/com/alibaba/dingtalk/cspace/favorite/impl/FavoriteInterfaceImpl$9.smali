.class final Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$9;
.super Ljava/lang/Object;
.source "FavoriteInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;
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
.field final synthetic a:Lcky;

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Lcky;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$9;->c:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$9;->a:Lcky;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$9;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 514
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$9;->b:Lcma;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$9;->b:Lcma;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$9;->a:Lcky;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 517
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 499
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1502
    if-eqz p1, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$9;->a:Lcky;

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$9;->a:Lcky;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    .line 2103
    iput-object v1, v0, Lcky;->b:Ljava/lang/String;

    .line 1507
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$9;->b:Lcma;

    if-eqz v0, :cond_1

    .line 1508
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$9;->b:Lcma;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$9;->a:Lcky;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 499
    :cond_1
    return-void
.end method
