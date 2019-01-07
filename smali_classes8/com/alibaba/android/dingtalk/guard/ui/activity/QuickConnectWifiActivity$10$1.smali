.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$10$1;
.super Ljava/lang/Object;
.source "QuickConnectWifiActivity.java"

# interfaces
.implements Lbzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$10;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$10;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$10$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 446
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v2

    .line 447
    .local v2, "uid":J
    invoke-static {}, Lblx;->b()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "uuid":Ljava/lang/String;
    const-string/jumbo v6, "QuickConnectWifiActivity"

    new-array v7, v9, [Ljava/lang/Object;

    const-string/jumbo v8, "uuid = "

    aput-object v8, v7, v5

    aput-object v1, v7, v4

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 450
    .local v0, "params":Ljava/util/Map;
    const-string/jumbo v6, "uid_uuid"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v5

    const-string/jumbo v8, "_"

    aput-object v8, v7, v4

    aput-object v1, v7, v9

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string/jumbo v6, "timestamp"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string/jumbo v6, "QuickConnectWifiActivity"

    const-string/jumbo v7, "alpha_quick_connect_wifi_begin"

    invoke-static {v6, v7, v0}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 454
    const-string/jumbo v6, "QuickConnectWifiActivity"

    const-string/jumbo v7, "alpha_quick_connect_wifi_click"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 456
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$10$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$10;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    iget-object v7, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$10$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$10;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$10;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    invoke-static {v7}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->j(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    invoke-static {v6, v4, v5, v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;ZIZ)V

    .line 457
    return-void

    :cond_0
    move v4, v5

    .line 456
    goto :goto_0
.end method

.method public final onDenied()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public final onNeverAsk()V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public final showRation()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method
