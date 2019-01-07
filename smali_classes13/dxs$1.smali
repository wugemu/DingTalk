.class final Ldxs$1;
.super Lcmg;
.source "GroupRecommendationApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxs;->a(Ljava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/ConversationModel;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxs;


# direct methods
.method constructor <init>(Ldxs;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxs;

    .prologue
    .line 56
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    iput-object p1, p0, Ldxs$1;->a:Ldxs;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    check-cast p1, Ljava/util/List;

    .line 1059
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1060
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1062
    :cond_1
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    .line 1063
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/models/ConversationModel;

    .line 1065
    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->buildConversation(Lcom/alibaba/wukong/idl/im/models/ConversationModel;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    .line 1066
    if-eqz v1, :cond_2

    .line 1067
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 56
    goto :goto_0
.end method
