.class final Lbma$2;
.super Ljava/lang/Object;
.source "FloatConnectWifiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbma;


# direct methods
.method constructor <init>(Lbma;)V
    .locals 0
    .param p1, "this$0"    # Lbma;

    .prologue
    .line 70
    iput-object p1, p0, Lbma$2;->a:Lbma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 73
    iget-object v8, p0, Lbma$2;->a:Lbma;

    invoke-static {v8}, Lbma;->a(Lbma;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 74
    const-string/jumbo v7, "FloatConnectWifiManager"

    const-string/jumbo v8, "tryToFloatConnectWifi stopped when scan, return"

    invoke-static {v7, v8}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v8, p0, Lbma$2;->a:Lbma;

    invoke-static {v8}, Lbma;->b(Lbma;)Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lbma$2;->a:Lbma;

    invoke-static {v8}, Lbma;->b(Lbma;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 78
    :cond_1
    const-string/jumbo v8, "FloatConnectWifiManager"

    new-array v9, v12, [Ljava/lang/Object;

    const-string/jumbo v10, "mCorpSsidsMap is null, stop scan task"

    aput-object v10, v9, v7

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v7, p0, Lbma$2;->a:Lbma;

    invoke-virtual {v7}, Lbma;->c()V

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->i()Ljava/util/List;

    move-result-object v3

    .line 83
    .local v3, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v3, :cond_6

    move v4, v7

    .line 84
    .local v4, "size":I
    :goto_1
    const-string/jumbo v8, "FloatConnectWifiManager"

    new-array v9, v13, [Ljava/lang/Object;

    const-string/jumbo v10, "scanResults size = "

    aput-object v10, v9, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 87
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 88
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v9, p0, Lbma$2;->a:Lbma;

    invoke-static {v9}, Lbma;->b(Lbma;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 89
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    .local v0, "corpId":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 91
    .local v6, "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 92
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 93
    .local v5, "ssid":Ljava/lang/String;
    if-eqz v2, :cond_5

    iget-object v11, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v5, v11}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 94
    const-string/jumbo v8, "FloatConnectWifiManager"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "find valid ssid: "

    aput-object v10, v9, v7

    aput-object v5, v9, v12

    const-string/jumbo v10, ", corpId: "

    aput-object v10, v9, v13

    aput-object v0, v9, v14

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {v5}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 97
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v7

    new-instance v8, Lbma$2$1;

    invoke-direct {v8, p0, v0, v5}, Lbma$2$1;-><init>(Lbma$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0, v8}, Lbnh;->a(Ljava/lang/String;Lblv;)V

    goto/16 :goto_0

    .line 83
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v4    # "size":I
    .end local v5    # "ssid":Ljava/lang/String;
    .end local v6    # "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    goto/16 :goto_1

    .line 109
    .restart local v0    # "corpId":Ljava/lang/String;
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    .restart local v4    # "size":I
    .restart local v5    # "ssid":Ljava/lang/String;
    .restart local v6    # "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const-string/jumbo v8, "FloatConnectWifiManager"

    new-array v9, v14, [Ljava/lang/Object;

    const-string/jumbo v10, "ssid: "

    aput-object v10, v9, v7

    aput-object v5, v9, v12

    const-string/jumbo v7, " is connected, stop"

    aput-object v7, v9, v13

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v7, p0, Lbma$2;->a:Lbma;

    invoke-virtual {v7}, Lbma;->c()V

    goto/16 :goto_0

    .line 119
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v5    # "ssid":Ljava/lang/String;
    .end local v6    # "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v7

    iget-object v8, p0, Lbma$2;->a:Lbma;

    invoke-static {v8}, Lbma;->c(Lbma;)Ljava/lang/Runnable;

    move-result-object v8

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v8, v10, v11}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
