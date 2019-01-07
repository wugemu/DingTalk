.class public Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;
.super Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;
.source "SendRandomRedPacketsFragment.java"

# interfaces
.implements Lcbj$b;


# instance fields
.field private A:Landroid/widget/RelativeLayout;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/view/View;

.field private D:Lcbj$a;

.field private E:Z

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field protected p:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

.field protected q:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

.field protected r:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

.field protected s:Landroid/widget/TextView;

.field protected t:Landroid/widget/EditText;

.field protected u:Landroid/widget/TextView;

.field protected v:Z

.field protected w:I

.field protected x:I

.field y:Landroid/view/View$OnClickListener;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->t:Landroid/widget/EditText;

    .line 104
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->v:Z

    .line 110
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->E:Z

    .line 252
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->y:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private static a(Landroid/text/Spannable;Landroid/view/View;)V
    .locals 10
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 234
    if-eqz p1, :cond_0

    .line 235
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {p0, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/URLSpan;

    .line 236
    .local v2, "spans":[Landroid/text/style/URLSpan;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-lez v6, :cond_0

    .line 240
    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v4, v2, v5

    .line 241
    .local v4, "urlSpan":Landroid/text/style/URLSpan;
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 242
    .local v3, "start":I
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 243
    .local v0, "end":I
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 244
    .local v1, "flags":I
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 245
    new-instance v7, Lcqk;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcqk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, v7, v3, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 240
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "end":I
    .end local v1    # "flags":I
    .end local v2    # "spans":[Landroid/text/style/URLSpan;
    .end local v3    # "start":I
    .end local v4    # "urlSpan":Landroid/text/style/URLSpan;
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->i()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;JIIZ)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    .line 6307
    invoke-static {}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->g()J

    move-result-wide v0

    .line 6308
    sub-long v2, p1, v0

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 6309
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->h()V

    .line 6310
    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 6311
    sget v0, Lcaj$f;->dt_redpackt_send_time_min_limit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 6317
    :cond_0
    :goto_0
    return-void

    .line 6314
    :cond_1
    sub-long v0, p1, v0

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 6315
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->h()V

    .line 6316
    sget v0, Lcaj$f;->dt_redpackt_send_time_max_limit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 6319
    :cond_2
    iput-boolean v7, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->E:Z

    .line 6320
    iput p3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->w:I

    .line 6321
    iput p4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->x:I

    .line 6323
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 6324
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6325
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 6326
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 6328
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->j:J

    .line 6329
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->z:Landroid/widget/TextView;

    sget v2, Lcaj$f;->dt_luckytime_pick_show:I

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    if-eqz p5, :cond_3

    sget v0, Lcaj$f;->dt_luckytime_tomorrow:I

    .line 6330
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v6

    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const/4 v0, 0x2

    iget v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->x:I

    .line 6331
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 6329
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6330
    :cond_3
    sget v0, Lcaj$f;->dt_luckytime_today:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 76
    .line 5550
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 5551
    sget v1, Lcaj$f;->dt_red_envelop_unit_yuan_AT:I

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "%.2f"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->p:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getTextDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    .line 5552
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcaj$f;->redpackets_send_btn:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5554
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->C:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->h()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)Lcbj$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->D:Lcbj$a;

    return-object v0
.end method

.method protected static g()J
    .locals 4

    .prologue
    .line 558
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v0

    .line 559
    .local v0, "curTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 562
    :cond_0
    return-wide v0
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->E:Z

    .line 302
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->j:J

    .line 303
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->z:Landroid/widget/TextView;

    sget v1, Lcaj$f;->dt_redenvelop_goodtime_pick_cell_comment_notime:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    return-void
.end method

