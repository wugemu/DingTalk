.class final Ldkt$1;
.super Ldys;
.source "BaseConversationAggregation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldkt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldys",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldkt;


# direct methods
.method constructor <init>(Ldkt;)V
    .locals 0
    .param p1, "this$0"    # Ldkt;

    .prologue
    .line 88
    iput-object p1, p0, Ldkt$1;->a:Ldkt;

    invoke-direct {p0}, Ldys;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 88
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1091
    if-eqz p1, :cond_0

    .line 1092
    iget-object v0, p0, Ldkt$1;->a:Ldkt;

    invoke-static {v0, v4}, Ldkt;->a(Ldkt;Z)Z

    .line 1093
    iget-object v0, p0, Ldkt$1;->a:Ldkt;

    invoke-static {v0, p1}, Ldkt;->a(Ldkt;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;

    .line 1094
    iget-object v0, p0, Ldkt$1;->a:Ldkt;

    invoke-static {v0, v4}, Ldkt;->b(Ldkt;Z)V

    :goto_0
    return-void

    .line 1096
    :cond_0
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Ldkt$1;->a:Ldkt;

    .line 1097
    invoke-virtual {v3}, Ldkt;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "getConversation cid:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ldkt$1;->a:Ldkt;

    .line 1098
    invoke-virtual {v4}, Ldkt;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, " is null, create it "

    aput-object v4, v2, v3

    .line 1097
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1096
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Ldkt$1;->a:Ldkt;

    invoke-static {v0}, Ldkt;->a(Ldkt;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 105
    iget-object v0, p0, Ldkt$1;->a:Ldkt;

    invoke-static {v0, v4}, Ldkt;->a(Ldkt;Z)Z

    .line 106
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Ldkt$1;->a:Ldkt;

    .line 107
    invoke-virtual {v3}, Ldkt;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "getConversation error, code:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ",msg:"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
