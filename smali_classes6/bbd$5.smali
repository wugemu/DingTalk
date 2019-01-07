.class final Lbbd$5;
.super Ljava/lang/Object;
.source "SelectUserPresenter.java"

# interfaces
.implements Lbhq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lbbd;


# direct methods
.method constructor <init>(Lbbd;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lbbd;

    .prologue
    .line 376
    iput-object p1, p0, Lbbd$5;->b:Lbbd;

    iput-object p2, p0, Lbbd$5;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 389
    iget-object v0, p0, Lbbd$5;->b:Lbbd;

    .line 5056
    iget-object v0, v0, Lbbd;->d:Ljava/util/ArrayList;

    .line 389
    iget-object v1, p0, Lbbd$5;->b:Lbbd;

    .line 6056
    iget-object v1, v1, Lbbd;->e:Ljava/util/Collection;

    .line 389
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 390
    iget-object v0, p0, Lbbd$5;->b:Lbbd;

    .line 7056
    iget-object v0, v0, Lbbd;->d:Ljava/util/ArrayList;

    .line 390
    invoke-static {v0}, Lbkf;->a(Ljava/lang/Iterable;)V

    .line 391
    iget-object v0, p0, Lbbd$5;->a:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 392
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 379
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 380
    iget-object v0, p0, Lbbd$5;->b:Lbbd;

    .line 1056
    iget-object v0, v0, Lbbd;->d:Ljava/util/ArrayList;

    .line 380
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 381
    iget-object v0, p0, Lbbd$5;->b:Lbbd;

    .line 2056
    iget-object v0, v0, Lbbd;->d:Ljava/util/ArrayList;

    .line 381
    iget-object v1, p0, Lbbd$5;->b:Lbbd;

    .line 3056
    iget-object v1, v1, Lbbd;->e:Ljava/util/Collection;

    .line 381
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    iget-object v0, p0, Lbbd$5;->b:Lbbd;

    .line 4056
    iget-object v0, v0, Lbbd;->d:Ljava/util/ArrayList;

    .line 382
    invoke-static {v0}, Lbkf;->a(Ljava/lang/Iterable;)V

    .line 384
    :cond_0
    iget-object v0, p0, Lbbd$5;->a:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 385
    return-void
.end method
