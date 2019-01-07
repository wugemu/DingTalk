.class public Lcom/taobao/statistic/TBS$Adv;
.super Ljava/lang/Object;
.source "TBS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adv"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "ct"    # Lcom/taobao/statistic/CT;
    .param p1, "controlName"    # Ljava/lang/String;
    .param p2, "kvs"    # [Ljava/lang/String;

    .prologue
    .line 638
    const/4 v0, 0x0

    const/16 v1, 0x835

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method public static ctrlClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 6
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "ct"    # Lcom/taobao/statistic/CT;
    .param p2, "controlName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 744
    const/16 v1, 0x835

    new-array v5, v4, [Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method public static varargs ctrlClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "ct"    # Lcom/taobao/statistic/CT;
    .param p2, "controlName"    # Ljava/lang/String;
    .param p3, "kvs"    # [Ljava/lang/String;

    .prologue
    .line 622
    const/16 v1, 0x835

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method public static ctrlClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 6
    .param p0, "pageKey"    # Ljava/lang/String;
    .param p1, "ct"    # Lcom/taobao/statistic/CT;
    .param p2, "controlName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 756
    const/16 v1, 0x835

    new-array v5, v4, [Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method public static varargs ctrlClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "pageKey"    # Ljava/lang/String;
    .param p1, "ct"    # Lcom/taobao/statistic/CT;
    .param p2, "controlName"    # Ljava/lang/String;
    .param p3, "kvs"    # [Ljava/lang/String;

    .prologue
    .line 651
    const/16 v1, 0x835

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public static varargs ctrlLongClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "ct"    # Lcom/taobao/statistic/CT;
    .param p1, "controlName"    # Ljava/lang/String;
    .param p2, "kvs"    # [Ljava/lang/String;

    .prologue
    .line 676
    const/4 v0, 0x0

    const/16 v1, 0x837

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public static ctrlLongClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 6
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "ct"    # Lcom/taobao/statistic/CT;
    .param p2, "controlName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 768
    const/16 v1, 0x837

    new-array v5, v4, [Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method public static varargs ctrlLongClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "ct"    # Lcom/taobao/statistic/CT;
    .param p2, "controlName"    # Ljava/lang/String;
    .param p3, "kvs"    # [Ljava/lang/String;

    .prologue
    .line 664
    const/16 v1, 0x837

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public static ctrlLongClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 6
    .param p0, "pageKey"    # Ljava/lang/String;
    .param p1, "ct"    # Lcom/taobao/statistic/CT;
    .param p2, "controlName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 780
    const/16 v1, 0x837

    new-array v5, v4, [Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public static varargs ctrlLongClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "pageKey"    # Ljava/lang/String;
    .param p1, "ct"    # Lcom/taobao/statistic/CT;
    .param p2, "controlName"    # Ljava/lang/String;
    .param p3, "kvs"    # [Ljava/lang/String;

    .prologue
    .line 689
    const/16 v1, 0x837

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method public static varargs destroy(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "pageKey"    # Ljava/lang/String;
    .param p1, "kvs"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 591
    return-void
.end method

.method public static varargs easyTraceEnter(Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 0
    .param p0, "pPageName"    # Ljava/lang/String;
    .param p1, "isActivity"    # Z
    .param p2, "kvs"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 814
    return-void
.end method

.method public static varargs easyTraceInternalCtrlClick(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "pCtrlName"    # Ljava/lang/String;
    .param p2, "kvs"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 822
    return-void
.end method

.method public static varargs easyTraceLeave(Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 0
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "isActivity"    # Z
    .param p2, "kvs"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 818
    return-void
.end method

.method public static varargs enter(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "pageKey"    # Ljava/lang/String;
    .param p1, "kvs"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 610
    return-void
.end method

.method public static varargs enterWithPageName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "pageKey"    # Ljava/lang/String;
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "kvs"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 601
    return-void
.end method

.method public static getUtsid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 627
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTTeamWork;->getUtsid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs itemSelected(Lcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 6
    .param p0, "ct"    # Lcom/taobao/statistic/CT;
    .param p1, "controlName"    # Ljava/lang/String;
    .param p2, "selectedIndex"    # I
    .param p3, "kvs"    # [Ljava/lang/String;

    .prologue
    .line 717
    const/4 v0, 0x0

    const/16 v1, 0x836

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method public static itemSelected(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I)V
    .locals 6
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "ct"    # Lcom/taobao/statistic/CT;
    .param p2, "controlName"    # Ljava/lang/String;
    .param p3, "selectedIndex"    # I

    .prologue
    .line 793
    const/16 v1, 0x836

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method public static varargs itemSelected(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 6
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "ct"    # Lcom/taobao/statistic/CT;
    .param p2, "controlName"    # Ljava/lang/String;
    .param p3, "selectedIndex"    # I
    .param p4, "kvs"    # [Ljava/lang/String;

    .prologue
    .line 703
    const/16 v1, 0x836

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public static itemSelectedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I)V
    .locals 6
    .param p0, "pageKey"    # Ljava/lang/String;
    .param p1, "ct"    # Lcom/taobao/statistic/CT;
    .param p2, "controlName"    # Ljava/lang/String;
    .param p3, "selectedIndex"    # I

    .prologue
    .line 807
    const/16 v1, 0x837

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public static varargs itemSelectedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 6
    .param p0, "pageKey"    # Ljava/lang/String;
    .param p1, "ct"    # Lcom/taobao/statistic/CT;
    .param p2, "controlName"    # Ljava/lang/String;
    .param p3, "selectedIndex"    # I
    .param p4, "kvs"    # [Ljava/lang/String;

    .prologue
    .line 732
    const/16 v1, 0x836

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Page;->access$100(Ljava/lang/String;ILcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public static varargs keepKvs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "pageKey"    # Ljava/lang/String;
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 564
    return-void
.end method

.method public static varargs leave(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "pageKey"    # Ljava/lang/String;
    .param p1, "kvs"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 830
    return-void
.end method

.method public static onCaughException(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "ex"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 838
    return-void
.end method

.method public static putKvs(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 582
    return-void
.end method

.method public static turnOffLogFriendly()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 834
    return-void
.end method

.method public static varargs unKeepKvs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "pageKey"    # Ljava/lang/String;
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 573
    return-void
.end method


# virtual methods
.method forceUpload()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 826
    return-void
.end method
