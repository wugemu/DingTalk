.class final Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;
.super Ljava/lang/Object;
.source "SearchMoreListActivity.java"

# interfaces
.implements Leri$b;


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
    .line 300
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c()V

    .line 319
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 333
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6$1;-><init>(Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 341
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 324
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c()V

    .line 312
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 300
    check-cast p1, Leri$a;

    .line 1304
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->e(Lcom/alibaba/android/search/activity/SearchMoreListActivity;Leqp$a;)Leqp$a;

    .line 300
    return-void
.end method
