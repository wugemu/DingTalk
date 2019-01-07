.class final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$1;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    .prologue
    .line 829
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$1;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$1;->a:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leob;

    .line 1029
    iget v2, v2, Leob;->a:I

    .line 833
    invoke-static {v2}, Lcom/alibaba/android/search/SearchGroupType;->valueOf(I)Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v1

    .line 836
    .local v1, "searchGroupType":Lcom/alibaba/android/search/SearchGroupType;
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 837
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$1;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->f(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leoe;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 838
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$1;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->f(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leoe;

    move-result-object v2

    .line 1084
    iget-object v2, v2, Leoe;->a:Ljava/lang/String;

    .line 838
    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 839
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$1;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->f(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leoe;

    move-result-object v2

    .line 1092
    iget v2, v2, Leoe;->b:I

    .line 839
    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 841
    :cond_0
    invoke-static {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts;->a(Lcom/alibaba/android/search/SearchGroupType;)Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    .line 842
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 844
    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->MY_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v1, v2, :cond_1

    .line 846
    invoke-static {v0}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 847
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_MY_GROUP_CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionValue(I)V

    .line 851
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$1;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->a(Lcom/alibaba/android/search/SearchGroupType;)V

    .line 852
    return-void
.end method
