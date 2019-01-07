.class final Ldqq$5;
.super Ldqq$b;
.source "ChatMsgListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldqq;->a(Lcom/alibaba/wukong/im/Message;Ldqq$d;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqq$b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Ldqq;


# direct methods
.method constructor <init>(Ldqq;Ljava/lang/Object;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Ldqq;

    .prologue
    .line 1181
    iput-object p1, p0, Ldqq$5;->c:Ldqq;

    iput-object p2, p0, Ldqq$5;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldqq$5;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0, p1}, Ldqq$b;-><init>(Ldqq;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1183
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    iget-object v1, p0, Ldqq$5;->a:Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Ldqq;->a(Ldqq;ILjava/lang/Object;)V

    .line 1184
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    .line 2040
    invoke-virtual {v0, v2}, Ldqq;->a(Z)V

    .line 1185
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1181
    check-cast p1, Ljava/util/List;

    .line 3189
    if-nez p1, :cond_0

    .line 3190
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3192
    :cond_0
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    iget-object v1, p0, Ldqq$5;->a:Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Ldqq;->b(Ldqq;ILjava/lang/Object;)V

    .line 3194
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    .line 4040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 3194
    if-nez v0, :cond_2

    .line 3195
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5040
    iput-object v1, v0, Ldqq;->c:Ljava/util/List;

    .line 3196
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6040
    iput-object v1, v0, Ldqq;->d:Ljava/util/HashSet;

    .line 3201
    :cond_1
    :goto_0
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    invoke-static {v0, p1}, Ldqq;->a(Ldqq;Ljava/util/List;)V

    .line 3202
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    .line 10040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 3202
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3203
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    invoke-static {v0, p1}, Ldqq;->a(Ldqq;Ljava/util/Collection;)V

    .line 3204
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    .line 11040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 3204
    iget-object v1, p0, Ldqq$5;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3205
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    new-array v1, v6, [Lcom/alibaba/wukong/im/Message;

    iget-object v2, p0, Ldqq$5;->b:Lcom/alibaba/wukong/im/Message;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ldqq;->a(Ldqq;Ljava/util/Collection;)V

    .line 3206
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    iget-object v1, p0, Ldqq$5;->c:Ldqq;

    .line 12040
    iget-object v1, v1, Ldqq;->c:Ljava/util/List;

    .line 3206
    iget-object v2, p0, Ldqq$5;->b:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1, v2}, Ldqq;->a(Ljava/util/List;Lcom/alibaba/wukong/im/Message;)I

    move-result v1

    iget-object v2, p0, Ldqq$5;->a:Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2}, Ldqq;->a(Ldqq;IILjava/lang/Object;)V

    .line 3207
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    .line 13040
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 3207
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 3208
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    .line 14040
    iget-object v1, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 3208
    iget-object v2, p0, Ldqq$5;->b:Lcom/alibaba/wukong/im/Message;

    const/16 v3, 0xb

    new-instance v0, Ldqq$5$1;

    invoke-direct {v0, p0}, Ldqq$5$1;-><init>(Ldqq$5;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Ldqq$5;->c:Ldqq;

    .line 15040
    iget-object v5, v5, Ldqq;->g:Landroid/app/Activity;

    .line 3208
    invoke-static {v0, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v2, v6, v3, v0}, Lcom/alibaba/wukong/im/Conversation;->listNextMessagesAroundAnchor(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V

    :goto_1
    return-void

    .line 3197
    :cond_2
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    .line 7040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 3197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3198
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    .line 8040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 3198
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3199
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    .line 9040
    iget-object v0, v0, Ldqq;->d:Ljava/util/HashSet;

    .line 3199
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 3250
    :cond_3
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    iget-object v1, p0, Ldqq$5;->a:Ljava/lang/Object;

    invoke-static {v0, v3, v1, v3}, Ldqq;->a(Ldqq;ILjava/lang/Object;Z)V

    .line 3251
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    invoke-static {v0, v3}, Ldqq;->a(Ldqq;Z)V

    goto :goto_1
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1256
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    iget-object v1, p0, Ldqq$5;->a:Ljava/lang/Object;

    invoke-static {v0, v2, p1, p2, v1}, Ldqq;->a(Ldqq;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1257
    iget-object v0, p0, Ldqq$5;->c:Ldqq;

    .line 3040
    invoke-virtual {v0, v2}, Ldqq;->a(Z)V

    .line 1258
    return-void
.end method
