.class final Liav$37;
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
        "Lcom/alibaba/wukong/idl/im/models/GroupNickModel;",
        "Lcom/alibaba/wukong/im/GroupNickObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Liav;


# direct methods
.method constructor <init>(Liav;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Liav;

    .prologue
    .line 1326
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    iput-object p1, p0, Liav$37;->b:Liav;

    iput-object p3, p0, Liav$37;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1326
    check-cast p1, Lcom/alibaba/wukong/idl/im/models/GroupNickModel;

    .line 2329
    if-eqz p1, :cond_0

    .line 2330
    new-instance v0, Lcom/alibaba/wukong/im/GroupNickObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/GroupNickObject;-><init>()V

    .line 2331
    iget-object v1, p0, Liav$37;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/GroupNickObject;->setConversationId(Ljava/lang/String;)V

    .line 2332
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/wukong/im/GroupNickObject;->setOpenId(J)V

    .line 2333
    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/GroupNickModel;->groupNick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/GroupNickObject;->setGroupNick(Ljava/lang/String;)V

    .line 2334
    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/GroupNickModel;->tag:Ljava/lang/Integer;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/GroupNickObject;->setTag(I)V

    .line 2335
    :goto_0
    return-object v0

    .line 2337
    :cond_0
    const/4 v0, 0x0

    .line 1326
    goto :goto_0
.end method
