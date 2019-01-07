.class final Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment$1;
.super Ljava/lang/Object;
.source "LightAppDetailSearchFragment.java"

# interfaces
.implements Lerg$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;

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
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->a(I)V

    .line 73
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
    .line 89
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->b(Ljava/util/List;)V

    .line 90
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 78
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->a(I)V

    .line 68
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 58
    check-cast p1, Lerg$a;

    .line 1062
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;

    iput-object p1, v0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->z:Leqp$a;

    .line 58
    return-void
.end method
