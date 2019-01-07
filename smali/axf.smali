.class public final Laxf;
.super Lawy;
.source "HeaderEventHolder.java"


# instance fields
.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lawy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 36
    sget v0, Laow$e;->calendar_layout_event_header:I

    return v0
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "isLastCommon"    # Z

    .prologue
    .line 162
    return-void
.end method

.method final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 41
    iget-object v0, p0, Laxf;->a:Landroid/view/View;

    sget v1, Laow$d;->layout_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laxf;->e:Landroid/view/View;

    .line 42
    iget-object v0, p0, Laxf;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laxf;->f:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Laxf;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laxf;->g:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Laxf;->a:Landroid/view/View;

    sget v1, Laow$d;->rl_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Laxf;->h:Landroid/widget/RelativeLayout;

    .line 46
    iget-object v0, p0, Laxf;->a:Landroid/view/View;

    sget v1, Laow$d;->iv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laxf;->i:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Laxf;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_empty_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laxf;->j:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Laxf;->e:Landroid/view/View;

    new-instance v1, Laxf$1;

    invoke-direct {v1, p0}, Laxf$1;-><init>(Laxf;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Laxf;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Laxf$2;

    invoke-direct {v1, p0}, Laxf$2;-><init>(Laxf;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "isLast"    # Z

    .prologue
    .line 166
    return-void
.end method

.method public final c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 88
    iget-object v1, p0, Laxf;->d:Lawv;

    instance-of v1, v1, Lawt;

    if-nez v1, :cond_0

    .line 4148
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Laxf;->d:Lawv;

    check-cast v0, Lawt;

    .line 1097
    .local v0, "event":Lawt;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2030
    iget-wide v2, v0, Lawt;->b:J

    .line 1098
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1100
    iget-object v1, p0, Laxf;->f:Landroid/widget/TextView;

    .line 3030
    iget-wide v2, v0, Lawt;->b:J

    .line 1100
    iget-object v4, p0, Laxf;->b:Landroid/app/Activity;

    invoke-static {v2, v3, v4}, Lcog;->b(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3038
    iget v1, v0, Lawt;->d:I

    .line 4034
    iget-boolean v2, v0, Lawt;->c:Z

    .line 1103
    if-eqz v2, :cond_2

    if-lez v1, :cond_2

    .line 1104
    iget-object v2, p0, Laxf;->e:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    iget-object v2, p0, Laxf;->g:Landroid/widget/TextView;

    iget-object v3, p0, Laxf;->b:Landroid/app/Activity;

    sget v4, Laow$f;->dt_calendar_overdue_title:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4112
    :goto_1
    if-eqz v0, :cond_1

    .line 5026
    iget v1, v0, Lawt;->a:I

    .line 4112
    if-lez v1, :cond_3

    .line 4113
    :cond_1
    iget-object v1, p0, Laxf;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1107
    :cond_2
    iget-object v1, p0, Laxf;->e:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 4116
    :cond_3
    iget-object v1, p0, Laxf;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4117
    invoke-static {}, Lavu;->a()Ljava/util/Calendar;

    move-result-object v1

    .line 5030
    iget-wide v2, v0, Lawt;->b:J

    .line 4118
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4119
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 4120
    packed-switch v1, :pswitch_data_0

    .line 4150
    iget-object v1, p0, Laxf;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4151
    iget-object v1, p0, Laxf;->j:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4122
    :pswitch_0
    iget-object v1, p0, Laxf;->i:Landroid/widget/ImageView;

    sget v2, Laow$c;->calendar_empty_icon_monday:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4123
    iget-object v1, p0, Laxf;->j:Landroid/widget/TextView;

    sget v2, Laow$f;->dt_calendar_empty_tip_monday:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 4126
    :pswitch_1
    iget-object v1, p0, Laxf;->i:Landroid/widget/ImageView;

    sget v2, Laow$c;->calendar_empty_icon_tuesday:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4127
    iget-object v1, p0, Laxf;->j:Landroid/widget/TextView;

    sget v2, Laow$f;->dt_calendar_empty_tip_tuesday:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 4130
    :pswitch_2
    iget-object v1, p0, Laxf;->i:Landroid/widget/ImageView;

    sget v2, Laow$c;->calendar_empty_icon_wednesday:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4131
    iget-object v1, p0, Laxf;->j:Landroid/widget/TextView;

    sget v2, Laow$f;->dt_calendar_empty_tip_wednesday:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 4134
    :pswitch_3
    iget-object v1, p0, Laxf;->i:Landroid/widget/ImageView;

    sget v2, Laow$c;->calendar_empty_icon_thursday:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4135
    iget-object v1, p0, Laxf;->j:Landroid/widget/TextView;

    sget v2, Laow$f;->dt_calendar_empty_tip_thursday:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 4138
    :pswitch_4
    iget-object v1, p0, Laxf;->i:Landroid/widget/ImageView;

    sget v2, Laow$c;->calendar_empty_icon_friday:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4139
    iget-object v1, p0, Laxf;->j:Landroid/widget/TextView;

    sget v2, Laow$f;->dt_calendar_empty_tip_friday:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 4142
    :pswitch_5
    iget-object v1, p0, Laxf;->i:Landroid/widget/ImageView;

    sget v2, Laow$c;->calendar_empty_icon_saturday:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4143
    iget-object v1, p0, Laxf;->j:Landroid/widget/TextView;

    sget v2, Laow$f;->dt_calendar_empty_tip_saturday:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 4146
    :pswitch_6
    iget-object v1, p0, Laxf;->i:Landroid/widget/ImageView;

    sget v2, Laow$c;->calendar_empty_icon_sunday:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4147
    iget-object v1, p0, Laxf;->j:Landroid/widget/TextView;

    sget v2, Laow$f;->dt_calendar_empty_tip_sunday:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 4120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    return-void
.end method
