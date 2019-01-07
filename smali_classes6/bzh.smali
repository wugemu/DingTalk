.class public final Lbzh;
.super Ljava/lang/Object;
.source "Permissions.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 22
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 24
    sput-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.READ_CALENDAR"

    sget v2, Lbyz$a;->dt_permission_read_calendar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.WRITE_CALENDAR"

    sget v2, Lbyz$a;->dt_permission_write_calendar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.CAMERA"

    sget v2, Lbyz$a;->dt_permission_camera:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    sget v2, Lbyz$a;->dt_permission_read_contacts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    sget v2, Lbyz$a;->dt_permission_write_contacts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    sget v2, Lbyz$a;->dt_permission_get_accounts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    sget v2, Lbyz$a;->dt_permission_access_fine_location:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    sget v2, Lbyz$a;->dt_permission_access_coarse_location:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    sget v2, Lbyz$a;->dt_permission_record_audio:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    sget v2, Lbyz$a;->dt_permission_read_phone_state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.CALL_PHONE"

    sget v2, Lbyz$a;->dt_permission_call_phone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 41
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    sget v2, Lbyz$a;->dt_permission_read_call_log:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.WRITE_CALL_LOG"

    sget v2, Lbyz$a;->dt_permission_write_call_log:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    sget v2, Lbyz$a;->dt_permission_add_voicemail:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.USE_SIP"

    sget v2, Lbyz$a;->dt_permission_use_sip:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.PROCESS_OUTGOING_CALLS"

    sget v2, Lbyz$a;->dt_permission_process_outgoing_calls:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 49
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.BODY_SENSORS"

    sget v2, Lbyz$a;->dt_permission_body_sensors:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_1
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.SEND_SMS"

    sget v2, Lbyz$a;->dt_permission_send_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    sget v2, Lbyz$a;->dt_permission_receive_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.READ_SMS"

    sget v2, Lbyz$a;->dt_permission_read_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.RECEIVE_WAP_PUSH"

    sget v2, Lbyz$a;->dt_permission_receive_wap_push:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.RECEIVE_MMS"

    sget v2, Lbyz$a;->dt_permission_receive_mms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    .line 59
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    sget v2, Lbyz$a;->dt_permission_read_external_storage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_2
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    sget v2, Lbyz$a;->dt_permission_write_external_storage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.SYSTEM_ALERT_WINDOW"

    sget v2, Lbyz$a;->dt_permission_system_alert_window:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.WRITE_SETTINGS"

    sget v2, Lbyz$a;->dt_permission_write_settings:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 67
    sget-object v0, Lbzh;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    sget v2, Lbyz$a;->dt_permission_request_install_packages:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "resId":I
    if-eqz p1, :cond_1

    .line 77
    array-length v5, p1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p1, v3

    .line 78
    .local v0, "permission":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v0, v6, v4

    invoke-static {p0, v6}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 79
    sget-object v6, Lbzh;->a:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 80
    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 77
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 89
    :goto_1
    return-object v3

    :cond_2
    const-string/jumbo v3, ""

    goto :goto_1
.end method
