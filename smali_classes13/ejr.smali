.class public final Lejr;
.super Ljava/lang/Object;
.source "HomePopupManger.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const v0, 0x7f1105d5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lejr;->a:Landroid/view/View;

    .line 25
    const v0, 0x7f1105d3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lejr;->b:Landroid/widget/ImageView;

    .line 26
    const v0, 0x7f1105d4

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lejr;->c:Landroid/widget/ImageView;

    .line 27
    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lejr;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lejr;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1086
    iget-object v0, p0, Lejr;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lejr;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 62
    :goto_1
    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lejr;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1086
    goto :goto_1

    .line 65
    :cond_2
    iget-object v0, p0, Lejr;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lejr;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lejr;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lejr;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lejr;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lejr;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lejr;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 30
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1052
    iget-object v0, p0, Lejr;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v2, p0, Lejr;->a:Landroid/view/View;

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :cond_0
    if-eqz p2, :cond_1

    .line 35
    invoke-direct {p0, v1}, Lejr;->b(Z)V

    .line 36
    invoke-direct {p0, v1}, Lejr;->a(Z)V

    .line 49
    :cond_1
    :goto_1
    return-void

    .line 1053
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 38
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 40
    invoke-direct {p0, p2}, Lejr;->b(Z)V

    .line 41
    if-eqz p2, :cond_1

    .line 43
    invoke-direct {p0, v1}, Lejr;->a(Z)V

    goto :goto_1

    .line 45
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 47
    invoke-direct {p0, p2}, Lejr;->a(Z)V

    goto :goto_1
.end method
