.class public final Lbiy;
.super Lbin;
.source "UnReadViewHolderV2.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lbin;-><init>(Landroid/app/Activity;)V

    .line 31
    return-void
.end method

.method static synthetic a(Lbiy;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lbiy;

    .prologue
    .line 22
    iget-object v0, p0, Lbiy;->c:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 26
    sget v0, Laxp$g;->ding_notify_center_list_item_unread:I

    return v0
.end method

.method public final a(Lbgk;Z)V
    .locals 5
    .param p1, "unreadObj"    # Lbgk;
    .param p2, "isLastPosition"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 37
    if-nez p1, :cond_0

    .line 2056
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-wide v0, p1, Lbgk;->b:J

    .line 40
    invoke-virtual {p0, v0, v1, v4}, Lbiy;->a(JZ)V

    .line 41
    iget-object v0, p0, Lbiy;->f:Landroid/widget/TextView;

    .line 1030
    iget-wide v2, p1, Lbgk;->d:J

    .line 41
    const/4 v1, 0x1

    invoke-static {v2, v3, v4, v1}, Lcog;->a(JZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lbiy;->g:Landroid/widget/TextView;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lbiy;->e:Landroid/widget/TextView;

    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v1

    iget-object v2, p0, Lbiy;->c:Landroid/app/Activity;

    .line 2026
    iget-object v3, p1, Lbgk;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v2, v3}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lbiy;->d:Landroid/view/View;

    sget v1, Laxp$e;->ding_bg_yellow_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    if-eqz p2, :cond_1

    .line 46
    iget-object v0, p0, Lbiy;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2054
    :goto_1
    if-nez p1, :cond_2

    .line 2055
    iget-object v0, p0, Lbiy;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lbiy;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 3018
    :cond_2
    iget-wide v0, p1, Lbgk;->a:J

    .line 2058
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2059
    iget-object v1, p0, Lbiy;->d:Landroid/view/View;

    new-instance v2, Lbiy$1;

    invoke-direct {v2, p0, v0}, Lbiy$1;-><init>(Lbiy;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
