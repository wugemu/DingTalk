.class final Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment$1;
.super Ljava/lang/Object;
.source "ContactDetailSearchFragment.java"

# interfaces
.implements Leqr$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;

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
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->a(I)V

    .line 132
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
    .line 117
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
    .line 147
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->b(Ljava/util/List;)V

    .line 148
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 137
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->a(I)V

    .line 127
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 113
    check-cast p1, Leqr$a;

    .line 1121
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;

    iput-object p1, v0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->z:Leqp$a;

    .line 113
    return-void
.end method
