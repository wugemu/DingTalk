.class public Lcom/alibaba/android/dingtalkui/form/image/DtPhotoFormView;
.super Lcom/alibaba/android/dingtalkui/form/image/AbstractImageFormView;
.source "DtPhotoFormView.java"


# instance fields
.field private c:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAddPicButton;

.field private d:Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/image/AbstractImageFormView;-><init>(Landroid/content/Context;)V

    .line 41
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
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/form/image/AbstractImageFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
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
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/form/image/AbstractImageFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/form/image/AbstractImageFormView;->a()V

    .line 55
    sget v0, Lecj$e;->apb_add:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/image/DtPhotoFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAddPicButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/image/DtPhotoFormView;->c:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAddPicButton;

    .line 56
    sget v0, Lecj$e;->pg_photos:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/image/DtPhotoFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/image/DtPhotoFormView;->d:Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;

    .line 57
    return-void
.end method

.method protected getLabelViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;
    .locals 1

    .prologue
    .line 66
    sget v0, Lecj$e;->label_level1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/image/DtPhotoFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lecj$f;->_ui_private_form_image_photo_layout:I

    return v0
.end method

.method protected getMustFillIndicatorViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;
    .locals 1

    .prologue
    .line 71
    sget v0, Lecj$e;->rav_must_fill:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/image/DtPhotoFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    return-object v0
.end method

.method public setAddPicOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/image/DtPhotoFormView;->c:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAddPicButton;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAddPicButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/form/image/AbstractImageFormView;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/image/DtPhotoFormView;->c:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAddPicButton;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAddPicButton;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/image/DtPhotoFormView;->d:Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;->setEnabled(Z)V

    .line 92
    return-void
.end method

.method public setPhotoAdapter(Lecu;)V
    .locals 1
    .param p1, "adapter"    # Lecu;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/image/DtPhotoFormView;->d:Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;

    .line 1048
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 84
    return-void
.end method
