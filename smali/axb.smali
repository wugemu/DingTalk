.class public final Laxb;
.super Lawy;
.source "DueTodayTaskHeaderHolder.java"


# instance fields
.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lawy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 18
    sget v0, Laow$e;->calendar_layout_event_due_today_task_header:I

    return v0
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "isLastCommon"    # Z

    .prologue
    .line 42
    return-void
.end method

.method final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 23
    iget-object v0, p0, Laxb;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laxb;->e:Landroid/widget/TextView;

    .line 24
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "isLast"    # Z

    .prologue
    .line 46
    return-void
.end method

.method public final c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 28
    iget-object v1, p0, Laxb;->d:Lawv;

    instance-of v1, v1, Lawr;

    if-nez v1, :cond_0

    .line 29
    iget-object v1, p0, Laxb;->e:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Laxb;->d:Lawv;

    check-cast v0, Lawr;

    .line 33
    .local v0, "event":Lawr;
    iget-object v1, p0, Laxb;->e:Landroid/widget/TextView;

    iget-object v2, p0, Laxb;->b:Landroid/app/Activity;

    sget v3, Laow$f;->dt_calendar_due_today_sent_task_count_at:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1017
    iget v6, v0, Lawr;->a:I

    .line 33
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    return-void
.end method
