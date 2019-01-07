.class final Lerd$1;
.super Ljava/lang/Object;
.source "GlobalAssureSearchPresenter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lerd;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lcom/alibaba/android/search/assure/model/AssureModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lerd;


# direct methods
.method constructor <init>(Lerd;)V
    .locals 0
    .param p1, "this$0"    # Lerd;

    .prologue
    .line 52
    iput-object p1, p0, Lerd$1;->a:Lerd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    check-cast p1, Ljava/util/Collection;

    .line 1055
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    if-eqz p1, :cond_0

    .line 1059
    iget-object v0, p0, Lerd$1;->a:Lerd;

    iget-object v0, v0, Lerd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1060
    iget-object v0, p0, Lerd$1;->a:Lerd;

    iget-object v0, v0, Lerd;->d:Ljava/util/List;

    iget-object v1, p0, Lerd$1;->a:Lerd;

    iget-object v1, v1, Lerd;->c:Leoe;

    invoke-static {p1, v1}, Lcom/alibaba/android/search/assure/model/AssureModel;->getBaseModels(Ljava/util/Collection;Leoe;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1061
    iget-object v0, p0, Lerd$1;->a:Lerd;

    iget-object v0, v0, Lerd;->b:Leqp$b;

    instance-of v0, v0, Lere$b;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lerd$1;->a:Lerd;

    iget-object v0, v0, Lerd;->b:Leqp$b;

    check-cast v0, Lere$b;

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->ASSURE:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lerd$1;->a:Lerd;

    iget-object v2, v2, Lerd;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lere$b;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V

    .line 52
    :cond_0
    return-void
.end method
