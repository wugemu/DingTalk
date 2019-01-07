.class final Ldxm$1;
.super Lcmg;
.source "ConversationSafeAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxm;->a(Ldri;Lcma;)V
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
        "Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

.field final synthetic b:Ldxm;


# direct methods
.method constructor <init>(Ldxm;Lcma;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    .locals 0
    .param p1, "this$0"    # Ldxm;

    .prologue
    .line 45
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    iput-object p1, p0, Ldxm$1;->b:Ldxm;

    iput-object p3, p0, Ldxm$1;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    check-cast p1, Ljava/util/List;

    .line 1049
    if-nez p1, :cond_0

    .line 1050
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1052
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1053
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    .line 1054
    if-eqz v0, :cond_1

    .line 1058
    invoke-static {}, Liaf;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->messageId:Ljava/lang/Long;

    .line 1059
    new-instance v3, Lcom/alibaba/wukong/idl/im/models/MessageModel;

    invoke-direct {v3}, Lcom/alibaba/wukong/idl/im/models/MessageModel;-><init>()V

    .line 1060
    iput-object v0, v3, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    .line 1061
    const-wide/16 v4, 0x0

    iget-object v0, p0, Ldxm$1;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {v3, v4, v5, v0}, Libt;->a(Lcom/alibaba/wukong/idl/im/models/MessageModel;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_1

    .line 1063
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 45
    goto :goto_0
.end method
