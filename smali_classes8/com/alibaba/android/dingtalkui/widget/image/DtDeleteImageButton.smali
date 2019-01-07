.class public Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;
.super Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageButton;
.source "DtDeleteImageButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageButton;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;->a()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;->a()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;->a()V

    .line 32
    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 37
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v0, Lecw;

    sget v2, Lecj$g;->icon_roundclose_fill:I

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lecj$b;->ui_common_util_image_button_delete_color:I

    .line 39
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 42
    .local v0, "icon":Lecw;
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    return-void
.end method
