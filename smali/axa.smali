.class public final Laxa;
.super Lawy;
.source "CurrentEventHolder.java"


# instance fields
.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lawy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 24
    sget v0, Laow$e;->calendar_layout_event_current:I

    return v0
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "isLastCommon"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Laxa;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 47
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Laxa;->b:Landroid/app/Activity;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    goto :goto_0
.end method

.method final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 29
    iget-object v0, p0, Laxa;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laxa;->e:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Laxa;->a:Landroid/view/View;

    sget v1, Laow$d;->divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laxa;->f:Landroid/view/View;

    .line 32
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "isLast"    # Z

    .prologue
    .line 51
    return-void
.end method

.method final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 37
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Laxa;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lavl;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    return-void
.end method
