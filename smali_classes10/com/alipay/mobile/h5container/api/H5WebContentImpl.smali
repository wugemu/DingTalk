.class public Lcom/alipay/mobile/h5container/api/H5WebContentImpl;
.super Ljava/lang/Object;
.source "H5WebContentImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/H5WebContentView;


# static fields
.field private static j:Ljava/lang/String;


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

.field public d:Lcom/alipay/mobile/nebula/view/H5Progress;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/LinearLayout;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field private k:Lcom/alipay/mobile/nebula/view/H5LoadingView;

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "H5WebContentImpl"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    sget v0, Lcom/alipay/mobile/nebula/R$layout;->h5_web_content:I

    invoke-static {v0}, Lipg;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_web_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a:Landroid/view/View;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_web_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->b:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_ly_provider_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->f:Landroid/widget/LinearLayout;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_tv_provider_domain:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->g:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_tv_provider_uclogo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->h:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_tv_provider_uc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->i:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_h_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->e:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_pb_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/H5Progress;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->d:Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_loading_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/H5LoadingView;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->k:Lcom/alipay/mobile/nebula/view/H5LoadingView;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->d:Lcom/alipay/mobile/nebula/view/H5Progress;

    new-instance v1, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$1;-><init>(Lcom/alipay/mobile/h5container/api/H5WebContentImpl;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/view/H5Progress;->setNotifier(Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;)V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_pc_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->c:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$color;->h5_provider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/h5container/api/H5WebContentImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5WebContentImpl;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a:Landroid/view/View;

    return-object v0
.end method

.method public getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->k:Lcom/alipay/mobile/nebula/view/H5LoadingView;

    return-object v0
.end method

.method public getH5ProviderDomain()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public getHdivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->e:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgress()Lcom/alipay/mobile/nebula/view/H5Progress;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->d:Lcom/alipay/mobile/nebula/view/H5Progress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->d:Lcom/alipay/mobile/nebula/view/H5Progress;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProviderLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getPullContainer()Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->c:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->c:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustomBackground()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public setProviderLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setProviderText(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method public setProviderUc(Ljava/lang/String;)V
    .locals 1
    .param p1, "providerUc"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public showProviderVisibility(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public swicthDefaultContentBg(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4
    .param p1, "ucLogo"    # Landroid/graphics/drawable/Drawable;
    .param p2, "includeLogo"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v3, -0x646465

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, -0xa0a07

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 179
    if-eqz p2, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->setProviderLogo(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_0
    return-void
.end method

.method public switchCustomContentBg(ILandroid/graphics/drawable/Drawable;Z)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "ucLogo"    # Landroid/graphics/drawable/Drawable;
    .param p3, "includeLogo"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x1

    const/high16 v0, -0x1000000

    const v1, 0x3f4ccccd    # 0.8f

    .line 158
    if-eq p1, v0, :cond_0

    .line 159
    or-int/2addr p1, v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 165
    if-eqz p3, :cond_1

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 169
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->setProviderLogo(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_1
    return-void
.end method
