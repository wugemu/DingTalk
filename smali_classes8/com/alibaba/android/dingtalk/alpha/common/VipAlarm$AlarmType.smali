.class public final enum Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;
.super Ljava/lang/Enum;
.source "VipAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlarmType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

.field public static final enum ALARM_BIND_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

.field public static final enum ALARM_GET_DEVICE_INFO_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

.field public static final enum ALARM_GET_SSID_OR_PSK_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

.field public static final enum ALARM_MESH_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

.field public static final enum ALARM_QUICK_CONNECT_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;


# instance fields
.field mDesc:Ljava/lang/String;

.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    const-string/jumbo v1, "ALARM_BIND_FAIL"

    const/16 v2, 0x1964

    const-string/jumbo v3, "bind fail"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_BIND_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    .line 31
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    const-string/jumbo v1, "ALARM_QUICK_CONNECT_FAIL"

    const/16 v2, 0x1965

    const-string/jumbo v3, "quick_connect_fail"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_QUICK_CONNECT_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    .line 32
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    const-string/jumbo v1, "ALARM_GET_SSID_OR_PSK_FAIL"

    const/16 v2, 0x1966

    const-string/jumbo v3, "get_ssid_or_psk_fail"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_GET_SSID_OR_PSK_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    .line 33
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    const-string/jumbo v1, "ALARM_GET_DEVICE_INFO_FAIL"

    const/16 v2, 0x1967

    const-string/jumbo v3, "get_device_info_fail"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_GET_DEVICE_INFO_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    .line 34
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    const-string/jumbo v1, "ALARM_MESH_FAIL"

    const/16 v2, 0x1968

    const-string/jumbo v3, "mesh_fail"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_MESH_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_BIND_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_QUICK_CONNECT_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_GET_SSID_OR_PSK_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_GET_DEVICE_INFO_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_MESH_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->$VALUES:[Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->mValue:I

    .line 41
    iput-object p4, p0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->mDesc:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->$VALUES:[Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    return-object v0
.end method
