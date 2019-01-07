.class public Lcom/alibaba/android/search/widget/SearchMoreEntryView;
.super Landroid/widget/LinearLayout;
.source "SearchMoreEntryView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;,
        Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->a()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->a()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->a()V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/widget/SearchMoreEntryView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/SearchMoreEntryView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lemt$f;->layout_search_more_entry:I

    invoke-virtual {v4, v5, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v9}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->setOrientation(I)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    sget v4, Lemt$e;->grid_view:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->a:Landroid/widget/GridView;

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Landroid/content/Context;)I

    move-result v4

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lemt$c;->global_search_homepage_normal_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 76
    .local v2, "itemWidth":I
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->a:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 77
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->a:Landroid/widget/GridView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_4

    .line 1095
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1096
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    new-instance v5, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;

    sget-object v6, Lcom/alibaba/android/search/SearchGroupType;->LIGHT_APP:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lemt$g;->search_light_app:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;-><init>(Lcom/alibaba/android/search/SearchGroupType;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    new-instance v5, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;

    sget-object v6, Lcom/alibaba/android/search/SearchGroupType;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lemt$g;->dt_search_external_contact:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;-><init>(Lcom/alibaba/android/search/SearchGroupType;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    new-instance v5, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;

    sget-object v6, Lcom/alibaba/android/search/SearchGroupType;->PUBLIC_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lemt$g;->dt_public_group_conversation:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;-><init>(Lcom/alibaba/android/search/SearchGroupType;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    new-instance v5, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;

    sget-object v6, Lcom/alibaba/android/search/SearchGroupType;->DING:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lemt$g;->search_ding:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;-><init>(Lcom/alibaba/android/search/SearchGroupType;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    new-instance v5, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;

    sget-object v6, Lcom/alibaba/android/search/SearchGroupType;->MAIL:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lemt$g;->search_mail:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;-><init>(Lcom/alibaba/android/search/SearchGroupType;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    new-instance v5, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;

    sget-object v6, Lcom/alibaba/android/search/SearchGroupType;->SPACE:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lemt$g;->search_cloud:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;-><init>(Lcom/alibaba/android/search/SearchGroupType;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1105
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    new-instance v5, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;

    sget-object v6, Lcom/alibaba/android/search/SearchGroupType;->ORG_HOMEPAGE:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lemt$g;->dt_org_homepage_title:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;-><init>(Lcom/alibaba/android/search/SearchGroupType;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_1
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1109
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    new-instance v5, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;

    sget-object v6, Lcom/alibaba/android/search/SearchGroupType;->NEW_RETAIL:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lemt$g;->dt_search_new_retail_title:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;-><init>(Lcom/alibaba/android/search/SearchGroupType;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v9, :cond_3

    .line 1113
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    new-instance v5, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;

    const/4 v6, 0x0

    const-string/jumbo v7, ""

    invoke-direct {v5, v6, v7}, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;-><init>(Lcom/alibaba/android/search/SearchGroupType;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_3
    new-instance v0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-direct {v0, p0, v4}, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;-><init>(Lcom/alibaba/android/search/widget/SearchMoreEntryView;Landroid/app/Activity;)V

    .line 82
    .local v0, "adapter":Lemv;
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    invoke-virtual {v0, v4}, Lemv;->a(Ljava/util/List;)V

    .line 83
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->a:Landroid/widget/GridView;

    invoke-virtual {v4, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->a:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 86
    .local v1, "gridViewParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_4

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42340000    # 45.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    .line 88
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, 0xa

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 89
    iget-object v4, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->a:Landroid/widget/GridView;

    invoke-virtual {v4, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .end local v0    # "adapter":Lemv;
    .end local v1    # "gridViewParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/search/widget/SearchMoreEntryView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/SearchMoreEntryView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->b:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setTitleTextHeight(I)V
    .locals 3
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 122
    sget v2, Lemt$e;->tv_search_more_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 123
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 125
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 126
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    :cond_0
    return-void
.end method

.method public setTitleTextSize(I)V
    .locals 3
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 118
    sget v0, Lemt$e;->tv_search_more_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 119
    return-void
.end method
