.class final Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;
.super Lemv;
.source "SearchMoreEntryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/widget/SearchMoreEntryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lemv",
        "<",
        "Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/alibaba/android/search/widget/SearchMoreEntryView;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/search/widget/SearchMoreEntryView;Landroid/app/Activity;)V
    .locals 2
    .param p2, "context"    # Landroid/app/Activity;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;->c:Lcom/alibaba/android/search/widget/SearchMoreEntryView;

    .line 144
    invoke-direct {p0, p2}, Lemv;-><init>(Landroid/app/Activity;)V

    .line 145
    invoke-static {p1}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->a(Lcom/alibaba/android/search/widget/SearchMoreEntryView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->a(Lcom/alibaba/android/search/widget/SearchMoreEntryView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;->d:I

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;ILcom/alibaba/android/search/SearchGroupType;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/alibaba/android/search/SearchGroupType;

    .prologue
    .line 140
    .line 2182
    if-eqz p2, :cond_0

    .line 2186
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 2187
    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->SEARCH_SPECIFY_CATEGORY:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 2188
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->ALL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    .line 2189
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_SEARCH_SPECIFY_CATEGORY:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 2190
    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionValue(I)V

    .line 2191
    const-string/jumbo v1, "-1"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setValue(Ljava/lang/String;)V

    .line 2192
    invoke-static {v0}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 150
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;

    .line 152
    .local v1, "item":Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;
    iget-object v3, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;->c:Lcom/alibaba/android/search/widget/SearchMoreEntryView;

    invoke-virtual {v3}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lemt$f;->item_search_more_entry:I

    invoke-static {v3, p2, p3, v6, p1}, Lcre;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;

    move-result-object v0

    .line 153
    .local v0, "holder":Lcre;
    sget v3, Lemt$e;->tv_text:I

    invoke-virtual {v0, v3}, Lcre;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v3, v0, Lcre;->a:Landroid/view/View;

    .line 154
    new-instance v6, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;

    invoke-direct {v6, p0, v1, p1}, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;-><init>(Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    add-int/lit8 v3, p1, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v6, p1, 0x1

    rem-int/lit8 v6, v6, 0x2

    add-int v2, v3, v6

    .line 174
    .local v2, "row":I
    sget v3, Lemt$e;->right_divider:I

    invoke-virtual {v0, v3}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    add-int/lit8 v3, p1, 0x1

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 175
    sget v3, Lemt$e;->text_margin_divider:I

    invoke-virtual {v0, v3}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    add-int/lit8 v3, p1, 0x1

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    sget v3, Lemt$e;->bottom_divider:I

    invoke-virtual {v0, v3}, Lcre;->a(I)Landroid/view/View;

    move-result-object v3

    iget v6, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;->d:I

    if-ge v2, v6, :cond_2

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2055
    iget-object v3, v0, Lcre;->a:Landroid/view/View;

    .line 178
    return-object v3

    :cond_0
    move v3, v5

    .line 174
    goto :goto_0

    :cond_1
    move v3, v4

    .line 175
    goto :goto_1

    :cond_2
    move v4, v5

    .line 176
    goto :goto_2
.end method
