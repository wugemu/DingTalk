.class public Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
.source "CustomLanguagePickerWheelView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcth;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView<TT;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Lcth;

    invoke-direct {v0}, Lcth;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->a:Lcth;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Lcth;

    invoke-direct {v0}, Lcth;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->a:Lcth;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 25
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance v0, Lcth;

    invoke-direct {v0}, Lcth;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->a:Lcth;

    .line 26
    return-void
.end method


# virtual methods
.method protected final a(IILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "curPosition"    # I
    .param p3, "itemView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 37
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView<TT;>;"
    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    .local v0, "textView":Landroid/widget/TextView;
    const/16 v2, 0x2711

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    .local v1, "textView2":Landroid/widget/TextView;
    if-ne p2, p1, :cond_0

    .line 40
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->a:Lcth;

    .line 1123
    iget v2, v2, Lcth;->h:I

    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->a:Lcth;

    .line 2115
    iget v2, v2, Lcth;->g:F

    .line 41
    invoke-virtual {p3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 42
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->a:Lcth;

    .line 2123
    iget v2, v2, Lcth;->h:I

    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->a:Lcth;

    .line 3099
    iget v2, v2, Lcth;->e:I

    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->a:Lcth;

    .line 3115
    iget v2, v2, Lcth;->g:F

    .line 45
    float-to-double v2, v2

    sub-int v4, p1, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 46
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->a:Lcth;

    .line 4099
    iget v2, v2, Lcth;->e:I

    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setStyle(Lcth;)V
    .locals 0
    .param p1, "style"    # Lcth;

    .prologue
    .line 31
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView<TT;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->a:Lcth;

    .line 32
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setStyle(Lcth;)V

    .line 33
    return-void
.end method
