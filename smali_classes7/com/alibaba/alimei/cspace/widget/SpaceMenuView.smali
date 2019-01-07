.class public Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
.super Landroid/widget/LinearLayout;
.source "SpaceMenuView.java"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/view/View;

.field public d:Lun;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/16 v1, 0x64

    iput v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->e:I

    .line 40
    const/16 v1, 0xff

    iput v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->f:I

    .line 45
    iput v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->g:I

    .line 46
    iput v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->h:I

    .line 47
    iput v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->i:I

    .line 58
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->setGravity(I)V

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laxo$g;->cmail_menu_bottom_item_view:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 60
    sget v1, Laxo$f;->img_icon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->a:Landroid/widget/ImageView;

    .line 61
    sget v1, Laxo$f;->tv_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->b:Landroid/widget/TextView;

    .line 62
    sget v1, Laxo$f;->view_red_dot:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->c:Landroid/view/View;

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Laxo$c;->alm_cmail_color_c1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->g:I

    .line 66
    sget v1, Laxo$c;->alm_cmail_color_c2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->h:I

    .line 67
    sget v1, Laxo$c;->alm_cmail_color_c2_t12:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->i:I

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$e;->ui_common_cell_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method


# virtual methods
.method public final a(Lun;Z)V
    .locals 4
    .param p1, "menuObject"    # Lun;
    .param p2, "isEnnableView"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->d:Lun;

    .line 75
    iget v1, p1, Lun;->b:I

    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Lcjz;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lun;->b:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->ui_common_theme_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 77
    .local v0, "drawable":Lcjz;
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 1045
    iput v1, v0, Lcjz;->b:F

    .line 78
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    .end local v0    # "drawable":Lcjz;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->b:Landroid/widget/TextView;

    iget-object v2, p1, Lun;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->c:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    invoke-virtual {p0, p2}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->a(Z)V

    .line 90
    return-void
.end method

.method public final a(Z)V
    .locals 4
    .param p1, "isEnnableView"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 93
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->d:Lun;

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    if-eqz p1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->b:Landroid/widget/TextView;

    iget v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->g:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 100
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 102
    iget v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->b:Landroid/widget/TextView;

    iget v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->i:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->a:Landroid/widget/ImageView;

    iget v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->h:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 111
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 112
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 113
    iget v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 119
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
