.class public final Lcom/alibaba/android/dingtalk/live/msg/core/Contants/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/live/msg/core/Contants/Constant$ConnectionSetting;,
        Lcom/alibaba/android/dingtalk/live/msg/core/Contants/Constant$ConnectionType;,
        Lcom/alibaba/android/dingtalk/live/msg/core/Contants/Constant$ConfMonitorArrivalType;,
        Lcom/alibaba/android/dingtalk/live/msg/core/Contants/Constant$ReportCode;,
        Lcom/alibaba/android/dingtalk/live/msg/core/Contants/Constant$ArrivalMonitorType;,
        Lcom/alibaba/android/dingtalk/live/msg/core/Contants/Constant$DataSourceType;,
        Lcom/alibaba/android/dingtalk/live/msg/core/Contants/Constant$MsgFetchMode;,
        Lcom/alibaba/android/dingtalk/live/msg/core/Contants/Constant$Monitor;,
        Lcom/alibaba/android/dingtalk/live/msg/core/Contants/Constant$SYSTEM;,
        Lcom/alibaba/android/dingtalk/live/msg/core/Contants/Constant$VERSION;
    }
.end annotation


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "key"

.field public static final ACTION_RECEIVE:Ljava/lang/String; = "com.taobao.tao.messagkit.receive"

.field public static final CACHE_COUNT:I = 0x2710

.field public static final CONF_MONITOR_ARRIVAL_TYPE:Ljava/lang/String; = "monitor_all"

.field public static final CONF_MONITOR_RANGE_LEFT:Ljava/lang/String; = "monitor_range_left"

.field public static final CONF_MONITOR_RANGE_MOD:Ljava/lang/String; = "monitor_range_mod"

.field public static final CONF_MONITOR_RANGE_OPEN:Ljava/lang/String; = "monitor_range_open"

.field public static final CONF_MONITOR_RANGE_RIGHT:Ljava/lang/String; = "monitor_range_right"

.field public static final DB_VERSION:I = 0x4

.field public static final KEY_BODY:Ljava/lang/String; = "body"

.field public static final KEY_CODE:Ljava/lang/String; = "code"

.field public static final KEY_CONTEXT:Ljava/lang/String; = "context"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_MQTT_TYPE:Ljava/lang/String; = "mqtt_type"

.field public static final KEY_MSG_TYPE:Ljava/lang/String; = "msg_type"

.field public static final KEY_RE_MSG:Ljava/lang/String; = "re_msg"

.field public static final KEY_SERVICE:Ljava/lang/String; = "service_id"

.field public static final KEY_SUBTYPE:Ljava/lang/String; = "sub_type"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final PARSE_TYPE_JSON:I = 0x1

.field public static final PARSE_TYPE_PB:I = 0x0

.field public static final PM_UP_CHANNEL_BY_ACCS:I = 0x1

.field public static final PM_UP_CHANNEL_BY_MTOP:I = 0x2

.field public static final PM_UP_CHANNEL_CONFIG_DEFAULT:I = 0x1

.field public static final PM_UP_CHANNEL_CONFIG_KEY:Ljava/lang/String; = "pm_send_channel"

.field public static final TIMEOUT_TIME:I = 0x3c

.field public static final WINDOW_TIME:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    return-void
.end method
