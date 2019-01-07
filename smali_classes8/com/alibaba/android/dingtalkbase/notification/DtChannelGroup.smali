.class public final enum Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;
.super Ljava/lang/Enum;
.source "DtChannelGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

.field public static final enum Group_Customize:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

.field public static final enum Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

.field public static final enum Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

.field public static final enum Other:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;


# instance fields
.field public final id:Ljava/lang/String;

.field public final nameRes:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    const-string/jumbo v1, "Message"

    const-string/jumbo v2, "dt_group_msg"

    sget v3, Lcig$j;->and_notification_chat:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    .line 20
    new-instance v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    const-string/jumbo v1, "Group_Customize"

    const-string/jumbo v2, "dt_group_customize"

    sget v3, Lcig$j;->dt_im_group_sound_customize:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Group_Customize:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    .line 25
    new-instance v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    const-string/jumbo v1, "Other"

    const-string/jumbo v2, "dt_group_other"

    sget v3, Lcig$j;->dt_im_notification_group_other:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Other:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    .line 30
    new-instance v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    const-string/jumbo v1, "Mute"

    const-string/jumbo v2, "dt_group_mute"

    sget v3, Lcig$j;->dt_im_notification_group_mute:I

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Group_Customize:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Other:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->$VALUES:[Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "nameRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->id:Ljava/lang/String;

    .line 40
    iput p4, p0, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->nameRes:I

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->$VALUES:[Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    return-object v0
.end method
