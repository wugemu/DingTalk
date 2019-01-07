.class public Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;
.super Landroid/widget/LinearLayout;
.source "AmountView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView$a;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/16 v0, 0x20

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->f:I

    .line 28
    const/16 v0, 0x9

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->g:I

    .line 30
    iput v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->h:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->i:I

    .line 36
    sget v0, Lbqt$e;->amount_view_layout:I

    invoke-static {p1, v0, p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1041
    sget v0, Lbqt$d;->amount_plus_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->a:Landroid/view/View;

    .line 1042
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1044
    sget v0, Lbqt$d;->amount_sub_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->b:Landroid/view/View;

    .line 1045
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1047
    sget v0, Lbqt$d;->amount_unit_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->c:Landroid/widget/TextView;

    .line 1048
    sget v0, Lbqt$d;->amount_value_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->d:Landroid/widget/TextView;

    .line 1050
    invoke-direct {p0, v1, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->a(IZ)V

    .line 38
    return-void
.end method

.method private a(IZ)V
    .locals 2
    .param p1, "amountValue"    # I
    .param p2, "notify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 59
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->h:I

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->h:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->e:Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView$a;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->e:Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView$a;

    int-to-float v1, p1

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView$a;->a(F)V

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->h:I

    int-to-float v0, v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->a:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 99
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->h:I

    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->f:I

    if-ge v0, v1, :cond_0

    .line 100
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->h:I

    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->i:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->a(IZ)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 103
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->h:I

    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->g:I

    if-le v0, v1, :cond_0

    .line 104
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->h:I

    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->i:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->a(IZ)V

    goto :goto_0
.end method

.method public setAmount(I)V
    .locals 1
    .param p1, "amountValue"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->a(IZ)V

    .line 55
    return-void
.end method

.method public setMaxValue(I)V
    .locals 0
    .param p1, "maxValue"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->f:I

    .line 77
    return-void
.end method

.method public setMinValue(I)V
    .locals 0
    .param p1, "minValue"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->g:I

    .line 81
    return-void
.end method

.method public setOnAmountChangeListener(Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView$a;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->e:Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView$a;

    .line 94
    return-void
.end method

.method public setUnit(I)V
    .locals 0
    .param p1, "unit"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->i:I

    .line 73
    return-void
.end method

.method public setUnitSymbol(Ljava/lang/String;)V
    .locals 2
    .param p1, "unitSymbol"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
