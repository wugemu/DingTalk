.class public final Laxg;
.super Lawy;
.source "HeaderEventHolderV2.java"


# instance fields
.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lawy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 21
    sget v0, Laow$e;->calendar_layout_event_header_v2:I

    return v0
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "isLastCommon"    # Z

    .prologue
    .line 56
    return-void
.end method

.method final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 26
    iget-object v0, p0, Laxg;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_day:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laxg;->e:Landroid/widget/TextView;

    .line 27
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "isLast"    # Z

    .prologue
    .line 60
    return-void
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 31
    iget-object v1, p0, Laxg;->d:Lawv;

    instance-of v1, v1, Lawu;

    if-nez v1, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Laxg;->d:Lawv;

    check-cast v0, Lawu;

    .line 1039
    .local v0, "event":Lawu;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2019
    iget-wide v2, v0, Lawu;->a:J

    .line 1040
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1042
    iget-object v1, p0, Laxg;->e:Landroid/widget/TextView;

    .line 3019
    iget-wide v2, v0, Lawu;->a:J

    .line 1042
    invoke-static {v2, v3}, Lcog;->r(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    iget-object v1, p0, Laxg;->d:Lawv;

    check-cast v1, Lawu;

    .line 3023
    iget-boolean v1, v1, Lawu;->b:Z

    .line 1043
    if-eqz v1, :cond_1

    .line 1044
    iget-object v1, p0, Laxg;->e:Landroid/widget/TextView;

    sget v2, Laow$a;->ui_common_blue1_color:I

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1046
    :cond_1
    iget-object v1, p0, Laxg;->e:Landroid/widget/TextView;

    sget v2, Laow$a;->ui_common_content_fg_color_alpha_56:I

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    return-void
.end method
