.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;
.super Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;
.source "BaseConnectWifiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;
    .param p2, "oneKeyWifiLayout"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->b:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;

    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->b:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "connectWifiValid"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 203
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a(Ljava/lang/String;Z)V

    .line 204
    if-nez p2, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->b:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->d(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V

    .line 207
    :cond_0
    const-string/jumbo v0, "BaseConnectWifiActivity"

    const-string/jumbo v1, "alpha_connect_wifi_fail"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a(Ljava/lang/String;Z)V

    .line 211
    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->b(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->b:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->b(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->b(Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "connectWifiValid"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->b(Ljava/lang/String;Z)V

    .line 216
    if-nez p2, :cond_0

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->b:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->d(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V

    .line 219
    :cond_0
    const-string/jumbo v0, "BaseConnectWifiActivity"

    const-string/jumbo v1, "alpha_connect_wifi_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->b(Ljava/lang/String;Z)V

    .line 223
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->c(Ljava/lang/String;)V

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->b:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->c(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V

    .line 195
    :cond_0
    const-string/jumbo v0, "BaseConnectWifiActivity"

    const-string/jumbo v1, "alpha_scan_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->c(Ljava/lang/String;)V

    .line 199
    :cond_1
    return-void
.end method

.method public final onConnectSuccess(Ljava/lang/String;)V
    .locals 10
    .param p1, "ssid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 155
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->onConnectSuccess(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v2

    .line 157
    .local v2, "uid":J
    invoke-static {}, Lblx;->a()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "uuid":Ljava/lang/String;
    const-string/jumbo v4, "BaseConnectWifiActivity"

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "uuid = "

    aput-object v6, v5, v8

    aput-object v1, v5, v7

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v0, "params":Ljava/util/Map;
    const-string/jumbo v4, "uid_uuid"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, "_"

    aput-object v6, v5, v7

    aput-object v1, v5, v9

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v4, "timestamp"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v4, "BaseConnectWifiActivity"

    const-string/jumbo v5, "alpha_quick_connect_wifi_end"

    invoke-static {v4, v5, v0}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    const-string/jumbo v4, "BaseConnectWifiActivity"

    const-string/jumbo v5, "alpha_connect_wifi_success"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 166
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;

    if-eqz v4, :cond_0

    .line 167
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;

    invoke-virtual {v4, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->onConnectSuccess(Ljava/lang/String;)V

    .line 169
    :cond_0
    return-void
.end method
