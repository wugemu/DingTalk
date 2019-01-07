.class final Lddy$2;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Ldqq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddy;->a(Ldnf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lddy;


# direct methods
.method constructor <init>(Lddy;)V
    .locals 0
    .param p1, "this$0"    # Lddy;

    .prologue
    .line 595
    iput-object p1, p0, Lddy$2;->a:Lddy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/Object;)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "anchorPosition"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 618
    const-string/jumbo v0, "refresh"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "load_pre"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    :cond_0
    iget-object v0, p0, Lddy$2;->a:Lddy;

    .line 4066
    iget-object v0, v0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 619
    if-eqz v0, :cond_1

    .line 620
    invoke-static {}, Ldjz;->a()Ldjz;

    move-result-object v0

    iget-object v2, p0, Lddy$2;->a:Lddy;

    .line 5066
    iget-object v2, v2, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 620
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lddy$2;->a:Lddy;

    .line 6066
    iget-object v3, v3, Lddy;->c:Ldqq;

    .line 620
    invoke-virtual {v3}, Ldqq;->a()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lddy$2;->a:Lddy;

    .line 7066
    iget-object v4, v4, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 620
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Ldjz;->a(Ljava/lang/String;Ljava/util/List;J)V

    .line 622
    :cond_1
    iget-object v3, p0, Lddy$2;->a:Lddy;

    .line 8640
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    iget-object v2, v3, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v2}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8641
    iget-object v0, v3, Lddy;->c:Ldqq;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lddy;->c:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v3, Lddy;->c:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 8643
    iget-object v0, v3, Lddy;->c:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v4

    .line 8644
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 8645
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_4

    .line 8646
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 8647
    if-eqz v0, :cond_3

    .line 8648
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v5

    sget-object v6, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-eq v5, v6, :cond_3

    :goto_1
    move-object v1, v0

    .line 8659
    :cond_2
    iget-object v0, v3, Lddy;->d:Lddx$b;

    invoke-interface {v0, v1}, Lddx$b;->b(Lcom/alibaba/wukong/im/Message;)V

    .line 623
    iget-object v0, p0, Lddy$2;->a:Lddy;

    .line 9066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 623
    invoke-interface {v0}, Lddx$b;->a()V

    .line 624
    return-void

    .line 8645
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 599
    iget-object v0, p0, Lddy$2;->a:Lddy;

    .line 1066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 599
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lddx$b;->c(Z)V

    .line 600
    return-void
.end method

.method public final a(ILjava/lang/Object;Z)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "should"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 604
    iget-object v0, p0, Lddy$2;->a:Lddy;

    .line 2066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 604
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lddx$b;->c(Z)V

    .line 605
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 609
    iget-object v0, p0, Lddy$2;->a:Lddy;

    .line 3066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 609
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lddx$b;->c(Z)V

    .line 610
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 614
    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 628
    iget-object v0, p0, Lddy$2;->a:Lddy;

    .line 10066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 628
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lddx$b;->c(Z)V

    .line 629
    return-void
.end method
