.class public final enum Lcom/alibaba/android/dingtalkbase/notification/DtChannel;
.super Ljava/lang/Enum;
.source "DtChannel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/notification/DtChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

.field public static final enum Attendance:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

.field public static final enum Calendar:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

.field public static final enum Contact:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

.field public static final enum Ding:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

.field public static final enum Download:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

.field public static final enum Focus:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

.field public static final enum Mail:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

.field public static final enum Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

.field public static final enum Message_At_Me:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

.field public static final enum Message_Red_Packet:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

.field public static final enum Message_Vip:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

.field public static final enum Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

.field public static final enum Telephone:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;


# instance fields
.field public final group:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

.field public final id:Ljava/lang/String;

.field public final importance:I

.field public final nameRes:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x3

    .line 15
    new-instance v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    const-string/jumbo v1, "Message"

    const-string/jumbo v3, "dt_msg"

    sget-object v4, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    sget v5, Lcig$j;->dt_setting_notification_normal_msg:I

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 20
    new-instance v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    const-string/jumbo v4, "Ding"

    const-string/jumbo v6, "dt_ding"

    sget-object v7, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    sget v8, Lcig$j;->dt_setting_notification_ding_msg:I

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;I)V

    sput-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Ding:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 25
    new-instance v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    const-string/jumbo v4, "Message_Vip"

    const-string/jumbo v6, "dt_msg_vip"

    sget-object v7, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    sget v8, Lcig$j;->dt_setting_notification_special_msg:I

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;I)V

    sput-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message_Vip:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 30
    new-instance v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    const-string/jumbo v4, "Message_At_Me"

    const-string/jumbo v6, "dt_msg_at_me"

    sget-object v7, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    sget v8, Lcig$j;->and_setting_notification_atme_msg:I

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;I)V

    sput-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message_At_Me:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 35
    new-instance v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    const-string/jumbo v4, "Message_Red_Packet"

    const-string/jumbo v6, "dt_msg_red_packet"

    sget-object v7, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    sget v8, Lcig$j;->dt_setting_notification_redenvelop_msg:I

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;I)V

    sput-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message_Red_Packet:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 40
    new-instance v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    const-string/jumbo v4, "Mail"

    const/4 v5, 0x5

    const-string/jumbo v6, "dt_mail"

    sget-object v7, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    sget v8, Lcig$j;->dt_channel_mail:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;I)V

    sput-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mail:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 45
    new-instance v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    const-string/jumbo v4, "Calendar"

    const/4 v5, 0x6

    const-string/jumbo v6, "dt_calendar"

    sget-object v7, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Other:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    sget v8, Lcig$j;->dt_channel_calendar:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;I)V

    sput-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Calendar:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 50
    new-instance v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    const-string/jumbo v4, "Contact"

    const/4 v5, 0x7

    const-string/jumbo v6, "dt_contact"

    sget-object v7, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Other:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    sget v8, Lcig$j;->dt_channel_contact:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;I)V

    sput-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Contact:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 55
    new-instance v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    const-string/jumbo v4, "Attendance"

    const/16 v5, 0x8

    const-string/jumbo v6, "dt_attendance"

    sget-object v7, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Other:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    sget v8, Lcig$j;->dt_channel_attendance:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;I)V

    sput-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Attendance:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 60
    new-instance v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    const-string/jumbo v4, "Download"

    const/16 v5, 0x9

    const-string/jumbo v6, "dt_download"

    sget-object v7, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Other:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    sget v8, Lcig$j;->dt_channel_download:I

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;II)V

    sput-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Download:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 65
    new-instance v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    const-string/jumbo v4, "Focus"

    const/16 v5, 0xa

    const-string/jumbo v6, "dt_focus"

    sget-object v7, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Other:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    sget v8, Lcig$j;->dt_channel_focus:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;I)V

    sput-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Focus:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 70
    new-instance v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    const-string/jumbo v4, "Telephone"

    const/16 v5, 0xb

    const-string/jumbo v6, "dt_telephone"

    sget-object v7, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Other:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    sget v8, Lcig$j;->dt_channel_telephony:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;I)V

    sput-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Telephone:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 75
    new-instance v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    const-string/jumbo v4, "Mute"

    const/16 v5, 0xc

    const-string/jumbo v6, "mute"

    sget-object v7, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    sget v8, Lcig$j;->dt_im_notification_group_mute:I

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;I)V

    sput-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    .line 11
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Ding:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    aput-object v1, v0, v10

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message_Vip:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    aput-object v1, v0, v11

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message_At_Me:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    aput-object v1, v0, v9

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message_Red_Packet:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mail:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Calendar:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Contact:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Attendance:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Download:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Focus:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Telephone:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->$VALUES:[Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;I)V
    .locals 7
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "group"    # Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;
    .param p5, "nameRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 87
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;II)V

    .line 88
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;II)V
    .locals 0
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "group"    # Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;
    .param p5, "nameRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p6, "importance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->id:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->group:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    .line 93
    iput p5, p0, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->nameRes:I

    .line 94
    iput p6, p0, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->importance:I

    .line 95
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/notification/DtChannel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/notification/DtChannel;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->$VALUES:[Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    return-object v0
.end method
