.class final Lbbd$4;
.super Ljava/lang/Object;
.source "SelectUserPresenter.java"

# interfaces
.implements Lbhn$a;


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
    .line 349
    iput-object p1, p0, Lbbd$4;->b:Lbbd;

    iput-object p2, p0, Lbbd$4;->a:Lcom/alibaba/wukong/Callback;

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
    .line 362
    iget-object v0, p0, Lbbd$4;->b:Lbbd;

    .line 5056
    iget-object v0, v0, Lbbd;->d:Ljava/util/ArrayList;

    .line 362
    iget-object v1, p0, Lbbd$4;->b:Lbbd;

    .line 6056
    iget-object v1, v1, Lbbd;->e:Ljava/util/Collection;

    .line 362
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 363
    iget-object v0, p0, Lbbd$4;->b:Lbbd;

    .line 7056
    iget-object v0, v0, Lbbd;->d:Ljava/util/ArrayList;

    .line 363
    invoke-static {v0}, Lbkf;->a(Ljava/lang/Iterable;)V

    .line 364
    iget-object v0, p0, Lbbd$4;->a:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 365
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
    .line 352
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Lbbd$4;->b:Lbbd;

    .line 1056
    iget-object v0, v0, Lbbd;->d:Ljava/util/ArrayList;

    .line 353
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 354
    iget-object v0, p0, Lbbd$4;->b:Lbbd;

    .line 2056
    iget-object v0, v0, Lbbd;->d:Ljava/util/ArrayList;

    .line 354
    iget-object v1, p0, Lbbd$4;->b:Lbbd;

    .line 3056
    iget-object v1, v1, Lbbd;->e:Ljava/util/Collection;

    .line 354
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 355
    iget-object v0, p0, Lbbd$4;->b:Lbbd;

    .line 4056
    iget-object v0, v0, Lbbd;->d:Ljava/util/ArrayList;

    .line 355
    invoke-static {v0}, Lbkf;->a(Ljava/lang/Iterable;)V

    .line 357
    :cond_0
    iget-object v0, p0, Lbbd$4;->a:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 358
    return-void
.end method
