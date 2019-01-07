.class Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$1;
.super Lcom/alibaba/android/search/assure/AssureTempCache;
.source "AssureKeyWordPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/search/assure/AssureTempCache",
        "<",
        "Lcom/alibaba/android/search/assure/model/AssureModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$1;->this$0:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    invoke-direct {p0}, Lcom/alibaba/android/search/assure/AssureTempCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected onEntryAdded(Lcom/alibaba/android/search/assure/model/AssureModel;)V
    .locals 4
    .param p1, "assureModel"    # Lcom/alibaba/android/search/assure/model/AssureModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/alibaba/android/search/assure/AssureTempCache;->onEntryAdded(Ljava/lang/Object;)V

    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$1;->this$0:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "[query] "

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$1;->this$0:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    invoke-static {v3, p1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/model/AssureModel;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, " is removed to temp area, mark its evict time"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->markEvicted()V

    .line 128
    :cond_0
    return-void

    .line 125
    :cond_1
    const-string/jumbo v0, "[add] "

    goto :goto_0
.end method

.method protected bridge synthetic onEntryAdded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    check-cast p1, Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$1;->onEntryAdded(Lcom/alibaba/android/search/assure/model/AssureModel;)V

    return-void
.end method
