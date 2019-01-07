.class public Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "XStateDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/xstate/XStateDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkStateReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 162
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    const-string/jumbo v2, "[onReceive]XState networkStateReceiver onReceive"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :cond_0
    :try_start_0
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1175
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1176
    if-nez v1, :cond_3

    .line 1177
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1178
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    const-string/jumbo v2, "[updateNetworkStatus]no network"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :cond_1
    const-string/jumbo v1, "nq"

    sget-object v2, Lmtopsdk/xstate/NetworkClassEnum;->NET_NO:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {v2}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/xstate/XStateDelegate;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const-string/jumbo v1, "netType"

    sget-object v2, Lmtopsdk/xstate/NetworkClassEnum;->NET_NO:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {v2}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/xstate/XStateDelegate;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_2
    :goto_0
    return-void

    .line 1184
    :cond_3
    invoke-static {p1}, Lkkm;->a(Landroid/content/Context;)Lkkm;

    .line 1185
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 1186
    if-nez v2, :cond_8

    .line 1187
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 1189
    packed-switch v2, :pswitch_data_0

    .line 1221
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1222
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    const-string/jumbo v3, "[updateNetworkStatus]unknown network"

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :cond_4
    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_UNKONWN:Lmtopsdk/xstate/NetworkClassEnum;

    .line 1227
    :goto_1
    const-string/jumbo v3, "nq"

    invoke-virtual {v1}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lmtopsdk/xstate/XStateDelegate;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    const-string/jumbo v3, "netType"

    .line 2067
    packed-switch v2, :pswitch_data_1

    .line 2099
    const-string/jumbo v1, "UNKNOWN"

    .line 1228
    :goto_2
    invoke-static {v3, v1}, Lmtopsdk/xstate/XStateDelegate;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    const-string/jumbo v2, "[onReceive]XState networkStateReceiver onReceive error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1195
    .end local v0    # "e":Ljava/lang/Throwable;
    :pswitch_0
    :try_start_1
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1196
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    const-string/jumbo v3, "[updateNetworkStatus]2G network"

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_5
    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_2G:Lmtopsdk/xstate/NetworkClassEnum;

    goto :goto_1

    .line 1209
    :pswitch_1
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1210
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    const-string/jumbo v3, "[updateNetworkStatus]3G network"

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    :cond_6
    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_3G:Lmtopsdk/xstate/NetworkClassEnum;

    goto :goto_1

    .line 1215
    :pswitch_2
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1216
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    const-string/jumbo v3, "[updateNetworkStatus]4G network"

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :cond_7
    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_4G:Lmtopsdk/xstate/NetworkClassEnum;

    goto :goto_1

    .line 2069
    :pswitch_3
    const-string/jumbo v1, "GPRS"

    goto :goto_2

    .line 2071
    :pswitch_4
    const-string/jumbo v1, "EDGE"

    goto :goto_2

    .line 2073
    :pswitch_5
    const-string/jumbo v1, "UMTS"

    goto :goto_2

    .line 2075
    :pswitch_6
    const-string/jumbo v1, "HSDPA"

    goto :goto_2

    .line 2077
    :pswitch_7
    const-string/jumbo v1, "HSUPA"

    goto :goto_2

    .line 2079
    :pswitch_8
    const-string/jumbo v1, "HSPA"

    goto :goto_2

    .line 2081
    :pswitch_9
    const-string/jumbo v1, "CDMA"

    goto :goto_2

    .line 2083
    :pswitch_a
    const-string/jumbo v1, "CDMA - EvDo rev. 0"

    goto/16 :goto_2

    .line 2085
    :pswitch_b
    const-string/jumbo v1, "CDMA - EvDo rev. A"

    goto/16 :goto_2

    .line 2087
    :pswitch_c
    const-string/jumbo v1, "CDMA - EvDo rev. B"

    goto/16 :goto_2

    .line 2089
    :pswitch_d
    const-string/jumbo v1, "CDMA - 1xRTT"

    goto/16 :goto_2

    .line 2091
    :pswitch_e
    const-string/jumbo v1, "LTE"

    goto/16 :goto_2

    .line 2093
    :pswitch_f
    const-string/jumbo v1, "CDMA - eHRPD"

    goto/16 :goto_2

    .line 2095
    :pswitch_10
    const-string/jumbo v1, "iDEN"

    goto/16 :goto_2

    .line 2097
    :pswitch_11
    const-string/jumbo v1, "HSPA+"

    goto/16 :goto_2

    .line 1229
    :cond_8
    const/4 v1, 0x1

    if-ne v2, v1, :cond_2

    .line 1230
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1231
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    const-string/jumbo v2, "[updateNetworkStatus]WIFI network "

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :cond_9
    const-string/jumbo v1, "nq"

    sget-object v2, Lmtopsdk/xstate/NetworkClassEnum;->NET_WIFI:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {v2}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/xstate/XStateDelegate;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const-string/jumbo v1, "netType"

    sget-object v2, Lmtopsdk/xstate/NetworkClassEnum;->NET_WIFI:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {v2}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/xstate/XStateDelegate;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1189
    .line 2067
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_10
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method
