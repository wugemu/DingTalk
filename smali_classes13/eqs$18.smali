.class final Leqs$18;
.super Lerz;
.source "ContactSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leqs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lerz",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Leqs;


# direct methods
.method constructor <init>(Leqs;Leqq;Ljava/lang/String;Leoe;)V
    .locals 0
    .param p1, "this$0"    # Leqs;
    .param p2, "baseSearchPresenter"    # Leqq;
    .param p3, "keyWord"    # Ljava/lang/String;
    .param p4, "queryLog"    # Leoe;

    .prologue
    .line 988
    iput-object p1, p0, Leqs$18;->a:Leqs;

    invoke-direct {p0, p2, p3, p4}, Lerz;-><init>(Leqq;Ljava/lang/String;Leoe;)V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 988
    check-cast p1, Ljava/util/List;

    .line 1992
    iget-object v0, p0, Leqs$18;->a:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2041
    iget-object v0, p0, Lerz;->c:Lesa;

    invoke-virtual {v0}, Lesa;->b()Z

    move-result v0

    .line 1996
    if-eqz v0, :cond_1

    .line 2000
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2001
    :cond_0
    const-string/jumbo v0, "[Contact]conversations empty"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2002
    iget-object v0, p0, Leqs$18;->a:Leqs;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Leqs;->a(Leqs;I)I

    .line 2003
    iget-object v0, p0, Leqs$18;->a:Leqs;

    invoke-virtual {v0}, Leqs;->a()V

    .line 2004
    :cond_1
    :goto_0
    return-void

    .line 2007
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2008
    if-eqz v0, :cond_3

    .line 2009
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v2, v3, :cond_3

    .line 2010
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2011
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 2012
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 2013
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x9

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 2014
    :cond_4
    iget-object v2, p0, Leqs$18;->a:Leqs;

    invoke-static {v2}, Leqs;->i(Leqs;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2018
    :cond_5
    iget-object v0, p0, Leqs$18;->a:Leqs;

    invoke-static {v0}, Leqs;->j(Leqs;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1028
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "searchNonRelationContacts exception"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 1050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1029
    iget-object v0, p0, Leqs$18;->a:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1034
    :goto_0
    return-void

    .line 1032
    :cond_0
    iget-object v0, p0, Leqs$18;->a:Leqs;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Leqs;->a(Leqs;I)I

    .line 1033
    iget-object v0, p0, Leqs$18;->a:Leqs;

    invoke-virtual {v0}, Leqs;->a()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1024
    return-void
.end method
