.class public final Laxc;
.super Lawy;
.source "DueTodayTaskHolder.java"


# instance fields
.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lawy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 28
    sget v0, Laow$e;->calendar_layout_due_today_task:I

    return v0
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "isLastCommon"    # Z

    .prologue
    .line 75
    return-void
.end method

.method final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 33
    iget-object v0, p0, Laxc;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laxc;->e:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Laxc;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_summary:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laxc;->f:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Laxc;->a:Landroid/view/View;

    sget v1, Laow$d;->divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laxc;->g:Landroid/view/View;

    .line 36
    return-void
.end method

.method public final b(Z)V
    .locals 3
    .param p1, "isLast"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 79
    iget-object v0, p0, Laxc;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 80
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Laxc;->b:Landroid/app/Activity;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    goto :goto_0
.end method

.method final c()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 40
    iget-object v3, p0, Laxc;->d:Lawv;

    instance-of v3, v3, Lawq;

    if-nez v3, :cond_0

    .line 41
    iget-object v3, p0, Laxc;->e:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v3, p0, Laxc;->f:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Laxc;->d:Lawv;

    check-cast v0, Lawq;

    .line 1029
    .local v0, "event":Lawq;
    iget-object v1, v0, Lawq;->a:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 49
    .local v1, "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    if-nez v1, :cond_1

    .line 50
    iget-object v3, p0, Laxc;->e:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v3, p0, Laxc;->f:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    iget-object v3, p0, Laxc;->e:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSubTitleTempId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSubTitleTempData()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lawh;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "summary":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    iget-object v3, p0, Laxc;->f:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    .end local v2    # "summary":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Laxc;->e:Landroid/widget/TextView;

    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v4

    iget-object v5, p0, Laxc;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSubject()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Laxc;->b:Landroid/app/Activity;

    iget-object v8, p0, Laxc;->e:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    invoke-static {v7, v8}, Lcms;->d(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    .line 1050
    invoke-virtual {v4, v5, v6, v7}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 65
    .restart local v2    # "summary":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Laxc;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 84
    iget-object v2, p0, Laxc;->d:Lawv;

    instance-of v2, v2, Lawq;

    if-nez v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Laxc;->d:Lawv;

    check-cast v0, Lawq;

    .line 2029
    .local v0, "event":Lawq;
    iget-object v1, v0, Lawq;->a:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 89
    .local v1, "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getNavUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Laxc;->b:Landroid/app/Activity;

    invoke-static {v2, v3}, Lavr;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 2148
    const-string/jumbo v2, "ding_calendar_date_task_sent"

    invoke-static {v2}, Lavw;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
