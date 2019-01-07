.class public Lcom/alibaba/android/dingtalkui/form/annex/DtAnnexFormView;
.super Lcom/alibaba/android/dingtalkui/form/image/AbstractImageFormView;
.source "DtAnnexFormView.java"


# instance fields
.field private c:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAddAnnexButton;

.field private d:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/image/AbstractImageFormView;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/annex/DtAnnexFormView;->b()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/form/image/AbstractImageFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/annex/DtAnnexFormView;->b()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/form/image/AbstractImageFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/annex/DtAnnexFormView;->b()V

    .line 55
    return-void
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/annex/DtAnnexFormView;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/annex/DtAnnexFormView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/form/image/AbstractImageFormView;->a()V

    .line 65
    sget v0, Lecj$e;->aab_add:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/annex/DtAnnexFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAddAnnexButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/annex/DtAnnexFormView;->c:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAddAnnexButton;

    .line 66
    sget v0, Lecj$e;->rv_annex:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/annex/DtAnnexFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/annex/DtAnnexFormView;->d:Landroid/support/v7/widget/RecyclerView;

    .line 67
    return-void
.end method

.method protected getLabelViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;
    .locals 1

    .prologue
    .line 76
    sget v0, Lecj$e;->label_level1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/annex/DtAnnexFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lecj$f;->_ui_private_form_file_annex_layout:I

    return v0
.end method

.method protected getMustFillIndicatorViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;
    .locals 1

    .prologue
    .line 81
    sget v0, Lecj$e;->rav_must_fill:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/annex/DtAnnexFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    return-object v0
.end method

.method public setAddAnnexOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/annex/DtAnnexFormView;->c:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAddAnnexButton;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAddAnnexButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method public setAnnexAdapter(Lect;)V
    .locals 1
    .param p1, "adapter"    # Lect;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/annex/DtAnnexFormView;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 94
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/form/image/AbstractImageFormView;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/annex/DtAnnexFormView;->c:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAddAnnexButton;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAddAnnexButton;->setEnabled(Z)V

    .line 101
    return-void
.end method
