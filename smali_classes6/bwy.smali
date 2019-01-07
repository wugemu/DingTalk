.class public final Lbwy;
.super Ljava/lang/Object;
.source "HalfPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbww$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbwy$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/app/Activity;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Lbww$a;

.field private l:Lbwy$a;

.field private m:Llgf;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbwy$a;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lbwy$a;
    .param p3, "contentView"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lbwy;->e:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Lbwy;->l:Lbwy$a;

    .line 49
    iput-object p3, p0, Lbwy;->f:Landroid/view/View;

    .line 50
    sget v0, Lbtp$e;->layout_half:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbwy;->g:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lbwy;->g:Landroid/view/View;

    sget v1, Lbtp$e;->layout_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbwy;->h:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lbwy;->g:Landroid/view/View;

    sget v1, Lbtp$e;->tv_link_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbwy;->a:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lbwy;->g:Landroid/view/View;

    sget v1, Lbtp$e;->tv_nick:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbwy;->b:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lbwy;->g:Landroid/view/View;

    sget v1, Lbtp$e;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbwy;->c:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lbwy;->g:Landroid/view/View;

    sget v1, Lbtp$e;->tv_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbwy;->d:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lbwy;->g:Landroid/view/View;

    sget v1, Lbtp$e;->tv_to_full:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbwy;->i:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lbwy;->g:Landroid/view/View;

    sget v1, Lbtp$e;->iv_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbwy;->j:Landroid/widget/ImageView;

    .line 59
    new-instance v0, Lbwx;

    invoke-direct {v0, p0}, Lbwx;-><init>(Lbww$b;)V

    .line 1064
    iget-object v0, p0, Lbwy;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1065
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lbwy;->e:Landroid/app/Activity;

    new-instance v2, Lbwy$1;

    invoke-direct {v2, p0}, Lbwy$1;-><init>(Lbwy;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 1079
    iget-object v1, p0, Lbwy;->g:Landroid/view/View;

    new-instance v2, Lbwy$2;

    invoke-direct {v2, p0, v0}, Lbwy$2;-><init>(Lbwy;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lbwy;)V
    .locals 3
    .param p0, "x0"    # Lbwy;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 28
    .line 3089
    iget-object v0, p0, Lbwy;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3090
    iget-object v0, p0, Lbwy;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3091
    iget-object v0, p0, Lbwy;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3092
    iget-object v0, p0, Lbwy;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    .line 3094
    :cond_0
    iget-object v0, p0, Lbwy;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3095
    iget-object v0, p0, Lbwy;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3096
    iget-object v0, p0, Lbwy;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lbwy;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lbwy;

    .prologue
    .line 28
    iget-object v0, p0, Lbwy;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lbwy;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lbwy;

    .prologue
    .line 28
    iget-object v0, p0, Lbwy;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lbwy;)Lbww$a;
    .locals 1
    .param p0, "x0"    # Lbwy;

    .prologue
    .line 28
    iget-object v0, p0, Lbwy;->k:Lbww$a;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Lbwy;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public final a(Landroid/view/ViewParent;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewParent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 172
    iget-object v0, p0, Lbwy;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lbwy;->l:Lbwy$a;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lbwy;->l:Lbwy$a;

    invoke-interface {v0, p1}, Lbwy$a;->a(Landroid/view/ViewParent;)V

    .line 176
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lbwy;->e()V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lbwy;->f()V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 196
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lbwy;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 141
    iget-object v1, p0, Lbwy;->e:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 145
    :cond_0
    :try_start_0
    iget-object v1, p0, Lbwy;->m:Llgf;

    if-nez v1, :cond_1

    .line 146
    new-instance v1, Llgf;

    iget-object v2, p0, Lbwy;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbtp$d;->live_status:I

    invoke-direct {v1, v2, v3}, Llgf;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lbwy;->m:Llgf;

    .line 148
    :cond_1
    iget-object v1, p0, Lbwy;->j:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lbwy;->j:Landroid/widget/ImageView;

    iget-object v2, p0, Lbwy;->m:Llgf;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v1, p0, Lbwy;->m:Llgf;

    invoke-virtual {v1}, Llgf;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "initGifDrawable failed="

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2013
    const-string/jumbo v2, "live"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lbwy;->m:Llgf;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lbwy;->j:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lbwy;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v0, p0, Lbwy;->m:Llgf;

    invoke-virtual {v0}, Llgf;->stop()V

    .line 161
    iget-object v0, p0, Lbwy;->m:Llgf;

    invoke-virtual {v0}, Llgf;->a()V

    .line 162
    iput-object v2, p0, Lbwy;->m:Llgf;

    .line 164
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 206
    .local v0, "id":I
    sget v1, Lbtp$e;->tv_to_full:I

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v1, p0, Lbwy;->k:Lbww$a;

    iget-object v2, p0, Lbwy;->e:Landroid/app/Activity;

    iget-object v3, p0, Lbwy;->f:Landroid/view/View;

    invoke-interface {v1, v2, v3}, Lbww$a;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 209
    :cond_0
    return-void
.end method

.method public final bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lbww$a;

    .line 2180
    iput-object p1, p0, Lbwy;->k:Lbww$a;

    .line 28
    return-void
.end method
