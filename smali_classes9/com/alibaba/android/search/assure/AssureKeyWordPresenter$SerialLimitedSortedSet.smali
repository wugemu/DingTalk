.class Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;
.super Lcom/alibaba/android/search/assure/LimitSortedSet;
.source "AssureKeyWordPresenter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SerialLimitedSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/search/assure/LimitSortedSet",
        "<",
        "Lcom/alibaba/android/search/assure/model/AssureModel;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;I)V
    .locals 2
    .param p2, "maxSize"    # I

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->this$0:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 185
    new-instance v0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$AssureComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$AssureComparator;-><init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$1;)V

    invoke-direct {p0, p2, v0}, Lcom/alibaba/android/search/assure/LimitSortedSet;-><init>(ILjava/util/Comparator;)V

    .line 186
    return-void
.end method

.method constructor <init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;)V
    .locals 0
    .param p2, "sortedSet"    # Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->this$0:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 189
    invoke-direct {p0, p2}, Lcom/alibaba/android/search/assure/LimitSortedSet;-><init>(Lcom/alibaba/android/search/assure/LimitSortedSet;)V

    .line 190
    return-void
.end method


# virtual methods
.method protected entryAdded(Lcom/alibaba/android/search/assure/model/AssureModel;)V
    .locals 4
    .param p1, "entry"    # Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/alibaba/android/search/assure/LimitSortedSet;->entryAdded(Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->clearEvictTime()V

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->this$0:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 1066
    iget-object v0, v0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->c:Ljava/util/Set;

    .line 197
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->this$0:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[query] "

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->this$0:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    invoke-static {v3, p1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/model/AssureModel;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, " is added to assure area"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 199
    return-void

    .line 198
    :cond_0
    const-string/jumbo v0, "[add] "

    goto :goto_0
.end method

.method protected bridge synthetic entryAdded(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 183
    check-cast p1, Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->entryAdded(Lcom/alibaba/android/search/assure/model/AssureModel;)V

    return-void
.end method

.method protected entryRemoved(Lcom/alibaba/android/search/assure/model/AssureModel;)V
    .locals 4
    .param p1, "entry"    # Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/alibaba/android/search/assure/LimitSortedSet;->entryRemoved(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->markEvicted()V

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->this$0:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    .line 2066
    iget-object v0, v0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->c:Ljava/util/Set;

    .line 207
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->this$0:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[query] "

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->this$0:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    invoke-static {v3, p1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/model/AssureModel;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, " is added to temp area"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 209
    return-void

    .line 208
    :cond_0
    const-string/jumbo v0, "[add] "

    goto :goto_0
.end method

.method protected bridge synthetic entryRemoved(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 183
    check-cast p1, Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->entryRemoved(Lcom/alibaba/android/search/assure/model/AssureModel;)V

    return-void
.end method
