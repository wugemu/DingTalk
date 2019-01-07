.class final Ldqq$5$1;
.super Ldqq$b;
.source "ChatMsgListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldqq$5;
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
.field final synthetic a:Ldqq$5;


# direct methods
.method constructor <init>(Ldqq$5;)V
    .locals 1
    .param p1, "this$1"    # Ldqq$5;

    .prologue
    .line 1208
    iput-object p1, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, p1, Ldqq$5;->c:Ldqq;

    invoke-direct {p0, v0}, Ldqq$b;-><init>(Ldqq;)V

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

    .line 1210
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    iget-object v1, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v1, v1, Ldqq$5;->a:Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Ldqq;->a(Ldqq;ILjava/lang/Object;)V

    .line 1211
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    .line 2040
    invoke-virtual {v0, v2}, Ldqq;->a(Z)V

    .line 1212
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1208
    check-cast p1, Ljava/util/List;

    .line 3215
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    .line 4040
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 3215
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3216
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 3217
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    .line 5040
    iput-boolean v3, v0, Ldqq;->f:Z

    .line 3218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3224
    :goto_0
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    iget-object v1, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v1, v1, Ldqq$5;->a:Ljava/lang/Object;

    .line 8040
    invoke-virtual {v0, v3, v1}, Ldqq;->b(ILjava/lang/Object;)V

    .line 3226
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    .line 9040
    invoke-virtual {v0, p1}, Ldqq;->a(Ljava/util/List;)V

    .line 3227
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    .line 10040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 3227
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3228
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    .line 11040
    invoke-virtual {v0, p1}, Ldqq;->a(Ljava/util/Collection;)V

    .line 3229
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    iget-object v1, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v1, v1, Ldqq$5;->c:Ldqq;

    .line 12040
    iget-object v1, v1, Ldqq;->c:Ljava/util/List;

    .line 3229
    iget-object v2, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v2, v2, Ldqq$5;->b:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1, v2}, Ldqq;->a(Ljava/util/List;Lcom/alibaba/wukong/im/Message;)I

    move-result v1

    iget-object v2, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v2, v2, Ldqq$5;->a:Ljava/lang/Object;

    .line 13040
    invoke-virtual {v0, v3, v1, v2}, Ldqq;->a(IILjava/lang/Object;)V

    .line 3235
    :goto_1
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    iget-object v1, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v1, v1, Ldqq$5;->a:Ljava/lang/Object;

    invoke-static {v0, v3, v1, v3}, Ldqq;->a(Ldqq;ILjava/lang/Object;Z)V

    .line 3236
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    .line 18040
    invoke-virtual {v0, v3}, Ldqq;->a(Z)V

    .line 1208
    return-void

    .line 3219
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 3220
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    .line 6040
    iput-boolean v3, v0, Ldqq;->f:Z

    goto :goto_0

    .line 3222
    :cond_1
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    .line 7040
    iput-boolean v4, v0, Ldqq;->f:Z

    goto :goto_0

    .line 3231
    :cond_2
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    iget-object v1, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v1, v1, Ldqq$5;->a:Ljava/lang/Object;

    .line 14040
    invoke-virtual {v0, v3, v1}, Ldqq;->b(ILjava/lang/Object;)V

    .line 3232
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    iget-object v1, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v1, v1, Ldqq$5;->c:Ldqq;

    .line 15040
    iget-object v1, v1, Ldqq;->c:Ljava/util/List;

    .line 3232
    iget-object v2, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v2, v2, Ldqq$5;->b:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1, v2}, Ldqq;->a(Ljava/util/List;Lcom/alibaba/wukong/im/Message;)I

    move-result v1

    iget-object v2, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v2, v2, Ldqq$5;->a:Ljava/lang/Object;

    .line 16040
    invoke-virtual {v0, v3, v1, v2}, Ldqq;->a(IILjava/lang/Object;)V

    .line 3233
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    .line 17040
    iput-boolean v4, v0, Ldqq;->f:Z

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

    .line 1240
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    iget-object v1, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v1, v1, Ldqq$5;->a:Ljava/lang/Object;

    invoke-static {v0, v2, p1, p2, v1}, Ldqq;->a(Ldqq;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1241
    iget-object v0, p0, Ldqq$5$1;->a:Ldqq$5;

    iget-object v0, v0, Ldqq$5;->c:Ldqq;

    .line 3040
    invoke-virtual {v0, v2}, Ldqq;->a(Z)V

    .line 1242
    return-void
.end method
