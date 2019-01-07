.class final Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$4;
.super Ljava/lang/Object;
.source "FunctionSearchPresenter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a(Ljava/util/List;)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$4;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iput-object p2, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$4;->a:Ljava/util/List;

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

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 320
    check-cast p1, Ljava/util/Collection;

    .line 1323
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1326
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$4;->a:Ljava/util/List;

    invoke-static {v0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 1328
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$4;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$4;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v2, v2, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->d:Ljava/util/List;

    .line 2061
    invoke-static {v0, v2}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a(Lcom/alibaba/android/search/model/BaseModel;Ljava/util/List;)V

    goto :goto_0

    .line 1331
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$4;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->d:Ljava/util/List;

    invoke-static {v0, p1}, Leni;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1332
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$4;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->b:Leqp$b;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$4;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 320
    :cond_1
    return-void
.end method
