.class public Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;
.super Landroid/widget/TextView;
.source "CheckableTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$a;
    }
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private c:Z

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
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
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->a:F

    .line 20
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->b:F

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcig$d;->checkable_textview_padding_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 38
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcig$d;->checkable_textview_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 39
    .local v1, "paddingTop":I
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->setPadding(IIII)V

    .line 41
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->setChecked(Z)V

    .line 43
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;)Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$a;

    return-object v0
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 6
    .param p1, "checked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->c:Z

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "contentDescriptionPre":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$e;->check_text_bg_checked:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->ui_common_theme_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->setTextColor(I)V

    .line 65
    new-array v1, v5, [Ljava/lang/String;

    aput-object v0, v1, v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcig$j;->dt_accessibility_selected:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 72
    :goto_1
    return-void

    .line 59
    .end local v0    # "contentDescriptionPre":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 67
    .restart local v0    # "contentDescriptionPre":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$e;->check_text_bg_unchecked:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->ui_common_level3_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->setTextColor(I)V

    .line 70
    new-array v1, v5, [Ljava/lang/String;

    aput-object v0, v1, v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcig$j;->dt_accessibility_unselected:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setOnCheckedStatusChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$a;)V
    .locals 0
    .param p1, "onCheckedStatusChangeListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$a;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$a;

    .line 80
    return-void
.end method
