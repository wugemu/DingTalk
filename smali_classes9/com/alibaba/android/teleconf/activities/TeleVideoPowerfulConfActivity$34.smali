.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;
.super Ljava/lang/Object;
.source "TeleVideoPowerfulConfActivity.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 16
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v2

    if-nez v2, :cond_0

    .line 596
    :goto_0
    return-void

    .line 537
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v3

    .line 538
    .local v3, "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz v3, :cond_1

    .line 539
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 540
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x4

    if-le v2, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .line 541
    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->v(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I

    move-result v2

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    .line 543
    :cond_1
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "Invalid scroll"

    invoke-static {v2, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v6, "videoconf_conf_main_scrollwindow_click"

    invoke-interface {v2, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->v(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I

    move-result v14

    .line 550
    .local v14, "oldStartPosition":I
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "Scroll window list: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "["

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 552
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, ","

    aput-object v8, v6, v7

    const/4 v7, 0x4

    add-int/lit8 v8, v14, 0x4

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string/jumbo v8, "]"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "-->"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string/jumbo v8, "["

    aput-object v8, v6, v7

    const/16 v7, 0x8

    .line 554
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string/jumbo v8, ","

    aput-object v8, v6, v7

    const/16 v7, 0xa

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string/jumbo v8, "]"

    aput-object v8, v6, v7

    .line 550
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    add-int/lit8 v2, v14, 0x4

    move/from16 v0, p1

    if-ge v0, v2, :cond_3

    move/from16 v0, p2

    if-ge v0, v14, :cond_5

    .line 560
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static {v2, v3, v14, v6, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Ljava/util/List;IIZ)V

    .line 562
    sub-int v2, p2, p1

    add-int/lit8 v5, v2, 0x1

    .line 563
    .local v5, "count":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Ljava/util/List;IIZZ)V

    .line 565
    move/from16 v13, p1

    .line 566
    .local v13, "changeStartPos":I
    move v12, v5

    .line 591
    .local v12, "changeCount":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b(Ljava/util/List;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move-result-object v2

    invoke-virtual {v2, v13, v12}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemRangeChanged(II)V

    .line 595
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;I)I

    goto/16 :goto_0

    .line 567
    .end local v5    # "count":I
    .end local v12    # "changeCount":I
    .end local v13    # "changeStartPos":I
    :cond_5
    move/from16 v0, p1

    if-le v0, v14, :cond_6

    add-int/lit8 v2, v14, 0x4

    move/from16 v0, p1

    if-ge v0, v2, :cond_6

    .line 569
    sub-int v5, p1, v14

    .line 570
    .restart local v5    # "count":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    const/4 v6, 0x0

    invoke-static {v2, v3, v14, v5, v6}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Ljava/util/List;IIZ)V

    .line 572
    add-int/lit8 v4, v14, 0x4

    .line 573
    .local v4, "watchStartPos":I
    sub-int v2, p2, v4

    add-int/lit8 v5, v2, 0x1

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Ljava/util/List;IIZZ)V

    .line 576
    move v13, v4

    .line 577
    .restart local v13    # "changeStartPos":I
    move v12, v5

    .line 578
    .restart local v12    # "changeCount":I
    goto :goto_1

    .line 580
    .end local v4    # "watchStartPos":I
    .end local v5    # "count":I
    .end local v12    # "changeCount":I
    .end local v13    # "changeStartPos":I
    :cond_6
    add-int/lit8 v2, v14, 0x4

    sub-int v2, v2, p2

    add-int/lit8 v5, v2, -0x1

    .line 581
    .restart local v5    # "count":I
    add-int/lit8 v15, p2, 0x1

    .line 582
    .local v15, "stopWatchPos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    const/4 v6, 0x0

    invoke-static {v2, v3, v15, v5, v6}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Ljava/util/List;IIZ)V

    .line 584
    sub-int v5, v14, p1

    .line 585
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v3

    move/from16 v8, p1

    move v9, v5

    invoke-static/range {v6 .. v11}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Ljava/util/List;IIZZ)V

    .line 587
    move/from16 v13, p1

    .line 588
    .restart local v13    # "changeStartPos":I
    move v12, v5

    .restart local v12    # "changeCount":I
    goto :goto_1
.end method
