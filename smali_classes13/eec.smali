.class public final Leec;
.super Lcq;
.source "CustomFragmentAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/oa/fragment/OAContentFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn;Ljava/util/List;)V
    .locals 4
    .param p1, "fm"    # Lcn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/oa/model/NewRetailObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "newRetailObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/oa/model/NewRetailObject;>;"
    invoke-direct {p0, p1}, Lcq;-><init>(Lcn;)V

    .line 1040
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1042
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/model/NewRetailObject;

    .line 1043
    if-eqz v0, :cond_0

    .line 1045
    invoke-virtual {v0}, Lcom/alibaba/android/oa/model/NewRetailObject;->isCustom()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1046
    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a(Lcom/alibaba/android/oa/model/NewRetailObject;)Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    move-result-object v0

    .line 1051
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1048
    :cond_1
    invoke-static {}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->c()Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    move-result-object v0

    goto :goto_1

    .line 28
    :cond_2
    iput-object v1, p0, Leec;->a:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    iget-object v0, p0, Leec;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Leec;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
