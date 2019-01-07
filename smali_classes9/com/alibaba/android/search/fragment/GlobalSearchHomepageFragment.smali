.class public Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "GlobalSearchHomepageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;
    }
.end annotation


# instance fields
.field a:Lerw$a;

.field private b:Lcom/alibaba/android/search/SearchGroupType;

.field private c:Landroid/os/Handler;

.field private d:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 92
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->c:Landroid/os/Handler;

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;)V
    .locals 1
    .param p1, "channel"    # Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 92
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->c:Landroid/os/Handler;

    .line 121
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->d:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;ILjava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 6450
    new-instance v2, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 6451
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 6452
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    .line 6453
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_RECENT_SEARCH_HISTORY:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 6454
    invoke-virtual {v2, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionValue(I)V

    .line 6455
    invoke-virtual {v2, p2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setValue(Ljava/lang/String;)V

    .line 6456
    invoke-static {v2}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 74
    return-void

    .line 6452
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->d()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->f()I

    move-result v0

    return v0
.end method

.method private c()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 149
    invoke-static {p0}, Lcms;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 195
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    sget v11, Lemt$e;->global_search_feedback_view:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 155
    .local v1, "feedbackView":Landroid/view/View;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v5, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v11, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v10, v11, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x41c00000    # 24.0f

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    iput v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 192
    :goto_1
    const/4 v10, 0x3

    sget v11, Lemt$e;->ll_view_search_more:I

    invoke-virtual {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 193
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 159
    :cond_1
    const/4 v8, 0x0

    .line 160
    .local v8, "statusBarHeight":I
    const/4 v4, 0x0

    .line 162
    .local v4, "navigationBarHeight":I
    :try_start_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 163
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 164
    .local v9, "window":Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 165
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string/jumbo v11, "navigation_bar_height"

    const-string/jumbo v12, "dimen"

    const-string/jumbo v13, "android"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 168
    .local v7, "resourceId":I
    if-lez v7, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 174
    .end local v6    # "rect":Landroid/graphics/Rect;
    .end local v7    # "resourceId":I
    .end local v9    # "window":Landroid/view/Window;
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->e:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 175
    .local v2, "historyLayoutHeight":I
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcms;->b(Landroid/content/Context;)I

    move-result v10

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const/high16 v12, 0x42300000    # 44.0f

    invoke-static {v11, v12}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    sub-int/2addr v10, v11

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const/high16 v12, 0x42400000    # 48.0f

    invoke-static {v11, v12}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    sub-int/2addr v10, v11

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const/high16 v12, 0x42400000    # 48.0f

    invoke-static {v11, v12}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int/2addr v10, v4

    sub-int v0, v10, v8

    .line 182
    .local v0, "desiredTopMargin":I
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v11, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v10, v11, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x42300000    # 44.0f

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    sub-int/2addr v0, v10

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x41c00000    # 24.0f

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 186
    .local v3, "minWidth":I
    if-ge v0, v3, :cond_4

    .line 187
    move v0, v3

    .line 189
    :cond_4
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    .end local v0    # "desiredTopMargin":I
    .end local v2    # "historyLayoutHeight":I
    .end local v3    # "minWidth":I
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method static synthetic d(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)Lcom/alibaba/android/search/SearchGroupType;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    return-object v0
.end method

.method private d()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->f()I

    move-result v0

    .line 291
    .local v0, "historyKey":I
    if-ltz v0, :cond_10

    .line 292
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a()Lcom/alibaba/android/search/service/SearchHistoryManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(I)Ljava/util/List;

    move-result-object v1

    .line 5401
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5402
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->e:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 298
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;>;"
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->j:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->j:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5406
    .restart local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;>;"
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->e:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5407
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->i:Landroid/widget/TextView;

    sget v3, Lemt$g;->dt_search_history_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 5408
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 5409
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->f:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5410
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5412
    const/4 v2, 0x0

    move v7, v2

    .line 5413
    :goto_2
    const/4 v2, 0x3

    if-ge v7, v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5414
    new-instance v8, Lcom/alibaba/android/search/widget/HistoryLineView;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/alibaba/android/search/widget/HistoryLineView;-><init>(Landroid/content/Context;)V

    .line 5415
    new-instance v9, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$5;

    invoke-direct {v9, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$5;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)V

    .line 6064
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5443
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5444
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    .line 5445
    goto :goto_2

    .line 6068
    :cond_6
    sget v2, Lcom/alibaba/android/search/widget/HistoryLineView;->b:I

    mul-int/lit8 v2, v2, 0x2

    .line 6069
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v6, v2

    .line 6070
    :cond_7
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6071
    sget v2, Lcom/alibaba/android/search/widget/HistoryLineView;->a:I

    if-lt v6, v2, :cond_5

    .line 6075
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    .line 6076
    if-eqz v2, :cond_7

    .line 6079
    iget-object v11, v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    .line 6080
    if-eqz v11, :cond_7

    .line 6084
    invoke-virtual {v8}, Lcom/alibaba/android/search/widget/HistoryLineView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lemt$f;->item_search_history:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 6085
    sget v3, Lemt$e;->avatar:I

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 6086
    sget v4, Lemt$e;->display_name:I

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 6087
    invoke-virtual {v11}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v5

    sget-object v13, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Msg:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-eq v5, v13, :cond_8

    .line 6088
    invoke-virtual {v11}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v5

    sget-object v13, Lcom/alibaba/android/search/model/BaseModel$ModelType;->SuggestionGuide:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-ne v5, v13, :cond_b

    .line 6089
    :cond_8
    invoke-virtual {v11}, Lcom/alibaba/android/search/model/BaseModel;->getKeyword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6090
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 6091
    invoke-virtual {v8}, Lcom/alibaba/android/search/widget/HistoryLineView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 6092
    invoke-virtual {v8}, Lcom/alibaba/android/search/widget/HistoryLineView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 6093
    invoke-virtual {v8}, Lcom/alibaba/android/search/widget/HistoryLineView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v5, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    .line 6094
    invoke-virtual {v8}, Lcom/alibaba/android/search/widget/HistoryLineView;->getContext()Landroid/content/Context;

    move-result-object v11

    const/high16 v13, 0x40e00000    # 7.0f

    invoke-static {v11, v13}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    .line 6091
    invoke-virtual {v12, v3, v4, v5, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 6114
    :goto_4
    sget v3, Lcom/alibaba/android/search/widget/HistoryLineView;->b:I

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 6115
    invoke-virtual {v8}, Lcom/alibaba/android/search/widget/HistoryLineView;->getHeight()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 6114
    invoke-virtual {v12, v3, v4}, Landroid/view/View;->measure(II)V

    .line 6116
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 6117
    sget v4, Lcom/alibaba/android/search/widget/HistoryLineView;->b:I

    if-le v3, v4, :cond_f

    .line 6118
    sget v3, Lcom/alibaba/android/search/widget/HistoryLineView;->b:I

    .line 6123
    :cond_9
    :goto_5
    if-gt v3, v6, :cond_5

    .line 6127
    invoke-virtual {v12, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6128
    invoke-virtual {v12, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6130
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6131
    iget v4, v8, Lcom/alibaba/android/search/widget/HistoryLineView;->c:I

    if-eqz v4, :cond_a

    .line 6132
    invoke-virtual {v8}, Lcom/alibaba/android/search/widget/HistoryLineView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 6134
    :cond_a
    invoke-virtual {v12, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6136
    invoke-virtual {v8, v12}, Lcom/alibaba/android/search/widget/HistoryLineView;->addView(Landroid/view/View;)V

    .line 6137
    iget v2, v8, Lcom/alibaba/android/search/widget/HistoryLineView;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v8, Lcom/alibaba/android/search/widget/HistoryLineView;->c:I

    .line 6139
    sub-int v2, v6, v3

    .line 6140
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    move v6, v2

    .line 6141
    goto/16 :goto_3

    .line 6096
    :cond_b
    invoke-virtual {v11}, Lcom/alibaba/android/search/model/BaseModel;->getAvatar()Ljava/util/List;

    move-result-object v5

    .line 6097
    if-eqz v5, :cond_c

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-gtz v13, :cond_e

    .line 6098
    :cond_c
    const/4 v5, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v5, v13}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6105
    :cond_d
    :goto_6
    invoke-virtual {v11}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6106
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6108
    invoke-virtual {v8}, Lcom/alibaba/android/search/widget/HistoryLineView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 6109
    invoke-virtual {v8}, Lcom/alibaba/android/search/widget/HistoryLineView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 6110
    invoke-virtual {v8}, Lcom/alibaba/android/search/widget/HistoryLineView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v5, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    .line 6111
    invoke-virtual {v8}, Lcom/alibaba/android/search/widget/HistoryLineView;->getContext()Landroid/content/Context;

    move-result-object v11

    const/high16 v13, 0x40800000    # 4.0f

    invoke-static {v11, v13}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    .line 6108
    invoke-virtual {v12, v3, v4, v5, v11}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4

    .line 6099
    :cond_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 6100
    const/4 v13, 0x0

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/search/SearchUserIconObject;

    .line 6101
    const/4 v13, 0x0

    invoke-static {v3, v5, v13}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/android/search/SearchUserIconObject;Landroid/widget/AbsListView;)V

    .line 6102
    invoke-virtual {v11, v3}, Lcom/alibaba/android/search/model/BaseModel;->fillAvatarRightBottomIconRes(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    goto :goto_6

    .line 6119
    :cond_f
    sget v4, Lcom/alibaba/android/search/widget/HistoryLineView;->a:I

    if-ge v3, v4, :cond_9

    .line 6120
    sget v3, Lcom/alibaba/android/search/widget/HistoryLineView;->a:I

    goto/16 :goto_5

    .line 295
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;>;"
    :cond_10
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->e:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method static synthetic e(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->d:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;

    return-object v0
.end method

.method private f()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 304
    const/4 v0, -0x1

    .line 305
    .local v0, "historyKey":I
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v1, v2, :cond_1

    .line 306
    const/16 v0, 0x1f

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v1, v2, :cond_2

    .line 312
    const/4 v0, 0x1

    goto :goto_0

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->MY_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v1, v2, :cond_3

    .line 314
    const/4 v0, 0x2

    goto :goto_0

    .line 315
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v1, v2, :cond_4

    .line 316
    const/4 v0, 0x4

    goto :goto_0

    .line 317
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->FUNCTION:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v1, v2, :cond_0

    .line 318
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public final H()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 646
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v0, v1, :cond_0

    .line 648
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->j()Z

    .line 651
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_function_direct:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_view_search_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 664
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->c()V

    .line 665
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_function_direct:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_view_search_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/search/SearchGroupType;)V
    .locals 1
    .param p1, "currentSelectedTab"    # Lcom/alibaba/android/search/SearchGroupType;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v0, p1, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    .line 638
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->d:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;

    if-eqz v0, :cond_0

    .line 639
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->d()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1239
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_histories:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->e:Landroid/view/View;

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->d:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;

    if-nez v0, :cond_3

    .line 1241
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2489
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    if-eq v0, v1, :cond_1

    .line 2490
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_view_search_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2492
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->search_more_top_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->j:Landroid/view/View;

    .line 2493
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3461
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->j()Z

    .line 3462
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_function_direct:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4214
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4218
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$2;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->k:Landroid/content/BroadcastReceiver;

    .line 4232
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4233
    const-string/jumbo v1, "ACTION_SEARCH_HISTORY_LOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4234
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5140
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$1;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    return-object v0

    .line 1245
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->sv_homepage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$3;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1253
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->iv_clear_histories:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1254
    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$4;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1275
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->tv_history_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->i:Landroid/widget/TextView;

    .line 1276
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_histories_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->h:Landroid/view/View;

    .line 1277
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_layout_histories:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->f:Landroid/widget/LinearLayout;

    .line 1278
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->layout_histories:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 1280
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a()Lcom/alibaba/android/search/service/SearchHistoryManager;

    move-result-object v0

    .line 2239
    iget-boolean v0, v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->d:Z

    .line 1280
    if-eqz v0, :cond_0

    .line 1281
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->d()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->k:Landroid/content/BroadcastReceiver;

    .line 209
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 210
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 199
    sget v0, Lemt$f;->fragment_global_search_homepage:I

    return v0
.end method
