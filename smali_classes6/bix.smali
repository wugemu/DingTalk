.class public final Lbix;
.super Lbin;
.source "CommentRemindViewHolderV2.java"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lbin;-><init>(Landroid/app/Activity;)V

    .line 39
    iget-object v0, p0, Lbix;->d:Landroid/view/View;

    sget v1, Laxp$f;->layout_ding_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbix;->a:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lbix;->d:Landroid/view/View;

    sget v1, Laxp$f;->ding_content_text_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbix;->b:Landroid/widget/TextView;

    .line 41
    return-void
.end method

.method static synthetic a(Lbix;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lbix;

    .prologue
    .line 26
    iget-object v0, p0, Lbix;->c:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 33
    sget v0, Laxp$g;->ding_notify_center_list_item_new_comment:I

    return v0
.end method

.method public final a(Lbgi;Z)V
    .locals 8
    .param p1, "unreadObj"    # Lbgi;
    .param p2, "isLastPosition"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 44
    if-nez p1, :cond_0

    .line 4074
    :goto_0
    return-void

    .line 1028
    :cond_0
    iget v0, p1, Lbgi;->c:I

    .line 48
    .local v0, "count":I
    if-ne v0, v7, :cond_2

    .line 1032
    iget-object v1, p1, Lbgi;->d:Ljava/lang/String;

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    iget-object v1, p0, Lbix;->e:Landroid/widget/TextView;

    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v2

    iget-object v3, p0, Lbix;->c:Landroid/app/Activity;

    .line 2032
    iget-object v4, p1, Lbgi;->d:Ljava/lang/String;

    .line 50
    invoke-virtual {v2, v3, v4}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3024
    :cond_1
    iget-wide v2, p1, Lbgi;->b:J

    .line 52
    invoke-virtual {p0, v2, v3, v6}, Lbix;->a(JZ)V

    .line 59
    :goto_1
    iget-object v1, p0, Lbix;->f:Landroid/widget/TextView;

    .line 4036
    iget-wide v2, p1, Lbgi;->e:J

    .line 59
    invoke-static {v2, v3, v6, v7}, Lcog;->a(JZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lbix;->g:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    if-eqz p2, :cond_3

    .line 63
    iget-object v1, p0, Lbix;->h:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :goto_2
    iget-object v1, p0, Lbix;->b:Landroid/widget/TextView;

    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v2

    iget-object v3, p0, Lbix;->c:Landroid/app/Activity;

    .line 4040
    iget-object v4, p1, Lbgi;->f:Ljava/lang/String;

    .line 67
    invoke-virtual {v2, v3, v4}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4072
    if-nez p1, :cond_4

    .line 4073
    iget-object v1, p0, Lbix;->d:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 4024
    :cond_2
    iget-wide v2, p1, Lbgi;->b:J

    .line 55
    invoke-virtual {p0, v2, v3, v7}, Lbix;->a(JZ)V

    .line 56
    iget-object v1, p0, Lbix;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lbix;->c:Landroid/app/Activity;

    sget v3, Laxp$i;->dt_ding_notifycenter_comment_new_at:I

    new-array v4, v7, [Ljava/lang/Object;

    .line 57
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 56
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 65
    :cond_3
    iget-object v1, p0, Lbix;->h:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 5020
    :cond_4
    iget-wide v2, p1, Lbgi;->a:J

    .line 4076
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 4077
    iget-object v2, p0, Lbix;->d:Landroid/view/View;

    new-instance v3, Lbix$1;

    invoke-direct {v3, p0, p1, v1}, Lbix$1;-><init>(Lbix;Lbgi;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
