.class final Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment$1;
.super Ljava/lang/Object;
.source "DeptDetailSearchFragment.java"

# interfaces
.implements Leqt$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;

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
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->a(I)V

    .line 48
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
    .line 64
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->b(Ljava/util/List;)V

    .line 65
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 53
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->a(I)V

    .line 43
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 31
    check-cast p1, Leqt$a;

    .line 1034
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;

    iput-object p1, v0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->z:Leqp$a;

    .line 1035
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->z:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;

    iget v1, v1, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->n:I

    invoke-interface {v0, v1}, Leqp$a;->a(I)V

    .line 31
    :cond_0
    return-void
.end method
