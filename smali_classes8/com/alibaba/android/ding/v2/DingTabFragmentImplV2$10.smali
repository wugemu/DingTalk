.class final Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$10;
.super Ljava/lang/Object;
.source "DingTabFragmentImplV2.java"

# interfaces
.implements Lbkw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$10;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 665
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$10;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->h(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lbkt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$10;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->h(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lbkt;

    move-result-object v0

    invoke-virtual {v0}, Lbkt;->a()V

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$10;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;Z)V

    .line 670
    return-void
.end method

.method public final a(I)V
    .locals 7
    .param p1, "mCurrentSubFilter"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 647
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$10;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->d(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/widget/DingFilterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/DingFilterManager;->c()I

    move-result v0

    .line 648
    .local v0, "mCurrentFilter":I
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$10;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v2, v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->c(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;I)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "pKey":Ljava/lang/String;
    invoke-static {v1, v6}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 650
    invoke-static {v1, p1}, Lcpk;->b(Ljava/lang/String;I)V

    .line 651
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$10;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->i()V

    .line 654
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$10;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->h(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lbkt;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 655
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$10;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->h(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lbkt;

    move-result-object v2

    invoke-virtual {v2}, Lbkt;->a()V

    .line 658
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$10;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v2, v6}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;Z)V

    .line 1598
    const/4 v2, 0x7

    if-ne v0, v2, :cond_5

    .line 1599
    if-nez p1, :cond_3

    .line 2460
    const-string/jumbo v2, "ding_tab_ding_all"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    .line 1624
    :cond_2
    :goto_0
    return-void

    .line 1601
    :cond_3
    if-ne p1, v3, :cond_4

    .line 2464
    const-string/jumbo v2, "ding_tab_ding_sent"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1603
    :cond_4
    if-ne p1, v4, :cond_2

    .line 2468
    const-string/jumbo v2, "ding_tab_ding_received"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1606
    :cond_5
    if-ne v0, v5, :cond_a

    .line 1607
    if-nez p1, :cond_6

    .line 3424
    const-string/jumbo v2, "ding_tab_deadline_unfinished"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1609
    :cond_6
    if-ne p1, v3, :cond_7

    .line 3428
    const-string/jumbo v2, "ding_tab_deadline_finished"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1611
    :cond_7
    if-ne p1, v4, :cond_8

    .line 3432
    const-string/jumbo v2, "ding_tab_deadline_sent"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1613
    :cond_8
    const/4 v2, 0x4

    if-ne p1, v2, :cond_9

    .line 3436
    const-string/jumbo v2, "ding_tab_deadline_cc"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1615
    :cond_9
    if-ne p1, v5, :cond_2

    .line 3440
    const-string/jumbo v2, "ding_tab_deadline_received"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1618
    :cond_a
    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 1619
    if-nez p1, :cond_b

    .line 3444
    const-string/jumbo v2, "ding_tab_meeting_notended"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1621
    :cond_b
    if-ne p1, v3, :cond_c

    .line 3456
    const-string/jumbo v2, "ding_tab_meeting_ended"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1623
    :cond_c
    if-ne p1, v4, :cond_d

    .line 4448
    const-string/jumbo v2, "ding_tab_meeting_sent"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1625
    :cond_d
    if-ne p1, v5, :cond_2

    .line 4452
    const-string/jumbo v2, "ding_tab_meeting_summary"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
