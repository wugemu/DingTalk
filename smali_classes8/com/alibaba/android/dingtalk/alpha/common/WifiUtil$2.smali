.class final Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;
.super Ljava/lang/Object;
.source "WifiUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;Lbsw$b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x2

    const/4 v8, 0x0

    .line 540
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->k()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v9, "wifi"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 541
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    .line 542
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    const/4 v4, 0x0

    .line 543
    .local v4, "userWifi":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 544
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 545
    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    .line 548
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 549
    const-string/jumbo v6, "\""

    const-string/jumbo v9, ""

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "<unknown ssid>"

    const-string/jumbo v10, ""

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 552
    :cond_1
    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;->b:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;->b:Ljava/lang/String;

    .line 553
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;->a:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;->a:Ljava/lang/String;

    .line 555
    invoke-static {v6}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 556
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->d(Ljava/lang/String;)Z

    move-result v2

    .line 557
    .local v2, "isKeepApart":Z
    new-instance v3, Lbsl;

    invoke-direct {v3}, Lbsl;-><init>()V

    .line 558
    .local v3, "netIsolationInfo":Lbsl;
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v3, Lbsl;->f:Ljava/lang/Boolean;

    .line 559
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v3, Lbsl;->e:Ljava/lang/Integer;

    .line 560
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v3, Lbsl;->d:Ljava/lang/Integer;

    .line 561
    if-eqz v2, :cond_3

    move v6, v7

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v3, Lbsl;->c:Ljava/lang/Integer;

    .line 562
    new-instance v6, Lbsk;

    invoke-direct {v6}, Lbsk;-><init>()V

    iput-object v6, v3, Lbsl;->a:Lbsk;

    .line 563
    iget-object v6, v3, Lbsl;->a:Lbsk;

    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->k()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lalg;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lbsk;->a:Ljava/lang/String;

    .line 564
    iget-object v6, v3, Lbsl;->a:Lbsk;

    iput-object v4, v6, Lbsk;->c:Ljava/lang/String;

    .line 565
    iget-object v6, v3, Lbsl;->a:Lbsk;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lbsk;->b:Ljava/lang/String;

    .line 566
    new-instance v6, Lbsk;

    invoke-direct {v6}, Lbsk;-><init>()V

    iput-object v6, v3, Lbsl;->b:Lbsk;

    .line 567
    iget-object v6, v3, Lbsl;->b:Lbsk;

    iput-object v4, v6, Lbsk;->c:Ljava/lang/String;

    .line 568
    iget-object v6, v3, Lbsl;->b:Lbsk;

    iget-object v9, p0, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;->a:Ljava/lang/String;

    iput-object v9, v6, Lbsk;->a:Ljava/lang/String;

    .line 569
    iget-object v6, v3, Lbsl;->b:Lbsk;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lbsk;->b:Ljava/lang/String;

    .line 570
    new-instance v9, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2$1;

    invoke-direct {v9, p0}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2$1;-><init>(Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;)V

    .line 1016
    const-class v6, Lcom/alibaba/android/dingtalk/guard/idl/services/MeetingRoomIService;

    invoke-static {v6}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/guard/idl/services/MeetingRoomIService;

    .line 1017
    if-eqz v6, :cond_2

    .line 1018
    new-instance v10, Lbsp$1;

    invoke-direct {v10, v9}, Lbsp$1;-><init>(Lcma;)V

    invoke-interface {v6, v3, v10}, Lcom/alibaba/android/dingtalk/guard/idl/services/MeetingRoomIService;->reportNetIsolationInfo(Lbsl;Liyv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v2    # "isKeepApart":Z
    .end local v3    # "netIsolationInfo":Lbsl;
    .end local v4    # "userWifi":Ljava/lang/String;
    .end local v5    # "wm":Landroid/net/wifi/WifiManager;
    :cond_2
    :goto_1
    return-void

    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v2    # "isKeepApart":Z
    .restart local v3    # "netIsolationInfo":Lbsl;
    .restart local v4    # "userWifi":Ljava/lang/String;
    .restart local v5    # "wm":Landroid/net/wifi/WifiManager;
    :cond_3
    move v6, v8

    .line 561
    goto :goto_0

    .line 589
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v2    # "isKeepApart":Z
    .end local v3    # "netIsolationInfo":Lbsl;
    .end local v4    # "userWifi":Ljava/lang/String;
    .end local v5    # "wm":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "WifiUtil"

    new-array v9, v11, [Ljava/lang/Object;

    const-string/jumbo v10, "Ping exception:"

    aput-object v10, v9, v8

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
