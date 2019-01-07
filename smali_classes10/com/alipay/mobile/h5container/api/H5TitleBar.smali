.class public Lcom/alipay/mobile/h5container/api/H5TitleBar;
.super Ljava/lang/Object;
.source "H5TitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/mobile/nebula/view/H5TitleView;


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

.field public E:Z

.field private F:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

.field private G:I

.field private H:I

.field private I:Landroid/view/View;

.field private J:Liop;

.field private K:Landroid/view/View;

.field private L:Landroid/content/Context;

.field private M:Landroid/widget/RelativeLayout;

.field private N:Lcom/alipay/mobile/nebula/search/H5SearchView;

.field private O:Z

.field private P:Landroid/graphics/Typeface;

.field private Q:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/RelativeLayout;

.field public h:Landroid/widget/LinearLayout;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public o:Landroid/widget/ImageButton;

.field public p:Landroid/widget/ImageButton;

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public u:Landroid/view/View;

.field public v:Landroid/view/View;

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public x:Landroid/widget/ImageView;

.field public y:Landroid/widget/ImageView;

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x0

    const v6, -0xef7117

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->k:Ljava/util/List;

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->n:Ljava/util/List;

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->q:Ljava/util/List;

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->t:Ljava/util/List;

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->w:Ljava/util/List;

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->z:Ljava/util/List;

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->C:Ljava/util/List;

    .line 102
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->F:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    .line 114
    sget v3, Lcom/alipay/mobile/nebula/R$drawable;->h5_title_bar_progress:I

    iput v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->H:I

    .line 130
    iput-boolean v7, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->E:Z

    .line 143
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->L:Landroid/content/Context;

    .line 144
    const/4 v2, 0x0

    .line 145
    .local v2, "parent":Landroid/view/ViewGroup;
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->L:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "parent":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 149
    .restart local v2    # "parent":Landroid/view/ViewGroup;
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$layout;->h5_navigation_bar:I

    invoke-virtual {v3, v4, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    .line 150
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_tv_title:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a:Landroid/widget/TextView;

    .line 151
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_tv_subtitle:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->b:Landroid/widget/TextView;

    .line 152
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_nav_disclaimer:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->c:Landroid/widget/TextView;

    .line 153
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_tv_title_img:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->d:Landroid/widget/ImageView;

    .line 154
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_status_bar_adjust_view:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->I:Landroid/view/View;

    .line 155
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_tv_nav_back:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->e:Landroid/widget/TextView;

    .line 162
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_nav_close:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->f:Landroid/widget/TextView;

    .line 163
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->getInstance()Lcom/alipay/mobile/nebula/util/H5TypefaceCache;

    const-string/jumbo v3, "h5iconfont"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "h5iconfont"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "h5titlebar.ttf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->P:Landroid/graphics/Typeface;

    .line 164
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->P:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->e:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 166
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->P:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->f:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 168
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->P:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 169
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->c:Landroid/widget/TextView;

    const v4, -0x666667

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 171
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_h_divider_intitle:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->K:Landroid/view/View;

    .line 173
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_rl_title:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->g:Landroid/widget/RelativeLayout;

    .line 174
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_ll_title:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h:Landroid/widget/LinearLayout;

    .line 176
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_nav_options:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->i:Landroid/view/View;

    .line 177
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_bt_dot:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->u:Landroid/view/View;

    .line 178
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_bt_image:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->o:Landroid/widget/ImageButton;

    .line 179
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_bt_text:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->r:Landroid/widget/TextView;

    .line 180
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_bt_options:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->l:Landroid/widget/TextView;

    .line 181
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->l:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->P:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 182
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->l:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 183
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_bt_dot_bg:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->x:Landroid/widget/ImageView;

    .line 184
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_bt_dot_number:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->A:Landroid/widget/TextView;

    .line 186
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_nav_options1:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->j:Landroid/view/View;

    .line 187
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_bt_dot1:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->v:Landroid/view/View;

    .line 188
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_bt_image1:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->p:Landroid/widget/ImageButton;

    .line 189
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_bt_text1:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->s:Landroid/widget/TextView;

    .line 190
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_bt_options1:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->m:Landroid/widget/TextView;

    .line 191
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->m:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->P:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 192
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->m:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 193
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_bt_dot_bg1:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->y:Landroid/widget/ImageView;

    .line 194
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_bt_dot_number1:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->B:Landroid/widget/TextView;

    .line 197
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->i:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->j:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->w:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->u:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->w:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->v:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->q:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->o:Landroid/widget/ImageButton;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->q:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->p:Landroid/widget/ImageButton;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->t:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->r:Landroid/widget/TextView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->t:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->s:Landroid/widget/TextView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->n:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->l:Landroid/widget/TextView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->n:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->m:Landroid/widget/TextView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->z:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->x:Landroid/widget/ImageView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->z:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->y:Landroid/widget/ImageView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->C:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->A:Landroid/widget/TextView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->C:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->B:Landroid/widget/TextView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const/4 v3, 0x1

    iput v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->G:I

    .line 221
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->adView:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 222
    .local v0, "adViewLayout":Landroid/widget/RelativeLayout;
    const-string/jumbo v3, "adView"

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 225
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_custom_view:I

    .line 226
    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 227
    .local v1, "h5CustomeViewLayout":Landroid/widget/RelativeLayout;
    const-string/jumbo v3, "h5_custom_view"

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 229
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->e:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->f:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->c:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->r:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->o:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->s:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->p:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->l:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->m:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_title_bar_layout:I

    .line 240
    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->M:Landroid/widget/RelativeLayout;

    .line 242
    iput-boolean v7, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->E:Z

    .line 243
    return-void
.end method

.method private a()Lcom/alipay/mobile/nebula/search/H5SearchView;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->N:Lcom/alipay/mobile/nebula/search/H5SearchView;

    if-nez v0, :cond_0

    .line 873
    const-class v0, Lcom/alipay/mobile/nebula/search/H5SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/search/H5SearchView;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->N:Lcom/alipay/mobile/nebula/search/H5SearchView;

    .line 874
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->N:Lcom/alipay/mobile/nebula/search/H5SearchView;

    .line 876
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->N:Lcom/alipay/mobile/nebula/search/H5SearchView;

    goto :goto_0
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;I)V
    .locals 17
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "index"    # I

    .prologue
    .line 576
    const-string/jumbo v12, "title"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 577
    .local v10, "title":Ljava/lang/String;
    const-string/jumbo v12, "icon"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 578
    .local v7, "icon":Ljava/lang/String;
    const-string/jumbo v12, "icontype"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 579
    .local v8, "icontype":Ljava/lang/String;
    const-string/jumbo v12, "redDot"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 580
    .local v9, "redDot":Ljava/lang/String;
    const-string/jumbo v12, "contentDesc"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 581
    .local v4, "contentDesc":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 582
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "redDot"

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 584
    :cond_0
    const-string/jumbo v12, "color"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 587
    .local v3, "colorText":Ljava/lang/String;
    const v2, -0xef7117

    .line 588
    .local v2, "color":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 590
    :try_start_0
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 594
    :goto_0
    const/high16 v12, -0x1000000

    or-int/2addr v2, v12

    .line 595
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->t:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 609
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 610
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->w:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 611
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 612
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->t:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    sget-object v12, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V

    .line 614
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->t:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 622
    :cond_1
    :goto_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 623
    const/4 v6, -0x1

    .line 625
    .local v6, "dotNum":I
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 629
    :goto_3
    if-ltz v6, :cond_8

    const/4 v11, 0x0

    .line 630
    .local v11, "visibility":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->w:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->F:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aget-object v12, v12, p2

    sget-object v13, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    if-ne v12, v13, :cond_9

    .line 1637
    const-string/jumbo v12, "H5TitleBar"

    const-string/jumbo v13, "adjust menu"

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    :cond_2
    :goto_5
    if-nez v6, :cond_b

    .line 1647
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->z:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->C:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .end local v6    # "dotNum":I
    .end local v11    # "visibility":I
    :cond_3
    :goto_6
    return-void

    .line 597
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v5

    .line 598
    .local v5, "currentColor":I
    const/high16 v12, -0x1000000

    or-int/2addr v5, v12

    .line 599
    const-string/jumbo v12, "H5TitleBar"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "setOptionMenuInternal currentColor is "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const v12, -0xeeeeef

    if-eq v5, v12, :cond_5

    .line 601
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->r:Landroid/widget/TextView;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 602
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->s:Landroid/widget/TextView;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 604
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->r:Landroid/widget/TextView;

    const v13, -0xef7117

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 605
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->s:Landroid/widget/TextView;

    const v13, -0xef7117

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 615
    .end local v5    # "currentColor":I
    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 616
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->w:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 617
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 618
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->q:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    invoke-virtual {v12, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 629
    .restart local v6    # "dotNum":I
    :cond_8
    const/16 v11, 0x8

    goto/16 :goto_4

    .line 1638
    .restart local v11    # "visibility":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->F:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aget-object v12, v12, p2

    sget-object v13, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    if-ne v12, v13, :cond_a

    .line 1639
    const-string/jumbo v12, "H5TitleBar"

    const-string/jumbo v13, "adjust icon"

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1640
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->F:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aget-object v12, v12, p2

    sget-object v13, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    if-ne v12, v13, :cond_2

    .line 1641
    const-string/jumbo v12, "H5TitleBar"

    const-string/jumbo v13, "adjust text"

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    if-nez v6, :cond_2

    .line 1643
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->z:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->L:Landroid/content/Context;

    const v15, 0x40f9999a    # 7.8f

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->L:Landroid/content/Context;

    const/high16 v16, 0x40c00000    # 6.0f

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_5

    .line 1649
    :cond_b
    if-lez v6, :cond_3

    .line 1650
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->C:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->z:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1652
    const/16 v12, 0x63

    if-le v6, v12, :cond_c

    const-string/jumbo v12, "\u00b7\u00b7\u00b7"

    move-object v13, v12

    .line 1653
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->C:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1652
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    goto :goto_7

    .end local v6    # "dotNum":I
    .end local v11    # "visibility":I
    :catch_0
    move-exception v12

    goto/16 :goto_0

    .restart local v6    # "dotNum":I
    :catch_1
    move-exception v12

    goto/16 :goto_3
.end method

.method private static a(II)Z
    .locals 1
    .param p0, "num"    # I
    .param p1, "length"    # I

    .prologue
    const/4 v0, 0x1

    .line 299
    if-nez p1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lt p1, p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContentBgView()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->getContentBgView()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    return-object v0
.end method

.method public getDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 659
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHdividerInTitle()Landroid/view/View;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->K:Landroid/view/View;

    return-object v0
.end method

.method public getMainTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOptionMenuContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->i:Landroid/view/View;

    return-object v0
.end method

.method public getPopAnchor()Landroid/view/View;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSubTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 483
    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->J:Liop;

    if-nez v4, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    const/4 v1, 0x0

    .line 488
    .local v1, "eventName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 489
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 490
    const-string/jumbo v1, "h5ToolbarBack"

    .line 515
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->o:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->l:Landroid/widget/TextView;

    .line 516
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 517
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->u:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 520
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->p:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->s:Landroid/widget/TextView;

    .line 521
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 522
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->v:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 525
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->J:Liop;

    invoke-interface {v2, v1, v0}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 491
    :cond_7
    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 492
    const-string/jumbo v1, "h5ToolbarClose"

    goto :goto_1

    .line 493
    :cond_8
    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->o:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 494
    :cond_9
    const-string/jumbo v1, "optionMenu"

    .line 495
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 496
    .restart local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "index"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 497
    :cond_a
    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->p:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 498
    :cond_b
    const-string/jumbo v1, "optionMenu"

    .line 499
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 500
    .restart local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "index"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 501
    :cond_c
    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 502
    :cond_d
    const-string/jumbo v1, "optionMenu"

    .line 503
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 504
    .restart local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "fromMenu"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string/jumbo v4, "index"

    iget-object v5, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_e
    move v2, v3

    goto :goto_2

    .line 506
    :cond_f
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 507
    :cond_10
    const-string/jumbo v1, "titleClick"

    goto/16 :goto_1

    .line 508
    :cond_11
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 509
    const-string/jumbo v1, "subtitleClick"

    goto/16 :goto_1

    .line 510
    :cond_12
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 511
    const-string/jumbo v1, "disClaimerClick"

    goto/16 :goto_1
.end method

.method public openTranslucentStatusBarSupport(I)V
    .locals 5
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 768
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 769
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->L:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    .line 771
    .local v2, "statusBarHeight":I
    if-nez v2, :cond_1

    .line 786
    .end local v2    # "statusBarHeight":I
    :cond_0
    :goto_0
    return-void

    .line 774
    .restart local v2    # "statusBarHeight":I
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->I:Landroid/view/View;

    .line 775
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 776
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 777
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->I:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->I:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 781
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->L:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3, p1}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->setTransparentColor(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5TitleBar"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public releaseViewList()V
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->w:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->q:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 746
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 748
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->t:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 749
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 751
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->n:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 752
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 754
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->z:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 755
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 757
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->C:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 758
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 760
    :cond_6
    return-void
.end method

.method public resetTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->getContentBgView()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 676
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/search/H5SearchView;->setSearchBarColor(I)V

    .line 680
    :cond_0
    return-void
.end method

.method public setBackCloseBtnImage(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v3, -0x202f77

    const/high16 v2, -0x1000000

    .line 841
    const-string/jumbo v0, "yellow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->e:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 843
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->f:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 844
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_title_bar_progress_gold:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->H:I

    .line 846
    :cond_0
    const-string/jumbo v0, "black"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->e:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 848
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->f:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 849
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_title_bar_progress:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->H:I

    .line 851
    :cond_1
    return-void
.end method

.method public setBtIcon(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "btIcon"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->q:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setH5Page(Liop;)V
    .locals 0
    .param p1, "h5Page"    # Liop;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->J:Liop;

    .line 533
    return-void
.end method

.method public setIH5TinyPopMenu(Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;)V
    .locals 0
    .param p1, "tinyPopMenu"    # Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    .prologue
    .line 867
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->Q:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    .line 868
    return-void
.end method

.method public setImgTitle(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "imgTitle"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x8

    .line 382
    if-eqz p1, :cond_0

    .line 383
    const-string/jumbo v0, "H5TitleBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "imgTitle width "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", imgTitle height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 384
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    const-string/jumbo v0, "H5TitleBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ivImageTitle width "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->d:Landroid/widget/ImageView;

    .line 390
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ivImageTitle height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void
.end method

.method public setImgTitle(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1, "imgTitle"    # Landroid/graphics/Bitmap;
    .param p2, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 397
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 400
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setImgTitle(Landroid/graphics/Bitmap;)V

    .line 401
    return-void
.end method

.method public setOptionMenu(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 12
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v11, 0x8

    const/4 v2, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 537
    const-string/jumbo v7, "reset"

    invoke-static {p1, v7, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v6

    .line 538
    .local v6, "reset":Z
    const-string/jumbo v7, "override"

    invoke-static {p1, v7, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v5

    .line 539
    .local v5, "override":Z
    const-string/jumbo v7, "tiny"

    const-string/jumbo v8, "bizType"

    invoke-static {p1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 540
    .local v1, "isTinySence":Z
    const-string/jumbo v7, "menus"

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 541
    .local v3, "menus":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v6, :cond_2

    if-nez v1, :cond_2

    .line 542
    iget-object v7, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->j:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    iget-object v7, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->w:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v10, v7}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a(II)Z

    move-result v7

    if-nez v7, :cond_0

    move v8, v9

    .line 1366
    :goto_0
    if-gtz v8, :cond_0

    .line 1367
    iget-object v7, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->w:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1366
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 544
    :cond_0
    sget-object v7, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    invoke-virtual {p0, v7, v9, v10}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V

    .line 545
    iput v10, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->G:I

    .line 573
    :cond_1
    :goto_1
    return-void

    .line 548
    :cond_2
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 549
    iput v9, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->G:I

    .line 550
    if-eqz v5, :cond_4

    if-nez v1, :cond_4

    .line 551
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-le v7, v2, :cond_3

    .line 552
    .local v2, "menuSize":I
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v2, :cond_1

    .line 554
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 555
    .local v4, "menusItem":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {p0, v4, v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a(Lcom/alibaba/fastjson/JSONObject;I)V

    .line 556
    iget v7, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->G:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->G:I

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 551
    .end local v0    # "i":I
    .end local v2    # "menuSize":I
    .end local v4    # "menusItem":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    goto :goto_2

    .line 559
    :cond_4
    iput v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->G:I

    .line 561
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 562
    .restart local v4    # "menusItem":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {p0, v4, v10}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a(Lcom/alibaba/fastjson/JSONObject;I)V

    goto :goto_1

    .line 565
    .end local v4    # "menusItem":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    if-eqz v1, :cond_6

    .line 566
    invoke-direct {p0, p1, v10}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a(Lcom/alibaba/fastjson/JSONObject;I)V

    .line 567
    iput v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->G:I

    goto :goto_1

    .line 569
    :cond_6
    invoke-direct {p0, p1, v9}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a(Lcom/alibaba/fastjson/JSONObject;I)V

    .line 570
    iput v10, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->G:I

    goto :goto_1
.end method

.method public setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;)V
    .locals 2
    .param p1, "type"    # Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V

    .line 278
    return-void
.end method

.method public setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V
    .locals 9
    .param p1, "type"    # Lcom/alipay/mobile/h5container/api/H5Param$OptionType;
    .param p2, "num"    # I
    .param p3, "byIndex"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "icon":Z
    const/4 v2, 0x0

    .line 284
    .local v2, "text":Z
    const/4 v1, 0x0

    .line 285
    .local v1, "menu":Z
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    if-ne p1, v3, :cond_5

    .line 286
    const/4 v0, 0x1

    .line 292
    :cond_0
    :goto_0
    if-eqz v2, :cond_7

    move v4, v5

    .line 1306
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p2, v3}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1309
    if-eqz p3, :cond_8

    .line 1310
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->t:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1311
    if-nez v4, :cond_1

    .line 1312
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->F:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v4, v3, p2

    .line 293
    :cond_1
    if-eqz v0, :cond_a

    move v4, v5

    .line 1325
    :goto_2
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p2, v3}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1328
    if-eqz p3, :cond_b

    .line 1329
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->q:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1330
    if-nez v4, :cond_2

    .line 1331
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->F:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v4, v3, p2

    .line 294
    :cond_2
    if-eqz v1, :cond_3

    move v6, v5

    .line 1344
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p2, v3}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1347
    if-eqz p3, :cond_d

    .line 1348
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->n:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1349
    if-nez v6, :cond_4

    .line 1350
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->F:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v4, v3, p2

    :cond_4
    return-void

    .line 287
    :cond_5
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    if-ne p1, v3, :cond_6

    .line 288
    const/4 v2, 0x1

    goto :goto_0

    .line 289
    :cond_6
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    if-ne p1, v3, :cond_0

    .line 290
    const/4 v1, 0x1

    goto :goto_0

    .line 292
    :cond_7
    const/16 v3, 0x8

    move v4, v3

    goto :goto_1

    :cond_8
    move v7, v5

    .line 1315
    :goto_3
    if-ge v7, p2, :cond_1

    .line 1316
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->t:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1317
    if-nez v4, :cond_9

    .line 1318
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->F:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    sget-object v8, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v8, v3, p2

    .line 1315
    :cond_9
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_3

    :cond_a
    move v4, v6

    .line 293
    goto :goto_2

    :cond_b
    move v7, v5

    .line 1334
    :goto_4
    if-ge v7, p2, :cond_2

    .line 1335
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->q:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1336
    if-nez v4, :cond_c

    .line 1337
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->F:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    sget-object v8, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v8, v3, p2

    .line 1334
    :cond_c
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_4

    .line 1353
    :cond_d
    :goto_5
    if-ge v5, p2, :cond_4

    .line 1354
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->n:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1355
    if-nez v6, :cond_e

    .line 1356
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->F:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v4, v3, p2

    .line 1353
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_5
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 373
    if-eqz p1, :cond_0

    .line 374
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 377
    .local v0, "showSub":Z
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    return-void

    .end local v0    # "showSub":Z
    :cond_1
    move v0, v1

    .line 376
    goto :goto_0

    .line 377
    .restart local v0    # "showSub":Z
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 260
    if-eqz p1, :cond_1

    .line 1269
    const-string/jumbo v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 260
    :goto_0
    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    :cond_1
    return-void

    .line 1272
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTitleBarSearch(Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 807
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->E:Z

    .line 809
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 810
    const-string/jumbo v3, "navSearchBar_type"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "navSearchBar_type":Ljava/lang/String;
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/search/H5SearchView;->switchToWhiteTheme()V

    .line 812
    const-string/jumbo v3, "entrance"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 813
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 814
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_embed_title_search_stub:I

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_embed_title_search:I

    invoke-static {v3, v4, v5, v6}, Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;->setViewVisibility(Landroid/view/View;III)V

    .line 816
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_embed_title_search_stub:I

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_embed_title_search:I

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;->getView(Landroid/view/View;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 818
    .local v2, "searchInput":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 819
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->L:Landroid/content/Context;

    invoke-interface {v3, v4, v2, p1}, Lcom/alipay/mobile/nebula/search/H5SearchView;->showSearch(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/os/Bundle;)V

    .line 820
    const-string/jumbo v3, "transparentTitle"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 821
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->e:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 835
    .end local v0    # "navSearchBar_type":Ljava/lang/String;
    .end local v2    # "searchInput":Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-object v2

    .line 825
    .restart local v0    # "navSearchBar_type":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 826
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_full_search_bar_stub:I

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_full_search_bar:I

    invoke-static {v3, v4, v5, v6}, Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;->setViewVisibility(Landroid/view/View;III)V

    .line 828
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_full_search_bar_stub:I

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_full_search_bar:I

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;->getView(Landroid/view/View;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 830
    .local v1, "searchBar":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->L:Landroid/content/Context;

    invoke-interface {v3, v4, v1, p1}, Lcom/alipay/mobile/nebula/search/H5SearchView;->showSearch(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/os/Bundle;)V

    move-object v2, v1

    .line 831
    goto :goto_0

    .line 835
    .end local v0    # "navSearchBar_type":Ljava/lang/String;
    .end local v1    # "searchBar":Landroid/widget/LinearLayout;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setTitleTxtColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 855
    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 856
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 857
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 858
    return-void
.end method

.method public showBackButton(Z)V
    .locals 5
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 411
    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->O:Z

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->g:Landroid/widget/RelativeLayout;

    .line 414
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 415
    .local v0, "rlTitleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 416
    return-void

    .end local v0    # "rlTitleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    move v1, v3

    .line 411
    goto :goto_0

    .line 415
    .restart local v0    # "rlTitleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->L:Landroid/content/Context;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    goto :goto_1
.end method

.method public showCloseButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->O:Z

    .line 406
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    return-void

    .line 406
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showOptionMenu(Z)V
    .locals 3
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 420
    if-eqz p1, :cond_0

    .line 421
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->G:I

    packed-switch v0, :pswitch_data_0

    .line 434
    :goto_0
    return-void

    .line 423
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 426
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showTitleDisclaimer(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 453
    if-eqz p1, :cond_1

    .line 454
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showTitleLoading(Z)V
    .locals 7
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 438
    if-eqz p1, :cond_0

    .line 439
    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_nav_loading_stub:I

    sget v6, Lcom/alipay/mobile/nebula/R$id;->h5_nav_loading:I

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;->getView(Landroid/view/View;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 441
    .local v2, "progressBar":Landroid/widget/ProgressBar;
    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->L:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->H:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 442
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->L:Landroid/content/Context;

    const/high16 v5, 0x41880000    # 17.0f

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 443
    .local v0, "dimen":I
    invoke-virtual {v1, v3, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 444
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    .end local v0    # "dimen":I
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "progressBar":Landroid/widget/ProgressBar;
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_nav_loading_stub:I

    sget v6, Lcom/alipay/mobile/nebula/R$id;->h5_nav_loading:I

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v4, v5, v6, v3}, Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;->setViewVisibility(Landroid/view/View;III)V

    .line 448
    return-void

    .line 446
    :cond_1
    const/16 v3, 0x8

    goto :goto_0
.end method

.method public switchToBlueTheme()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    const v1, -0xeeeeef

    const v2, -0xef7117

    .line 712
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 713
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 714
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 715
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 718
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->e:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 721
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->f:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 722
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->l:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 723
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->m:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 724
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->c:Landroid/widget/TextView;

    const v1, -0x666667

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 726
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_title_bar_progress:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->H:I

    .line 728
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->E:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 729
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/search/H5SearchView;->switchToOriginal()V

    .line 732
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->Q:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    if-eqz v0, :cond_3

    .line 733
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->Q:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->onSwitchToBlueTheme()V

    .line 735
    :cond_3
    return-void
.end method

.method public switchToTitleBar()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 791
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_full_search_bar_stub:I

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_full_search_bar:I

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;->setViewVisibility(Landroid/view/View;III)V

    .line 793
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 796
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->L:Landroid/content/Context;

    const-string/jumbo v3, "input_method"

    .line 797
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 798
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->D:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5TitleBar"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public switchToWhiteTheme()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v1, -0xef7117

    const/4 v2, -0x1

    .line 684
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 685
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 686
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 687
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 690
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->e:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 694
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->f:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 695
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->l:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 696
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->m:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 697
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->c:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 699
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_title_bar_progress_white:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->H:I

    .line 701
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->E:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 702
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->a()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/search/H5SearchView;->switchToWhiteTheme()V

    .line 705
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->Q:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    if-eqz v0, :cond_3

    .line 706
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->Q:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->onSwitchToWhiteTheme()V

    .line 708
    :cond_3
    return-void
.end method
