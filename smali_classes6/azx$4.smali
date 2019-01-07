.class final Lazx$4;
.super Ljava/lang/Object;
.source "DingCreateActivityV2BasePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazx;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/ding/data/object/ConversationBoardObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lazx;


# direct methods
.method constructor <init>(Lazx;)V
    .locals 0
    .param p1, "this$0"    # Lazx;

    .prologue
    .line 590
    iput-object p1, p0, Lazx$4;->a:Lazx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 590
    check-cast p1, Ljava/util/List;

    .line 1595
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1596
    :cond_0
    :goto_0
    return-void

    .line 1599
    :cond_1
    iget-object v0, p0, Lazx$4;->a:Lazx;

    iget-object v0, v0, Lazx;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1600
    iget-object v0, p0, Lazx$4;->a:Lazx;

    iget-object v0, v0, Lazx;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1602
    iget-object v3, p0, Lazx$4;->a:Lazx;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    iput-object v0, v3, Lazx;->A:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    .line 1603
    iget-object v0, p0, Lazx$4;->a:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0, v1}, Lazy$b;->i(Z)V

    .line 1604
    iget-object v0, p0, Lazx$4;->a:Lazx;

    iget-object v3, v0, Lazx;->y:Lazy$b;

    iget-object v0, p0, Lazx$4;->a:Lazx;

    iget-object v0, v0, Lazx;->A:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v4, v0}, Lazy$b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 615
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 610
    return-void
.end method