.method private i()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 424
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->p:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getTextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 433
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->p:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getTextDouble()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->r:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->getTextCount()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public final a(D)V
    .locals 9
    .param p1, "payMoney"    # D

    .prologue
    const/4 v6, 0x0

    .line 512
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->q:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 513
    .local v5, "conf":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->r:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 514
    .local v7, "size":I
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->q:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 517
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    .line 518
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    .line 517
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->b(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 519
    return-void
.end method

.method protected a(DZ)V
    .locals 0
    .param p1, "amount"    # D
    .param p3, "forceShowDefault"    # Z

    .prologue
    .line 437
    return-void
.end method

.method public final a(IDD)V
    .locals 8
    .param p1, "payMethod"    # I
    .param p2, "payMoney"    # D
    .param p4, "quota"    # D

    .prologue
    .line 453
    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;-><init>(ILandroid/content/Context;)V

    .line 3066
    .local v3, "payDialog":Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;
    iput-wide p2, v3, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->d:D

    .line 456
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4062
    iput-wide p4, v3, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->c:D

    .line 460
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2;

    move-object v2, p0

    move-wide v4, p4

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;DD)V

    .line 5054
    iput-object v1, v3, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->b:Landroid/view/View$OnClickListener;

    .line 486
    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;

    move-object v2, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;ID)V

    .line 5058
    iput-object v1, v3, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->a:Landroid/view/View$OnClickListener;

    .line 507
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->show()V

    .line 508
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->c()V

    .line 529
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 12
    .param p1, "amount"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/Integer;
    .param p4, "type"    # Ljava/lang/Integer;
    .param p5, "congratulations"    # Ljava/lang/String;
    .param p6, "payMethod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 395
    .local p3, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->E:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 397
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v8

    iget-wide v10, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->j:J

    .line 398
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v9

    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$11;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$11;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V

    const-class v1, Lcma;

    .line 414
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 398
    invoke-interface {v9, v0, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2286
    new-instance v5, Lcbs$1;

    invoke-direct {v5, v8, v0}, Lcbs$1;-><init>(Lcbs;Lcma;)V

    .line 2293
    const-class v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;

    .line 2294
    if-eqz v0, :cond_0

    .line 2295
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;->checkArguments(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Liyv;)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->j:J

    .line 417
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->u:Landroid/widget/TextView;

    sget v1, Lcaj$f;->redpackets_random_guide_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->t:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->r:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->r:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->t:Landroid/widget/EditText;

    .line 446
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 341
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 342
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->d()V

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->b:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$10;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->s:Landroid/widget/TextView;

    sget v1, Lcaj$f;->redpackets_conversation_member_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1376
    :cond_0
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v1, "goodTimeRedEnvelop"

    const-string/jumbo v2, "newEntryOpen"

    invoke-virtual {v0, v1, v2}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1377
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1378
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1379
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1380
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1384
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1385
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    .line 1382
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1387
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1388
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1389
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1390
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 533
    const/4 v4, 0x1

    if-ne v4, p1, :cond_0

    .line 534
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->p:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 535
    .local v0, "money":D
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->r:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->getTextCount()D

    move-result-wide v4

    div-double v2, v0, v4

    .line 536
    .local v2, "perMoney":D
    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_2

    .line 537
    const-wide v4, 0x41086a0000000000L    # 200000.0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    .line 538
    sget v4, Lcaj$f;->redpackest_max_money:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 547
    .end local v0    # "money":D
    .end local v2    # "perMoney":D
    :cond_0
    :goto_0
    return-void

    .line 540
    .restart local v0    # "money":D
    .restart local v2    # "perMoney":D
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->D:Lcbj$a;

    invoke-interface {v4, p2}, Lcbj$a;->a(I)V

    goto :goto_0

    .line 543
    :cond_2
    sget v4, Lcaj$f;->redpackets_minest_limit:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcms;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    .line 125
    new-instance v3, Lcbl;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcbl;-><init>(Lcbj$b;Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->D:Lcbj$a;

    .line 126
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    sget v4, Lcaj$d;->send:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->b:Landroid/widget/Button;

    .line 127
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    sget v4, Lcaj$d;->member_count:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->s:Landroid/widget/TextView;

    .line 128
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    sget v4, Lcaj$d;->tv_top_tip:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->u:Landroid/widget/TextView;

    .line 129
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    sget v4, Lcaj$d;->edt_redpackets_money:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->p:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    .line 130
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    sget v4, Lcaj$d;->edt_congratulations:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->q:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    .line 131
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    sget v4, Lcaj$d;->edt_redpackets_count:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->r:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    .line 132
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    sget v4, Lcaj$d;->rl_send_time:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->A:Landroid/widget/RelativeLayout;

    .line 133
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    sget v4, Lcaj$d;->rl_send_time_desc:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->B:Landroid/widget/TextView;

    .line 134
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    sget v4, Lcaj$d;->send_time_indicator:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->C:Landroid/view/View;

    .line 135
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    sget v4, Lcaj$d;->tv_send_time:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->z:Landroid/widget/TextView;

    .line 136
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    sget v4, Lcaj$d;->line_top:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->n:Landroid/view/View;

    .line 137
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    sget v4, Lcaj$d;->line_bottom:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->o:Landroid/view/View;

    .line 138
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 139
    .local v2, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    sget v3, Lcaj$f;->dt_red_envelop_unit_yuan_AT:I

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "%.2f"

    new-array v6, v6, [Ljava/lang/Object;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    .line 140
    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcaj$f;->redpackets_send_btn:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 141
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->b:Landroid/widget/Button;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->r:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    new-instance v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->r:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    new-instance v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$4;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$4;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->setErrorListener(Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$a;)V

    .line 169
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->p:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    new-instance v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$5;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$5;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->p:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    new-instance v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$6;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$6;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 199
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->i()V

    .line 200
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    sget v4, Lcaj$d;->rl_money:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$7;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$7;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    sget v4, Lcaj$d;->rl_count:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$8;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$8;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->A:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcaj$f;->and_luckytime_send_time_desc:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 219
    .local v1, "spanned":Landroid/text/Spanned;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 220
    .local v0, "spannableString":Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->B:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->a(Landroid/text/Spannable;Landroid/view/View;)V

    .line 221
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->B:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->B:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 224
    const-string/jumbo v3, "lucky_time_used"

    invoke-static {v3, v10}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->C:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->I:Landroid/view/View;

    return-object v3

    .line 227
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->C:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final q_()V
    .locals 1

    .prologue
    .line 523
    sget v0, Lcaj$f;->redpackets_processing:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->a(I)V

    .line 524
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcaj$e;->fragment_send_random:I

    return v0
.end method
