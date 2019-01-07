.class public Lcom/alibaba/android/search/old/fragment/DingSearchFragment;
.super Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;
.source "DingSearchFragment.java"


# static fields
.field private static q:Lcom/alibaba/android/search/consts/SubPager;

.field public static final r:Ljava/lang/String;


# instance fields
.field private s:Leoa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->r:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_DING:Lcom/alibaba/android/search/consts/SubPager;

    sput-object v0, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->q:Lcom/alibaba/android/search/consts/SubPager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;-><init>()V

    .line 31
    new-instance v0, Lcom/alibaba/android/search/old/fragment/DingSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/old/fragment/DingSearchFragment$1;-><init>(Lcom/alibaba/android/search/old/fragment/DingSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->s:Leoa;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 116
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 117
    :cond_0
    const/4 v2, 0x0

    .line 138
    :cond_1
    return-object v2

    .line 120
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v2, "dingModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2055
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Leoc$a;->a:Leoc;

    .line 122
    sget-object v4, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Ding:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-static {v4, v0, p2}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v1

    .line 123
    .local v1, "dingModel":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 126
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->p:Leoe;

    if-eqz v4, :cond_4

    .line 129
    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->p:Leoe;

    .line 2084
    iget-object v4, v4, Leoe;->a:Ljava/lang/String;

    .line 129
    invoke-virtual {v1, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->p:Leoe;

    .line 2092
    iget v4, v4, Leoe;->b:I

    .line 130
    invoke-virtual {v1, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 132
    :cond_4
    sget-object v4, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->DING:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 133
    instance-of v4, v1, Lcom/alibaba/android/search/model/DingModel;

    if-eqz v4, :cond_3

    .line 134
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 41
    const-string/jumbo v3, "search_more_click_type"

    const-string/jumbo v4, "type=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "dingmsg"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->H:Landroid/os/Bundle;

    invoke-static {v3, v4, v5}, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    .line 45
    .local v2, "detailDingSearchFragment":Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "keyword"

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    new-instance v1, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 51
    .local v1, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->p:Leoe;

    if-eqz v3, :cond_0

    .line 52
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->p:Leoe;

    .line 1084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 53
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->p:Leoe;

    .line 1092
    iget v3, v3, Leoe;->b:I

    .line 53
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 55
    :cond_0
    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->DING:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    .line 56
    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->getValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 57
    invoke-static {}, Leqb;->b()V

    .line 58
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
    .line 84
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->a(Ljava/util/List;)V

    .line 1101
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1102
    :cond_0
    return-void

    .line 1105
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 1106
    if-eqz v0, :cond_2

    .line 1109
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->s:Leoa;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/BaseModel;->setDataChangeListener(Leoa;)V

    .line 1110
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/BaseModel;->requestExtraData(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected g()Lcom/alibaba/android/search/consts/SubPager;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->q:Lcom/alibaba/android/search/consts/SubPager;

    return-object v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lemt$g;->search_ding:I

    return v0
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
