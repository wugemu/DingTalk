.class public Lcom/alibaba/alimei/cmail/widget/ListFooterView;
.super Landroid/widget/LinearLayout;
.source "ListFooterView.java"


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:I

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->c:I

    .line 61
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->a(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->c:I

    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->a(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->c:I

    .line 71
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->a(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxo$g;->alm_list_footer_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->d:Landroid/view/View;

    .line 76
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->a:Landroid/widget/ProgressBar;

    .line 77
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->b:Landroid/widget/TextView;

    .line 1082
    iget v0, p0, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->c:I

    .line 1084
    if-eq v0, v2, :cond_0

    .line 1087
    iput v2, p0, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->c:I

    .line 1095
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->cspace_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1096
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1097
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->b:Landroid/widget/TextView;

    sget v1, Laxo$i;->alm_cmail_loading_mails:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentPageType()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/alibaba/alimei/cmail/widget/ListFooterView;->c:I

    return v0
.end method
