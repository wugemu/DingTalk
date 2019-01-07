.class final synthetic Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;
.super Ljava/lang/Object;
.source "OneKeyWifiLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 278
    invoke-static {}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->values()[Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;->b:[I

    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;->b:[I

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->UNCONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;->b:[I

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->SCAN:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;->b:[I

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->CONNECTING:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;->b:[I

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->CONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;->b:[I

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->ERROR:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    .line 127
    :goto_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->values()[Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;->a:[I

    :try_start_5
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;->a:[I

    sget-object v1, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ERROR_SCAN_TIMEOUT:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;->a:[I

    sget-object v1, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ERROR_CONNECT_TIMEOUT:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;->a:[I

    sget-object v1, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ERROR_CONNECT_FAIL:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;->a:[I

    sget-object v1, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ERROR_WIFI_DISABLED:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;->a:[I

    sget-object v1, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ERROR_WIFI_PERMISSION_DISABLED:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;->a:[I

    sget-object v1, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ERROR_WIFI_CHANGE_DISABLED:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto/16 :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method
