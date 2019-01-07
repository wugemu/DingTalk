.class abstract Lawz;
.super Lawy;
.source "CommonEventHolder.java"


# instance fields
.field e:Landroid/widget/RelativeLayout;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lawy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 34
    sget v0, Laow$e;->calendar_layout_event_common:I

    return v0
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "isLastCommon"    # Z

    .prologue
    .line 70
    return-void
.end method

.method final a(ZJJJ)V
    .locals 2
    .param p1, "isAllDayEvent"    # Z
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "dayStartTimeMillis"    # J

    .prologue
    .line 77
    iget-object v0, p0, Lawz;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    if-nez p1, :cond_0

    invoke-static/range {p2 .. p7}, Lawj;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lawz;->k:Landroid/widget/TextView;

    sget v1, Laow$f;->dt_create_event_item_all_day:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lawz;->l:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {p2, p3, p4, p5}, Lawj;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lawz;->k:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lavl;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lawz;->l:Landroid/widget/TextView;

    invoke-static {p4, p5}, Lavl;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :cond_2
    cmp-long v0, p2, p4

    if-nez v0, :cond_3

    .line 93
    iget-object v0, p0, Lawz;->k:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lavl;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lawz;->l:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-static {p2, p3, p6, p7}, Lawj;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    iget-object v0, p0, Lawz;->k:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lavl;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lawz;->l:Landroid/widget/TextView;

    sget v1, Laow$f;->dt_conference_zero_time:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 101
    :cond_4
    iget-object v0, p0, Lawz;->k:Landroid/widget/TextView;

    invoke-static {p6, p7}, Lavl;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lawz;->l:Landroid/widget/TextView;

    invoke-static {p4, p5}, Lavl;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lawz;->a:Landroid/view/View;

    sget v1, Laow$d;->rl_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lawz;->e:Landroid/widget/RelativeLayout;

    .line 52
    iget-object v0, p0, Lawz;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawz;->f:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lawz;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_summary:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawz;->g:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lawz;->a:Landroid/view/View;

    sget v1, Laow$d;->iv_location:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lawz;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 55
    iget-object v0, p0, Lawz;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_location:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawz;->i:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lawz;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_from:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawz;->j:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lawz;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_time_start:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawz;->k:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lawz;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_time_end:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawz;->l:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lawz;->a:Landroid/view/View;

    sget v1, Laow$d;->iv_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lawz;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 62
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "isLast"    # Z

    .prologue
    .line 74
    return-void
.end method

.method protected c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v1, p0, Lawz;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 40
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lavl;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45
    :goto_0
    iget-object v1, p0, Lawz;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const/high16 v2, 0x425c0000    # 55.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method
