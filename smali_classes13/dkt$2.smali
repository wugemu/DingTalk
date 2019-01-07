.class final Ldkt$2;
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
    .line 133
    iput-object p1, p0, Ldkt$2;->a:Ldkt;

    invoke-direct {p0}, Ldys;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1136
    iget-object v0, p0, Ldkt$2;->a:Ldkt;

    invoke-static {v0, v4}, Ldkt;->a(Ldkt;Z)Z

    .line 1137
    if-nez p1, :cond_0

    .line 1138
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Ldkt$2;->a:Ldkt;

    .line 1139
    invoke-virtual {v3}, Ldkt;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, "createConversation cid:"

    aput-object v3, v2, v5

    iget-object v3, p0, Ldkt$2;->a:Ldkt;

    .line 1140
    invoke-virtual {v3}, Ldkt;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, "return null"

    aput-object v3, v2, v7

    .line 1139
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1138
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Ldkt$2;->a:Ldkt;

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "createConversation cid:"

    aput-object v2, v1, v4

    iget-object v2, p0, Ldkt$2;->a:Ldkt;

    .line 1142
    invoke-virtual {v2}, Ldkt;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "return null"

    aput-object v2, v1, v6

    .line 1141
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldkt;->a(Ldkt;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1145
    :cond_0
    iget-object v0, p0, Ldkt$2;->a:Ldkt;

    invoke-static {v0, p1}, Ldkt;->a(Ldkt;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;

    .line 1146
    iget-object v0, p0, Ldkt$2;->a:Ldkt;

    invoke-static {v0, v5}, Ldkt;->b(Ldkt;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Ldkt$2;->a:Ldkt;

    invoke-static {v0, v3}, Ldkt;->a(Ldkt;Z)Z

    .line 153
    iget-object v0, p0, Ldkt$2;->a:Ldkt;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "createConversation cid:"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Ldkt$2;->a:Ldkt;

    .line 154
    invoke-virtual {v3}, Ldkt;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "exception, code:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ",msg:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    .line 153
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldkt;->a(Ldkt;Ljava/lang/String;)V

    .line 155
    return-void
.end method
