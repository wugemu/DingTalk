.class public Lcom/alibaba/android/ding/widget/DingTabItemView;
.super Landroid/widget/LinearLayout;
.source "DingTabItemView.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field b:Landroid/view/View;

.field private c:I

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingTabItemView;->a()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingTabItemView;->a()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingTabItemView;->a()V

    .line 37
    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laxp$g;->ding_item_ding_tab:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "view":Landroid/view/View;
    sget v1, Laxp$f;->tv_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabItemView;->a:Landroid/widget/TextView;

    .line 42
    sget v1, Laxp$f;->v_red_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabItemView;->b:Landroid/view/View;

    .line 43
    sget v1, Laxp$f;->selected_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabItemView;->d:Landroid/view/View;

    .line 44
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingTabItemView;->addView(Landroid/view/View;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3
    .param p1, "isSelected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 60
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabItemView;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Laxp$c;->ui_common_level2_button_pressed_bg_color:I

    invoke-static {v0, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    .line 60
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabItemView;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabItemView;->d:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Laxp$c;->ui_common_level1_text_color:I

    invoke-static {v0, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_1

    .line 64
    :cond_2
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/android/ding/widget/DingTabItemView;->c:I

    return v0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/alibaba/android/ding/widget/DingTabItemView;->c:I

    .line 53
    return-void
.end method
