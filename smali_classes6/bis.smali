.class public final Lbis;
.super Lbhz;
.source "ShowMeetingMoreViewHolder.java"


# instance fields
.field private g:Landroid/app/Activity;

.field private h:Laxs;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Laxs;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "dingListAdapter"    # Laxs;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lbhz;-><init>(Landroid/app/Activity;)V

    .line 26
    iput-object p1, p0, Lbis;->g:Landroid/app/Activity;

    .line 27
    iput-object p2, p0, Lbis;->h:Laxs;

    .line 28
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 42
    sget v0, Laxp$g;->ding_list_item_deadline_show_done:I

    return v0
.end method

.method protected final a(Landroid/view/View;Landroid/widget/ListView;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lv"    # Landroid/widget/ListView;

    .prologue
    .line 47
    sget v0, Laxp$f;->ding_deadline_ding_show_done_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbis;->i:Landroid/widget/TextView;

    .line 48
    return-void
.end method

.method protected final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 1
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method protected final b(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZ)V
    .locals 3
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "filterType"    # I
    .param p3, "withTitle"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Lbis;->h:Laxs;

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    instance-of v0, p1, Lazc;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lbis;->i:Landroid/widget/TextView;

    sget v1, Laxp$i;->and_ding_meeting_hide_other:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    iget-object v0, p0, Lbis;->i:Landroid/widget/TextView;

    new-instance v1, Lbis$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lbis$1;-><init>(Lbis;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
