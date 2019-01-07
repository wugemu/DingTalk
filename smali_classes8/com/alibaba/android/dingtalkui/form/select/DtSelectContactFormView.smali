.class public Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;
.super Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;
.source "DtSelectContactFormView.java"


# instance fields
.field private d:I

.field private e:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;

.field private f:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->d:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->d:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->d:I

    .line 44
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->a()V

    .line 49
    sget v0, Lecj$e;->sag_smallAvatars:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->e:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;

    .line 50
    sget v0, Lecj$e;->stv_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->f:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;

    .line 51
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->d:I

    return v0
.end method

.method protected getIndicatorInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;
    .locals 1

    .prologue
    .line 55
    sget v0, Lecj$e;->av_arrow:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    return-object v0
.end method

.method protected getLabelViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;
    .locals 1

    .prologue
    .line 65
    sget v0, Lecj$e;->label_float:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lecj$f;->_ui_private_form_select_contact_layout:I

    return v0
.end method

.method protected getMustFillIndicatorViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;
    .locals 1

    .prologue
    .line 70
    sget v0, Lecj$e;->rav_must_fill:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    return-object v0
.end method

.method public setAvatarAdapter(Lecv;)V
    .locals 2
    .param p1, "adapter"    # Lecv;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 83
    invoke-virtual {p1}, Lecv;->getItemCount()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 84
    const-string/jumbo v0, "SelectContactFormView"

    const-string/jumbo v1, "setAvatars: Avatar size is larger than THRESHOLD, which is 5! It\'s unnecessary and will cause memory waste!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->e:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;->setAvatarAdapter(Lecv;)V

    .line 87
    return-void
.end method

.method public setCount(I)V
    .locals 3
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 95
    iput p1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->d:I

    .line 97
    if-nez p1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->f:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4eba"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->f:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectContactFormView;->e:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;->setEnabled(Z)V

    .line 119
    return-void
.end method
