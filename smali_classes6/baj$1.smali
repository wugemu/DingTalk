.class final Lbaj$1;
.super Ljava/lang/Object;
.source "DingMeetingFocusRecycleListPresenter.java"

# interfaces
.implements Lcom/alibaba/android/ding/base/objects/ObjectDing$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbaj;


# direct methods
.method constructor <init>(Lbaj;)V
    .locals 0
    .param p1, "this$0"    # Lbaj;

    .prologue
    .line 39
    iput-object p1, p0, Lbaj$1;->a:Lbaj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p1, "orderlyData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .local p2, "orderlessData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lbaj$1;->a:Lbaj;

    .line 1030
    iget-object v0, v0, Lbaj;->c:Ljava/util/Collection;

    .line 43
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lbaj$1;->a:Lbaj;

    .line 2030
    iget-object v0, v0, Lbaj;->c:Ljava/util/Collection;

    .line 45
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 47
    :cond_0
    if-eqz p2, :cond_1

    .line 48
    iget-object v0, p0, Lbaj$1;->a:Lbaj;

    .line 3030
    iget-object v0, v0, Lbaj;->c:Ljava/util/Collection;

    .line 48
    invoke-interface {v0, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 51
    :cond_1
    iget-object v3, p0, Lbaj$1;->a:Lbaj;

    .line 4102
    iget v0, v3, Lbaj;->b:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_3

    .line 4103
    iget-object v0, v3, Lbaj;->a:Lbai$b;

    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v4

    iget-object v5, v3, Lbaj;->c:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lbbs;->n(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    iget v3, v3, Lbaj;->b:I

    invoke-interface {v0, v4, v3}, Lbai$b;->a(Ljava/util/Collection;I)V

    .line 53
    :goto_0
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "DingMeetingFocusRecycleListPresenter, onDataSetChanged: orderlyData"

    aput-object v0, v3, v2

    if-eqz p1, :cond_5

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x2

    const-string/jumbo v1, ", orderlessData:"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    if-eqz p2, :cond_2

    .line 56
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 53
    invoke-static {v3}, Lbkd;->a([Ljava/lang/String;)V

    .line 57
    return-void

    .line 4105
    :cond_3
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v0

    iget-object v4, v3, Lbaj;->c:Ljava/util/Collection;

    invoke-virtual {v0, v4}, Lbbs;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 4106
    iget-object v5, v3, Lbaj;->a:Lbai$b;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-interface {v5, v0}, Lbai$b;->a(Z)V

    .line 4107
    iget-object v0, v3, Lbaj;->a:Lbai$b;

    iget v3, v3, Lbaj;->b:I

    invoke-interface {v0, v4, v3}, Lbai$b;->a(Ljava/util/Collection;I)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 4106
    goto :goto_2

    :cond_5
    move v0, v2

    .line 54
    goto :goto_1
.end method
