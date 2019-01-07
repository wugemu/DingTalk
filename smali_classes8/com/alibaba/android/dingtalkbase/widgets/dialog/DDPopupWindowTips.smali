.class public final Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.source "DDPopupWindowTips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;
    }
.end annotation


# instance fields
.field public b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "direction"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;
    .param p3, "resId"    # I

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 21
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;-><init>()V

    .line 23
    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$2;->a:[I

    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcig$h;->layout_hint_up_pop:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "rootView":Landroid/view/View;
    :goto_0
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->c:Landroid/view/View;

    .line 39
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->setContentView(Landroid/view/View;)V

    .line 40
    sget v1, Lcig$f;->tv_hint_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->d:Landroid/widget/TextView;

    .line 1068
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 42
    :cond_0
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;

    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 45
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->setOutsideTouchable(Z)V

    .line 47
    :cond_1
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->setWidth(I)V

    .line 48
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->setHeight(I)V

    .line 50
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void

    .line 25
    .end local v0    # "rootView":Landroid/view/View;
    :pswitch_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcig$h;->layout_hint_down_pop:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 26
    .restart local v0    # "rootView":Landroid/view/View;
    goto :goto_0

    .line 28
    .end local v0    # "rootView":Landroid/view/View;
    :pswitch_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcig$h;->layout_hint_right_pop:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 29
    .restart local v0    # "rootView":Landroid/view/View;
    goto :goto_0

    .line 31
    .end local v0    # "rootView":Landroid/view/View;
    :pswitch_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcig$h;->layout_hint_left_pop:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 32
    .restart local v0    # "rootView":Landroid/view/View;
    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "maxWidth"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;II)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 78
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$2;->a:[I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->showAsDropDown(Landroid/view/View;II)V

    .line 93
    return-void

    .line 80
    :pswitch_0
    add-int/lit8 p3, p3, 0x5

    .line 81
    goto :goto_0

    .line 83
    :pswitch_1
    add-int/lit8 p3, p3, -0x5

    .line 84
    goto :goto_0

    .line 86
    :pswitch_2
    add-int/lit8 p2, p2, 0x5

    .line 88
    :pswitch_3
    add-int/lit8 p2, p2, -0x5

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final getHeight()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, -0x2

    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->c:Landroid/view/View;

    if-nez v1, :cond_0

    .line 118
    :goto_0
    return v0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->c:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->c:Landroid/view/View;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public final getWidth()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, -0x2

    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->c:Landroid/view/View;

    if-nez v1, :cond_0

    .line 105
    :goto_0
    return v0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->c:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->c:Landroid/view/View;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0
.end method
