.class public final enum Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;
.super Ljava/lang/Enum;
.source "TeleConfAlarmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlarmType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_BIZ_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_BIZ_CALL_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_CONF_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_CONF_CALL_HOMEPAGE_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_CONF_CALL_MEMADD_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_CONF_CALL_MEMDEL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_CONF_CALL_MINUTES_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_CONF_CALL_MUTEALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_CONF_CALL_RECALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_CONF_CALL_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_FREE_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_FREE_CALL_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_SUPPORT_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_VIDEO_CREATE_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_VIDEO_JOIN_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_VIDEO_NO_FRAME_RECV:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_VIDEO_OTHER_FRAME_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_VIDEO_SELF_FRAME_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_VIDEO_SHARE_FRAME_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_VOIP_CONNECT_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_VOIP_EXCEPTION:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

.field public static final enum TYPE_VOIP_REG_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;


# instance fields
.field private reasonValue:Ljava/lang/String;

.field private typeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 154
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_FREE_CALL_TIMEOUT"

    const-string/jumbo v2, "\u5355\u4eba\u901a\u8bdd\u56de\u62e8\u8d85\u65f6"

    const/16 v3, 0x4b0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_FREE_CALL_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 155
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_FREE_CALL_FAIL"

    const-string/jumbo v2, "\u5355\u4eba\u901a\u8bdd\u53d1\u8d77\u5931\u8d25"

    const/16 v3, 0x4b1

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_FREE_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 157
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_BIZ_CALL_TIMEOUT"

    const-string/jumbo v2, "\u529e\u516c\u7535\u8bdd\u56de\u62e8\u8d85\u65f6"

    const/16 v3, 0x4b2

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_BIZ_CALL_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 158
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_BIZ_CALL_FAIL"

    const-string/jumbo v2, "\u529e\u516c\u7535\u8bdd\u53d1\u8d77\u5931\u8d25"

    const/16 v3, 0x4b3

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_BIZ_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 160
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_SUPPORT_CALL_FAIL"

    const-string/jumbo v2, "\u4e2d\u95f4\u9875\u9762\u6743\u9650\u6821\u9a8c\u83b7\u53d6\u5931\u8d25"

    const/16 v3, 0x4ba

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_SUPPORT_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 162
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_CONF_CALL_TIMEOUT"

    const/4 v2, 0x5

    const-string/jumbo v3, "\u7535\u8bdd\u4f1a\u8bae\u4e3b\u53eb\u56de\u62e8\u8d85\u65f6"

    const/16 v4, 0x4c5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 163
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_CONF_CALL_MEMADD_FAIL"

    const/4 v2, 0x6

    const-string/jumbo v3, "\u7535\u8bdd\u4f1a\u8bae\u4e3b\u53eb\u52a0\u4eba\u5931\u8d25"

    const/16 v4, 0x4c6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_MEMADD_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 164
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_CONF_CALL_FAIL"

    const/4 v2, 0x7

    const-string/jumbo v3, "\u7535\u8bdd\u4f1a\u8bae\u53d1\u8d77\u5931\u8d25"

    const/16 v4, 0x4c7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 165
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_CONF_CALL_RECALL_FAIL"

    const/16 v2, 0x8

    const-string/jumbo v3, "\u7535\u8bdd\u4f1a\u8bae\u4e3b\u53eb\u9762\u677f\u91cd\u62e8\u7528\u6237\u5931\u8d25"

    const/16 v4, 0x4c8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_RECALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 166
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_CONF_CALL_HOMEPAGE_FAIL"

    const/16 v2, 0x9

    const-string/jumbo v3, "\u7535\u8bdd\u4f1a\u8bae\u4e3b\u53eb\u9762\u677f\u5524\u8d77\u5931\u8d25"

    const/16 v4, 0x4c9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_HOMEPAGE_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 167
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_CONF_CALL_MINUTES_FAIL"

    const/16 v2, 0xa

    const-string/jumbo v3, "\u7535\u8bdd\u4f1a\u8bae\u9762\u677f\u4f7f\u7528\u4f1a\u8bae\u7eaa\u8981\u5931\u8d25"

    const/16 v4, 0x4ca

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_MINUTES_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 168
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_CONF_CALL_MUTEALL_FAIL"

    const/16 v2, 0xb

    const-string/jumbo v3, "\u7535\u8bdd\u4f1a\u8bae\u9762\u677f\u4f7f\u7528\u4e00\u952e\u9759\u97f3\u5931\u8d25"

    const/16 v4, 0x4cb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_MUTEALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 169
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_CONF_CALL_MEMDEL_FAIL"

    const/16 v2, 0xc

    const-string/jumbo v3, "\u7535\u8bdd\u4f1a\u8bae\u9762\u677f\u5254\u9664\u7528\u6237\u5931\u8d25"

    const/16 v4, 0x4cc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_MEMDEL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 171
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_VOIP_REG_FAIL"

    const/16 v2, 0xd

    const-string/jumbo v3, "VoIP\u6ce8\u518c\u5931\u8d25"

    const/16 v4, 0x4e2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_REG_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 172
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_VOIP_EXCEPTION"

    const/16 v2, 0xe

    const-string/jumbo v3, "VoIP\u5f02\u5e38"

    const/16 v4, 0x4e3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_EXCEPTION:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 173
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_VOIP_CONNECT_TIMEOUT"

    const/16 v2, 0xf

    const-string/jumbo v3, "VoIP\u63a5\u542c\u8d85\u65f6"

    const/16 v4, 0x4e4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_CONNECT_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 175
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_VIDEO_CREATE_FAIL"

    const/16 v2, 0x10

    const-string/jumbo v3, "\u89c6\u9891\u4f1a\u8bae\u521b\u5efa\u5931\u8d25"

    const/16 v4, 0x4f6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VIDEO_CREATE_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 176
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_VIDEO_JOIN_FAIL"

    const/16 v2, 0x11

    const-string/jumbo v3, "\u89c6\u9891\u4f1a\u8bae\u6210\u5458\u5165\u6237\u5931\u8d25"

    const/16 v4, 0x4f7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VIDEO_JOIN_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 177
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_VIDEO_SELF_FRAME_TIMEOUT"

    const/16 v2, 0x12

    const-string/jumbo v3, "\u89c6\u9891\u4f1a\u8bae\u63a5\u6536\u81ea\u5df1\u89c6\u9891\u6d41\u9996\u5e27\u8d85\u65f6"

    const/16 v4, 0x4f8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VIDEO_SELF_FRAME_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 178
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_VIDEO_OTHER_FRAME_TIMEOUT"

    const/16 v2, 0x13

    const-string/jumbo v3, "\u89c6\u9891\u4f1a\u8bae\u6210\u5458\u63a5\u6536\u89c6\u9891\u6d41\u9996\u5e27\u8d85\u65f6"

    const/16 v4, 0x4f9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VIDEO_OTHER_FRAME_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 179
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_VIDEO_SHARE_FRAME_TIMEOUT"

    const/16 v2, 0x14

    const-string/jumbo v3, "\u89c6\u9891\u4f1a\u8bae\u5c4f\u5e55\u5171\u4eab\u89c6\u9891\u6d41\u9996\u5e27\u8d85\u65f6"

    const/16 v4, 0x4fa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VIDEO_SHARE_FRAME_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 180
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v1, "TYPE_VIDEO_NO_FRAME_RECV"

    const/16 v2, 0x15

    const-string/jumbo v3, "\u89c6\u9891\u4f1a\u8bae\u6210\u5458\u4e00\u76f4\u6ca1\u6709\u89c6\u9891\u6d41\u63a5\u6536"

    const/16 v4, 0x4fb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VIDEO_NO_FRAME_RECV:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 153
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_FREE_CALL_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_FREE_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_BIZ_CALL_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_BIZ_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_SUPPORT_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_MEMADD_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_RECALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_HOMEPAGE_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_MINUTES_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_MUTEALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_MEMDEL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_REG_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_EXCEPTION:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_CONNECT_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VIDEO_CREATE_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VIDEO_JOIN_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VIDEO_SELF_FRAME_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VIDEO_OTHER_FRAME_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VIDEO_SHARE_FRAME_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VIDEO_NO_FRAME_RECV:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->$VALUES:[Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 185
    iput-object p3, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->reasonValue:Ljava/lang/String;

    .line 186
    iput p4, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->typeValue:I

    .line 187
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    const-class v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->$VALUES:[Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    return-object v0
.end method


# virtual methods
.method public final reason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->reasonValue:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->typeValue:I

    return v0
.end method
