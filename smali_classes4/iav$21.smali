.class final Liav$21;
.super Lhzy;
.source "ConversationRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/ConversationCardModel;",
        "Lcom/alibaba/wukong/im/ConversationCard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Liav;


# direct methods
.method constructor <init>(Liav;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Liav;

    .prologue
    .line 1059
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/ConversationCard;>;"
    iput-object p1, p0, Liav$21;->a:Liav;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1059
    check-cast p1, Lcom/alibaba/wukong/idl/im/models/ConversationCardModel;

    .line 2062
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/im/conversation/ConversationCardImpl;->fromConversationCardModel(Lcom/alibaba/wukong/idl/im/models/ConversationCardModel;J)Lcom/alibaba/wukong/im/conversation/ConversationCardImpl;

    move-result-object v0

    .line 1059
    return-object v0
.end method
