.class final Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4$1;
.super Ljava/lang/Object;
.source "AssureKeyWordPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4$1;->a:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 466
    iget-object v0, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4$1;->a:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;

    iget-object v0, v0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->a:Lcov;

    iget-object v1, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4$1;->a:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;

    iget-object v1, v1, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->c:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    iget-object v2, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4$1;->a:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;

    iget-object v2, v2, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$4;->b:Lcom/alibaba/android/search/SearchGroupType;

    .line 1066
    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/SearchGroupType;)Ljava/util/List;

    move-result-object v1

    .line 466
    invoke-interface {v0, v1}, Lcov;->a(Ljava/lang/Object;)V

    .line 467
    return-void
.end method
