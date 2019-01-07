.class public Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;
.super Landroid/widget/RelativeLayout;
.source "ImgBtnContainerView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1041
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->im_img_btn_container:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1042
    sget v0, Lctk$f;->iv_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->a:Landroid/widget/ImageView;

    .line 1043
    sget v0, Lctk$f;->tv_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->b:Landroid/widget/TextView;

    .line 1045
    sget-object v0, Lctk$k;->ImgBtnContainerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1046
    if-eqz v0, :cond_1

    .line 1047
    sget v1, Lctk$k;->ImgBtnContainerView_imgSrc:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1048
    sget v2, Lctk$k;->ImgBtnContainerView_tipText:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1049
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1050
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setText(Ljava/lang/String;)V

    .line 1053
    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    :cond_1
    return-void
.end method


# virtual methods
.method public setImgMediaId(Ljava/lang/String;)V
    .locals 1
    .param p1, "imgMediaId"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->a:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Ldmm;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 69
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    return-void
.end method
