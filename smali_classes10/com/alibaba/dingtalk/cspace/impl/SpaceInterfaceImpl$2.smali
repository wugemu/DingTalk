.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$2;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Landroid/app/Activity;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lcma;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$2;->c:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$2;->a:Lcma;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$2;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1244
    invoke-static {}, Lfzw;->a()Ljava/util/List;

    move-result-object v1

    .line 1246
    .local v1, "spaceCommonList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$2$1;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$2$1;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$2;Ljava/util/List;)V

    .line 1271
    .local v0, "listenerStringList":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$2;->b:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1272
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$2;->b:Landroid/app/Activity;

    .line 1273
    invoke-interface {v2, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listenerStringList":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/String;>;>;"
    check-cast v0, Lcma;

    .line 1276
    .restart local v0    # "listenerStringList":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$2;->b:Landroid/app/Activity;

    .line 2080
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v3, "EVENTBUTLER"

    .line 2081
    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lfzw$1;

    invoke-direct {v5, v0}, Lfzw$1;-><init>(Lcma;)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v5, v6, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/Callback;

    const/16 v4, 0x3e8

    .line 2080
    invoke-interface {v2, v3, v4}, Lcom/alibaba/wukong/im/ConversationService;->listLocalGroupConversations(Lcom/alibaba/wukong/Callback;I)V

    .line 1277
    return-void
.end method
