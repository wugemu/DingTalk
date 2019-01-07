.class public Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;
.super Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;
.source "OneKeyWifiLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static final synthetic c:Z


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)V
    .locals 1
    .param p1, "oneKeyWifiLayout"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;-><init>()V

    .line 101
    sget-boolean v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    .line 103
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->c(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->b:Landroid/content/Context;

    .line 104
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;)V

    .line 166
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "connectWifiValid"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->b:Landroid/content/Context;

    sget v2, Lbrx$g;->dt_alpha_connect_wifi_timeout:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "connectWifiValid"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    .line 2335
    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->UNCONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    sget v3, Lbrx$g;->dt_alpha_connect_wifi_timeout:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    .line 2319
    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->UNCONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    sget v3, Lbrx$g;->dt_alpha_scan_result_empty:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public onConnectError(Ljava/lang/String;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    .param p3, "errorMessage"    # Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 123
    if-eqz p3, :cond_1

    iget-boolean v0, p3, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;->a:Z

    .line 124
    .local v0, "connectWifiValid":Z
    :goto_0
    if-nez p2, :cond_0

    .line 125
    sget-object p2, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ERROR_NOT_CONNECTED:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    .line 127
    :cond_0
    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;->a:[I

    invoke-virtual {p2}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 147
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->d(Ljava/lang/String;)V

    .line 150
    :goto_1
    return-void

    .line 123
    .end local v0    # "connectWifiValid":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    .restart local v0    # "connectWifiValid":Z
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :pswitch_1
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->b(Ljava/lang/String;Z)V

    goto :goto_1

    .line 135
    :pswitch_2
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 138
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onConnectSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->b(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onConnecting(Ljava/lang/String;)V
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    .line 1323
    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->CONNECTING:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;)V

    .line 114
    return-void
.end method

.method public onScanning(Ljava/lang/String;)V
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    .line 1315
    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->SCAN:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;)V

    .line 109
    return-void
.end method
