.class final Lcom/alibaba/android/search/activity/SearchMoreListActivity$3;
.super Ljava/lang/Object;
.source "SearchMoreListActivity.java"

# interfaces
.implements Lerq$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/SearchMoreListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$3;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$3;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$3;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c()V

    .line 202
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 216
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$3;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$3;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->PUBLIC_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    .line 1772
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 219
    :cond_0
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 207
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$3;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$3;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c()V

    .line 195
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$3;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 183
    check-cast p1, Lerq$a;

    .line 2187
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$3;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->b(Lcom/alibaba/android/search/activity/SearchMoreListActivity;Leqp$a;)Leqp$a;

    .line 183
    return-void
.end method
