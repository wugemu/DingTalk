.class public Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
.super Landroid/widget/LinearLayout;
.source "SpaceMenuView.java"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/view/View;

.field public c:Lgqm;

.field private d:I

.field private e:I

.field private final f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/16 v1, 0x64

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->d:I

    .line 36
    const/16 v1, 0xff

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->e:I

    .line 41
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->g:I

    .line 42
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->h:I

    .line 43
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->i:I

    .line 54
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->setGravity(I)V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lfzs$g;->cspace_menu_bottom_item_view:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    sget v1, Lfzs$f;->img_icon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 57
    sget v1, Lfzs$f;->tv_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->a:Landroid/widget/TextView;

    .line 58
    sget v1, Lfzs$f;->view_red_dot:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->b:Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lfzs$c;->alm_cmail_color_c1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->g:I

    .line 62
    sget v1, Lfzs$c;->alm_cmail_color_c2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->h:I

    .line 63
    sget v1, Lfzs$c;->alm_cmail_color_c2_t12:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->i:I

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lfzs$e;->ui_common_cell_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-void
.end method


# virtual methods
.method public final a(Lgqm;Z)V
    .locals 2
    .param p1, "menuObject"    # Lgqm;
    .param p2, "isEnnableView"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    .line 74
    iget v0, p1, Lgqm;->b:I

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget v1, p1, Lgqm;->b:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lgqm;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    iget-boolean v0, v0, Lgqm;->e:Z

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_1
    invoke-virtual {p0, p2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->a(Z)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "isEnableView"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 93
    :cond_0
    if-eqz p1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->g:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->i:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_0
.end method
