.class public final Lbtd;
.super Ljava/lang/Object;
.source "BleError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorModel"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    .prologue
    .line 22
    const-string/jumbo v1, "-1"

    iget-object v2, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    sget v1, Lbrx$g;->dt_door_guard_bind_error_wifi_timeout:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 24
    .end local v0    # "reason":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "-2"

    iget-object v2, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    sget v1, Lbrx$g;->dt_door_guard_bind_error_no_network:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 26
    .end local v0    # "reason":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "-3"

    iget-object v2, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    sget v1, Lbrx$g;->dt_door_guard_bind_error_no_server:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 28
    .end local v0    # "reason":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "-4"

    iget-object v2, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    sget v1, Lbrx$g;->dt_door_guard_bind_error_login_fail:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 30
    .end local v0    # "reason":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "-5"

    iget-object v2, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 31
    sget v1, Lbrx$g;->dt_door_guard_bind_error_active_fail:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 32
    .end local v0    # "reason":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "-6"

    iget-object v2, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33
    sget v1, Lbrx$g;->dt_door_guard_bind_error_bad_request:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 34
    .end local v0    # "reason":Ljava/lang/String;
    :cond_5
    const-string/jumbo v1, "-21"

    iget-object v2, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 35
    sget v1, Lbrx$g;->dt_smart_device_config_wire_not_plugged_in:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 36
    .end local v0    # "reason":Ljava/lang/String;
    :cond_6
    const-string/jumbo v1, "-22"

    iget-object v2, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 37
    sget v1, Lbrx$g;->dt_smart_device_config_network_unavailable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "reason":Ljava/lang/String;
    goto/16 :goto_0

    .line 39
    .end local v0    # "reason":Ljava/lang/String;
    :cond_7
    iget-object v0, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->b:Ljava/lang/String;

    .restart local v0    # "reason":Ljava/lang/String;
    goto/16 :goto_0
.end method
