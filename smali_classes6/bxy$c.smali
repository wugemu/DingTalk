.class final Lbxy$c;
.super Ljava/lang/Object;
.source "LiveReplayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lbxy;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;


# direct methods
.method private constructor <init>(Lbxy;Landroid/view/View;)V
    .locals 1
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 308
    iput-object p1, p0, Lbxy$c;->a:Lbxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    sget v0, Lbtp$e;->iv_cover:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbxy$c;->b:Landroid/widget/ImageView;

    .line 310
    sget v0, Lbtp$e;->iv_cover_blur:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbxy$c;->c:Landroid/widget/ImageView;

    .line 311
    sget v0, Lbtp$e;->tv_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbxy$c;->d:Landroid/widget/TextView;

    .line 312
    sget v0, Lbtp$e;->tv_anchor:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbxy$c;->e:Landroid/widget/TextView;

    .line 313
    sget v0, Lbtp$e;->tv_date:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbxy$c;->f:Landroid/widget/TextView;

    .line 314
    sget v0, Lbtp$e;->tv_duration:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbxy$c;->g:Landroid/widget/TextView;

    .line 315
    sget v0, Lbtp$e;->tv_link_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbxy$c;->h:Landroid/widget/TextView;

    .line 316
    sget v0, Lbtp$e;->tv_share:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbxy$c;->i:Landroid/view/View;

    .line 317
    sget v0, Lbtp$e;->tv_detail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbxy$c;->j:Landroid/view/View;

    .line 319
    iget-object v0, p0, Lbxy$c;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lbxy$c;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    return-void
.end method

.method synthetic constructor <init>(Lbxy;Landroid/view/View;B)V
    .locals 0
    .param p1, "x0"    # Lbxy;
    .param p2, "x1"    # Landroid/view/View;

    .prologue
    .line 297
    invoke-direct {p0, p1, p2}, Lbxy$c;-><init>(Lbxy;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lbxy$c;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lbxy$c;

    .prologue
    .line 297
    iget-object v0, p0, Lbxy$c;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lbxy$c;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lbxy$c;

    .prologue
    .line 297
    iget-object v0, p0, Lbxy$c;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lbxy$c;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lbxy$c;

    .prologue
    .line 297
    iget-object v0, p0, Lbxy$c;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lbxy$c;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lbxy$c;

    .prologue
    .line 297
    iget-object v0, p0, Lbxy$c;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lbxy$c;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lbxy$c;

    .prologue
    .line 297
    iget-object v0, p0, Lbxy$c;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lbxy$c;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lbxy$c;

    .prologue
    .line 297
    iget-object v0, p0, Lbxy$c;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lbxy$c;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lbxy$c;

    .prologue
    .line 297
    iget-object v0, p0, Lbxy$c;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lbxy$c;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lbxy$c;

    .prologue
    .line 297
    iget-object v0, p0, Lbxy$c;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lbxy$c;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lbxy$c;

    .prologue
    .line 297
    iget-object v0, p0, Lbxy$c;->h:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 326
    .local v0, "id":I
    sget v2, Lbtp$e;->tv_detail:I

    if-ne v0, v2, :cond_1

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 329
    .local v1, "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    iget-object v2, p0, Lbxy$c;->a:Lbxy;

    invoke-static {v2}, Lbxy;->e(Lbxy;)Lbxy$b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Lbxy$c;->a:Lbxy;

    invoke-static {v2}, Lbxy;->e(Lbxy;)Lbxy$b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lbxy$b;->a(ILcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V

    .line 341
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    sget v2, Lbtp$e;->tv_share:I

    if-ne v0, v2, :cond_0

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 336
    .restart local v1    # "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    iget-object v2, p0, Lbxy$c;->a:Lbxy;

    invoke-static {v2}, Lbxy;->e(Lbxy;)Lbxy$b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 337
    iget-object v2, p0, Lbxy$c;->a:Lbxy;

    invoke-static {v2}, Lbxy;->e(Lbxy;)Lbxy$b;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3, v1}, Lbxy$b;->a(ILcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V

    goto :goto_0
.end method
