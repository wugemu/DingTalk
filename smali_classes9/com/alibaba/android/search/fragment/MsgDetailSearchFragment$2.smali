.class final Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$2;
.super Ljava/lang/Object;
.source "MsgDetailSearchFragment.java"

# interfaces
.implements Lerk$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->a(I)V

    .line 197
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->b(Ljava/util/List;)V

    .line 221
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/search/activity/MsgListActivity;

    if-eqz v0, :cond_1

    .line 202
    const-string/jumbo v0, "408"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "-407"

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/activity/MsgListActivity;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    sget v2, Lemt$g;->dt_search_weak_network_msg_sort_hint:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/activity/MsgListActivity;->a(Ljava/lang/String;)V

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    const-string/jumbo v0, "-408"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/activity/MsgListActivity;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    sget v2, Lemt$g;->dt_search_weak_network_hint:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/activity/MsgListActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->a(I)V

    .line 192
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 172
    check-cast p1, Lerk$a;

    .line 1186
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    iput-object p1, v0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->z:Leqp$a;

    .line 172
    return-void
.end method
