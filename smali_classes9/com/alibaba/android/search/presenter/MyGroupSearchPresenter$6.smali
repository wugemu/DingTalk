.class final Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$6;
.super Ljava/lang/Object;
.source "MyGroupSearchPresenter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;
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
.field final synthetic a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .prologue
    .line 901
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$6;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 901
    check-cast p1, Ljava/util/Collection;

    .line 1904
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$6;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-static {v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;)V

    .line 1906
    :goto_0
    return-void

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$6;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->d:Ljava/util/List;

    invoke-static {v0, p1}, Leni;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1909
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$6;->a:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-static {v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;)V

    goto :goto_0
.end method
