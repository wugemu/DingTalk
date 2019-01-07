.class final Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment$1;
.super Ljava/lang/Object;
.source "GroupDetailSearchFragment.java"

# interfaces
.implements Lerl$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;

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
    .line 128
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->a(I)V

    .line 129
    return-void
.end method

.method public final a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/search/SearchGroupType;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
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
    .line 145
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->b(Ljava/util/List;)V

    .line 146
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 134
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->a(I)V

    .line 124
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .line 106
    check-cast p1, Lerl$a;

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;

    iput-object p1, v0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->z:Leqp$a;

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->z:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;

    iget v1, v1, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->n:I

    invoke-interface {v0, v1}, Leqp$a;->a(I)V

    .line 106
    :cond_0
    return-void
.end method
