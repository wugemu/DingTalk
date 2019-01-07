.class public final Lbjz;
.super Ljava/lang/Object;
.source "DingStatisticUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 323
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "ding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string/jumbo v1, "ding_notification_list_item_click"

    invoke-static {v1, v0}, Lbjz;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 325
    return-void
.end method

.method public static a(I)V
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 667
    packed-switch p0, :pswitch_data_0

    .line 688
    :goto_0
    return-void

    .line 669
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 670
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const-string/jumbo v1, "ding_advertise_show"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 674
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 675
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string/jumbo v1, "ding_advertise_show"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 679
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 680
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string/jumbo v1, "ding_advertise_show"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 684
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 685
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string/jumbo v1, "ding_advertise_show"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;I)V
    .locals 4
    .param p0, "tabIndex"    # Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    .param p1, "curSubFilter"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 632
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->DING:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    if-ne p0, v0, :cond_3

    .line 633
    if-nez p1, :cond_1

    .line 1460
    const-string/jumbo v0, "ding_tab_ding_all"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    if-ne p1, v1, :cond_2

    .line 1464
    const-string/jumbo v0, "ding_tab_ding_sent"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_2
    if-ne p1, v2, :cond_0

    .line 1468
    const-string/jumbo v0, "ding_tab_ding_received"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_3
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    if-ne p0, v0, :cond_8

    .line 641
    if-nez p1, :cond_4

    .line 2424
    const-string/jumbo v0, "ding_tab_deadline_unfinished"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :cond_4
    if-ne p1, v1, :cond_5

    .line 2428
    const-string/jumbo v0, "ding_tab_deadline_finished"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :cond_5
    if-ne p1, v2, :cond_6

    .line 2432
    const-string/jumbo v0, "ding_tab_deadline_sent"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 647
    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 2436
    const-string/jumbo v0, "ding_tab_deadline_cc"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :cond_7
    if-ne p1, v3, :cond_0

    .line 2440
    const-string/jumbo v0, "ding_tab_deadline_received"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 652
    :cond_8
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    if-ne p0, v0, :cond_0

    .line 653
    if-nez p1, :cond_9

    .line 2444
    const-string/jumbo v0, "ding_tab_meeting_notended"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_9
    if-ne p1, v1, :cond_a

    .line 2456
    const-string/jumbo v0, "ding_tab_meeting_ended"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_a
    if-ne p1, v2, :cond_b

    .line 3448
    const-string/jumbo v0, "ding_tab_meeting_sent"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_b
    if-ne p1, v3, :cond_0

    .line 3452
    const-string/jumbo v0, "ding_tab_meeting_summary"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .param p0, "point"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-static {}, Lbjq;->a()Z

    .line 34
    invoke-static {}, Lbjq;->a()Z

    .line 37
    invoke-static {p0}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "point"    # Ljava/lang/String;
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-static {}, Lbjq;->a()Z

    .line 47
    invoke-static {}, Lbjq;->a()Z

    .line 50
    invoke-static {p0, p1}, Lcps;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 3
    .param p0, "hasRedDot"    # Z

    .prologue
    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "reddot"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v1, "tab_ding_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    return-void

    .line 93
    :cond_0
    const-string/jumbo v1, "2"

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 329
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "comment"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string/jumbo v1, "ding_notification_list_item_click"

    invoke-static {v1, v0}, Lbjz;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 331
    return-void
.end method

.method public static b(I)V
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 742
    packed-switch p0, :pswitch_data_0

    .line 763
    :goto_0
    return-void

    .line 744
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 745
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    const-string/jumbo v1, "ding_menu_reddot_show"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 749
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 750
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    const-string/jumbo v1, "ding_menu_reddot_show"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 754
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 755
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    const-string/jumbo v1, "ding_menu_reddot_show"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 759
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 760
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const-string/jumbo v1, "ding_menu_reddot_show"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 742
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .param p0, "point"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {}, Lbjq;->a()Z

    .line 60
    invoke-static {}, Lbjq;->a()Z

    .line 63
    invoke-static {p0}, Lcps;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "point"    # Ljava/lang/String;
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 67
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {}, Lbjq;->a()Z

    .line 73
    invoke-static {}, Lbjq;->a()Z

    .line 76
    invoke-static {p0, p1}, Lcps;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 3
    .param p0, "isRepeat"    # Z

    .prologue
    .line 512
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 513
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "repeat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string/jumbo v1, "ding_list_delete"

    invoke-static {v1, v0}, Lbjz;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 515
    return-void

    .line 513
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static c(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 538
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 539
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string/jumbo v1, "ding_bluepop_show"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 542
    return-void

    .line 540
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static d(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 545
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 546
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string/jumbo v1, "ding_bluepop_show"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 549
    return-void

    .line 547
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static e(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 552
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 553
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string/jumbo v1, "ding_bluepop_show"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 556
    return-void

    .line 554
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static f(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 559
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 560
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string/jumbo v1, "ding_bluepop_show"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 563
    return-void

    .line 561
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static g(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 566
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 567
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string/jumbo v1, "ding_bluepop_show"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 570
    return-void

    .line 568
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static h(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 573
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 574
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string/jumbo v1, "ding_bluepop_show"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 577
    return-void

    .line 575
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static i(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 771
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "ding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "card"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string/jumbo v1, "ding_bluepop_enter_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 775
    return-void

    .line 773
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static j(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 778
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 779
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "task"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "card"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string/jumbo v1, "ding_bluepop_enter_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 783
    return-void

    .line 781
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static k(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 786
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 787
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "meeting"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "card"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string/jumbo v1, "ding_bluepop_enter_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 791
    return-void

    .line 789
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static l(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 794
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 795
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "ding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string/jumbo v1, "ding_newding_comfirm_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 798
    return-void

    .line 796
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static m(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 801
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 802
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "task"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string/jumbo v1, "ding_newding_comfirm_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 805
    return-void

    .line 803
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static n(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 808
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 809
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "meeting"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string/jumbo v1, "ding_newding_comfirm_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 812
    return-void

    .line 810
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static o(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 815
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 816
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "ding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string/jumbo v1, "ding_bluepop_later_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 819
    return-void

    .line 817
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static p(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 822
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 823
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "task"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string/jumbo v1, "ding_bluepop_later_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 826
    return-void

    .line 824
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static q(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 829
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 830
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "meeting"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    const-string/jumbo v1, "ding_bluepop_later_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 833
    return-void

    .line 831
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static r(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 843
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 844
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "ding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "detail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    const-string/jumbo v1, "ding_bluepop_enter_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 848
    return-void

    .line 846
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static s(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 851
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 852
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "task"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "detail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string/jumbo v1, "ding_bluepop_enter_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 856
    return-void

    .line 854
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static t(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 859
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 860
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "meeting"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "detail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string/jumbo v1, "ding_bluepop_enter_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 864
    return-void

    .line 862
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static u(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 867
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 868
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "ding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "ok"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    const-string/jumbo v1, "ding_bluepop_enter_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 872
    return-void

    .line 870
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static v(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 875
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 876
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "task"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "ok"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string/jumbo v1, "ding_bluepop_enter_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 880
    return-void

    .line 878
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static w(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 883
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 884
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "meeting"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "ok"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string/jumbo v1, "ding_bluepop_enter_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 888
    return-void

    .line 886
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static x(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 891
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 892
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "wzdl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    const-string/jumbo v1, "ding_newding_accept_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 895
    return-void

    .line 893
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static y(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 898
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 899
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string/jumbo v1, "ding_newding_refuse_click"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 901
    return-void

    .line 899
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method
