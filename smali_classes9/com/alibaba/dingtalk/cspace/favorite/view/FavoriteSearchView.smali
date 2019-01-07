.class public Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;
.super Landroid/widget/RelativeLayout;
.source "FavoriteSearchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/EditText;

.field b:Landroid/os/Handler;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Lgcw;

.field private f:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$6;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$6;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->b:Landroid/os/Handler;

    .line 145
    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$7;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$7;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->h:Ljava/lang/Runnable;

    .line 1053
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lfzs$g;->favorite_search_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1054
    sget v0, Lfzs$f;->tv_type:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->c:Landroid/widget/TextView;

    .line 1055
    sget v0, Lfzs$f;->edt_search:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a:Landroid/widget/EditText;

    .line 1056
    sget v0, Lfzs$f;->img_clear:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->d:Landroid/widget/ImageView;

    .line 1058
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a:Landroid/widget/EditText;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$1;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a:Landroid/widget/EditText;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$2;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$2;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1088
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$3;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$3;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1099
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a:Landroid/widget/EditText;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$4;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$4;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1118
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$5;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$5;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1129
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->addView(Landroid/view/View;)V

    .line 1130
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->invalidate()V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->f:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)Lgcw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->e:Lgcw;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    .prologue
    .line 24
    .line 3153
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->c:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3154
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->e:Lgcw;

    .line 24
    return-void
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 166
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->f:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$a;

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->e:Lgcw;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->e:Lgcw;

    .line 2052
    iget-object v0, v1, Lgcw;->a:Ljava/lang/String;

    .line 171
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->f:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$a;

    invoke-interface {v1, v0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v0    # "type":Ljava/lang/String;
    :cond_2
    return-void

    .line 169
    .restart local v0    # "type":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 206
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->d:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    return-void

    .line 206
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getSearchTypeItem()Lgcw;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 197
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->e:Lgcw;

    goto :goto_0
.end method

.method public setAndSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 163
    :cond_0
    return-void
.end method

.method public setListener(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$a;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->f:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$a;

    .line 50
    return-void
.end method

.method public setSearchTypeItem(Lgcw;)V
    .locals 4
    .param p1, "searchTypeItem"    # Lgcw;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 180
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->e:Lgcw;

    .line 181
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->e:Lgcw;

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->c:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->e:Lgcw;

    .line 3024
    iget-object v1, v1, Lgcw;->b:Ljava/lang/String;

    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->c:Landroid/widget/TextView;

    .line 188
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3064
    iget v2, p1, Lgcw;->f:I

    .line 188
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
