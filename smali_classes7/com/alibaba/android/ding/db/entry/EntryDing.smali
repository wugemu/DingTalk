.class public Lcom/alibaba/android/ding/db/entry/EntryDing;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryDing.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbdinglist"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final NAME_ATTACHMENTS:Ljava/lang/String; = "dingAttachments"

.field public static final NAME_COMMENT_COUNT:Ljava/lang/String; = "commentCount"

.field public static final NAME_CONFIRMED_DATE:Ljava/lang/String; = "confirmedDate"

.field public static final NAME_CONFIRMED_TYPE:Ljava/lang/String; = "confirmedType"

.field public static final NAME_CREATED_AT:Ljava/lang/String; = "dingCreatedAt"

.field public static final NAME_DING_BIZE_EXTENSION:Ljava/lang/String; = "biz_extension"

.field public static final NAME_DING_BIZE_ID:Ljava/lang/String; = "biz_id"

.field public static final NAME_DING_BIZE_TYPE:Ljava/lang/String; = "biz_type"

.field public static final NAME_DING_CAN_CREATE_SUB_TASK:Ljava/lang/String; = "d_can_create_sub_task"

.field public static final NAME_DING_CC_UIDS:Ljava/lang/String; = "dCCUids"

.field public static final NAME_DING_CC_UID_COUNT:Ljava/lang/String; = "dCCUidCount"

.field public static final NAME_DING_DEADLINE:Ljava/lang/String; = "deadline"

.field public static final NAME_DING_EXECUTE_COMPLETE_COUNT:Ljava/lang/String; = "execute_complete_count"

.field public static final NAME_DING_FINISH_STATUS:Ljava/lang/String; = "finishStatus"

.field public static final NAME_DING_FINISH_TIME:Ljava/lang/String; = "finishTime"

.field public static final NAME_DING_FOCUS_STATUS:Ljava/lang/String; = "focusStatus"

.field public static final NAME_DING_HAS_DEADLINE:Ljava/lang/String; = "hasDeadline"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAME_DING_ID:Ljava/lang/String; = "dingId"

.field private static final NAME_DING_IS_TASK:Ljava/lang/String; = "isTask"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAME_DING_LATEST_COMMENTS:Ljava/lang/String; = "latestComments"

.field public static final NAME_DING_ONLY_VISIBLE_TO_SENDER:Ljava/lang/String; = "onlyVisibleToSender"

.field public static final NAME_DING_OPERATION_STATUS:Ljava/lang/String; = "dingOperationStatus"

.field public static final NAME_DING_PARENT_ID:Ljava/lang/String; = "parent_id"

.field public static final NAME_DING_RECEIVER_COUNT:Ljava/lang/String; = "receiver_count"

.field public static final NAME_DING_RECEIVER_UIDS:Ljava/lang/String; = "receiverUids"

.field public static final NAME_DING_ROLE:Ljava/lang/String; = "dRole"

.field public static final NAME_DING_SELF_FINISH_STATUS:Ljava/lang/String; = "selfFinishStatus"

.field public static final NAME_DING_SELF_FINISH_TIME:Ljava/lang/String; = "d_self_finish_time"

.field public static final NAME_DING_SEND_AT:Ljava/lang/String; = "dingSendAt"

.field public static final NAME_DING_STATUS:Ljava/lang/String; = "dingStatus"

.field public static final NAME_DING_SUB_BIZ_TYPE:Ljava/lang/String; = "sub_biz_type"

.field public static final NAME_DING_SUB_TASK_COUNT:Ljava/lang/String; = "dSubTaskCount"

.field public static final NAME_DING_TASK_REMIND_TYPE:Ljava/lang/String; = "task_remind_type"

.field public static final NAME_DING_VERSION:Ljava/lang/String; = "d_version"

.field public static final NAME_EXTENSION:Ljava/lang/String; = "dingExtension"

.field public static final NAME_IDENTITY:Ljava/lang/String; = "identity"

.field public static final NAME_MODIFY_AT:Ljava/lang/String; = "dingModifyAt"

.field public static final NAME_NEW_COMMENT_COUNT:Ljava/lang/String; = "newCommentCount"

.field public static final NAME_NOTIFICATION_DEADLINE:Ljava/lang/String; = "notificationDeadline"

.field public static final NAME_NOTIFICATION_TYPE:Ljava/lang/String; = "notificationType"

.field public static final NAME_NOTIFY_COMMENT_COUNT:Ljava/lang/String; = "notifyCommentCount"

.field public static final NAME_SENDER_ID:Ljava/lang/String; = "senderId"

.field public static final NAME_SEND_STATUS:Ljava/lang/String; = "sendStatus"

.field public static final NAME_TOTAL_COUNT:Ljava/lang/String; = "totalCount"

.field public static final NAME_UNCOMPLETED_COUNT:Ljava/lang/String; = "unCompletedCount"

.field public static final NAME_UNCONFIRMED_COUNT:Ljava/lang/String; = "unConfirmedCount"

.field public static final NAME_USER_COMMENT_COUNT:Ljava/lang/String; = "user_comment_count"

.field public static final TABLE_NAME:Ljava/lang/String; = "tbdinglist"


# instance fields
.field public attachments:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dingAttachments"
        sort = 0xf
    .end annotation
.end field

.field public bizExtension:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "biz_extension"
        sort = 0x21
    .end annotation
.end field

.field public bizId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "biz_id"
        sort = 0x23
    .end annotation
.end field

.field public bizType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "biz_type"
        sort = 0x20
    .end annotation
.end field

.field public canCreateSubTask:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "d_can_create_sub_task"
        sort = 0x2d
    .end annotation
.end field

.field public ccUidCount:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dCCUidCount"
        sort = 0x28
    .end annotation
.end field

.field public ccUids:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dCCUids"
        sort = 0x29
    .end annotation
.end field

.field public commentCount:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "commentCount"
        sort = 0xd
    .end annotation
.end field

.field public confirmedDate:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "confirmedDate"
        sort = 0xa
    .end annotation
.end field

.field public confirmedType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "confirmedType"
        sort = 0x9
    .end annotation
.end field

.field public deadline:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "deadline"
        sort = 0x16
    .end annotation
.end field

.field public dingCreatedAt:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dingCreatedAt"
        nullable = false
        sort = 0x4
    .end annotation
.end field

.field public dingId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dingId"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tbdinglist_dingId:1"
    .end annotation
.end field

.field public dingModifyAt:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dingModifyAt"
        sort = 0xc
    .end annotation
.end field

.field public dingOperationStatus:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "dingOperationStatus"
        sort = 0xe
    .end annotation
.end field

.field public dingSendAt:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dingSendAt"
        sort = 0x13
    .end annotation
.end field

.field public dingStatus:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dingStatus"
        sort = 0x8
    .end annotation
.end field

.field public executeCompletedCount:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "execute_complete_count"
        sort = 0x2a
    .end annotation
.end field

.field public extension:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dingExtension"
        sort = 0x10
    .end annotation
.end field

.field public finishStatus:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "finishStatus"
        sort = 0x17
    .end annotation
.end field

.field public finishTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "finishTime"
        sort = 0x1e
    .end annotation
.end field

.field public focusStatus:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "focusStatus"
        sort = 0x1a
    .end annotation
.end field

.field public hasDeadline:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "hasDeadline"
        sort = 0x15
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public identity:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "identity"
        nullable = false
        sort = 0xb
    .end annotation
.end field

.field public isTask:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "isTask"
        sort = 0x1b
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public latestComments:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "latestComments"
        sort = 0x1f
    .end annotation
.end field

.field public newCommentCount:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "newCommentCount"
        sort = 0x11
    .end annotation
.end field

.field public notificationDeadline:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "notificationDeadline"
        sort = 0x5
    .end annotation
.end field

.field public notificationType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "notificationType"
        nullable = false
        sort = 0x3
    .end annotation
.end field

.field public notifyCommentCount:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "notifyCommentCount"
        sort = 0x14
    .end annotation
.end field

.field public onlyVisibleToSender:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "onlyVisibleToSender"
        sort = 0x1c
    .end annotation
.end field

.field public parentId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "parent_id"
        sort = 0x25
    .end annotation
.end field

.field public receiverCount:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "receiver_count"
        sort = 0x24
    .end annotation
.end field

.field public receiverUids:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "receiverUids"
        sort = 0x1d
    .end annotation
.end field

.field public role:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dRole"
        sort = 0x27
    .end annotation
.end field

.field public selfFinishStatus:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "selfFinishStatus"
        sort = 0x19
    .end annotation
.end field

.field public selfFinishTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "d_self_finish_time"
        sort = 0x2e
    .end annotation
.end field

.field public sendStatus:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "sendStatus"
        sort = 0x12
    .end annotation
.end field

.field public senderId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "senderId"
        nullable = false
        sort = 0x2
    .end annotation
.end field

.field public subBizType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "sub_biz_type"
        sort = 0x2b
    .end annotation
.end field

.field public subTaskCount:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "dSubTaskCount"
        sort = 0x26
    .end annotation
.end field

.field public taskRemindType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "task_remind_type"
        sort = 0x30
    .end annotation
.end field

.field public totalCount:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "totalCount"
        sort = 0x6
    .end annotation
.end field

.field public unCompletedCount:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "unCompletedCount"
        sort = 0x18
    .end annotation
.end field

.field public unConfirmedCount:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "unConfirmedCount"
        sort = 0x7
    .end annotation
.end field

.field public userCommentCount:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "user_comment_count"
        sort = 0x2c
    .end annotation
.end field

.field public version:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "d_version"
        sort = 0x2f
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    const/16 v0, 0x30

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "dingId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "senderId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "notificationType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "dingCreatedAt"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "notificationDeadline"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "totalCount"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "unConfirmedCount"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "dingStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "confirmedType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "confirmedDate"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "identity"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "dingModifyAt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "commentCount"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "dingOperationStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "dingAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "dingExtension"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "newCommentCount"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "sendStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "dingSendAt"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "notifyCommentCount"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "hasDeadline"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "deadline"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "finishStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "unCompletedCount"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "selfFinishStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "focusStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "isTask"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "onlyVisibleToSender"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "receiverUids"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "finishTime"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "latestComments"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "biz_type"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "biz_extension"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "biz_id"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "receiver_count"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "parent_id"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "dSubTaskCount"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "dRole"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "dCCUidCount"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "dCCUids"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "execute_complete_count"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "sub_biz_type"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "user_comment_count"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "d_can_create_sub_task"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "task_remind_type"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "d_self_finish_time"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "d_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/ding/db/entry/EntryDing;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public fromObjectDing(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 4
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 473
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingId:Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->senderId:J

    .line 475
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->F()Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->notificationType:I

    .line 476
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingCreatedAt:J

    .line 477
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->C()Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->getValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->identity:I

    .line 478
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Q()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingModifyAt:J

    .line 479
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->P()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingSendAt:J

    .line 480
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->getValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->sendStatus:I

    .line 481
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->totalCount:I

    .line 482
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->H()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->receiverCount:I

    .line 483
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->V()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->commentCount:J

    .line 484
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->X()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->newCommentCount:J

    .line 485
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->af()Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingOperationStatus:I

    .line 486
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Z()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lbjp;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->attachments:Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aa()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcoz;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->extension:Ljava/lang/String;

    .line 488
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->t()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->notifyCommentCount:J

    .line 489
    invoke-static {p1}, Lbkh;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ad()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->unConfirmedCount:I

    .line 491
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ad()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->unCompletedCount:I

    move-object v1, p1

    .line 492
    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->U:Lckm;

    invoke-virtual {v1}, Lckm;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->notificationDeadline:J

    move-object v1, p1

    .line 493
    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    invoke-virtual {v1}, Lckm;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->getValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingStatus:I

    .line 494
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ab()Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->getValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->confirmedType:I

    .line 495
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ac()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->confirmedDate:J

    .line 505
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->deadline:J

    .line 506
    invoke-static {p1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 507
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->l()I

    move-result v1

    move-object v0, p0

    .line 511
    .end local p0    # "this":Lcom/alibaba/android/ding/db/entry/EntryDing;
    .local v0, "this":Lcom/alibaba/android/ding/db/entry/EntryDing;
    :goto_1
    iput v1, v0, Lcom/alibaba/android/ding/db/entry/EntryDing;->finishStatus:I

    .line 513
    invoke-static {p1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 514
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->k()I

    move-result v1

    move-object v0, p0

    .line 518
    :goto_2
    iput v1, v0, Lcom/alibaba/android/ding/db/entry/EntryDing;->selfFinishStatus:I

    .line 520
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->h()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->focusStatus:Z

    .line 521
    invoke-static {p1}, Lbkh;->F(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->onlyVisibleToSender:Z

    .line 522
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lbjp;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->receiverUids:Ljava/lang/String;

    .line 523
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->T()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lbjp;->b(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->latestComments:Ljava/lang/String;

    .line 7681
    iget v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 524
    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->bizType:I

    .line 7713
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->I:Ljava/util/Map;

    .line 525
    invoke-static {v1}, Lcob;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->bizExtension:Ljava/lang/String;

    .line 7816
    iget-wide v2, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->N:J

    .line 526
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->bizId:J

    .line 7828
    iget-wide v2, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    .line 527
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->parentId:J

    .line 528
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->o()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->subTaskCount:I

    .line 529
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->q()Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->getValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->role:I

    .line 7867
    iget v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Q:I

    .line 530
    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->ccUidCount:I

    .line 531
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->r()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lbjp;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->ccUids:Ljava/lang/String;

    .line 532
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->s()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->executeCompletedCount:I

    .line 8689
    iget v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->F:I

    .line 533
    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->subBizType:I

    .line 534
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->W()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->userCommentCount:J

    .line 9094
    iget-boolean v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G:Z

    .line 535
    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->canCreateSubTask:I

    .line 9102
    iget-wide v2, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->H:J

    .line 536
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->finishTime:J

    .line 537
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->F()Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v1

    invoke-static {v1}, Lbkh;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->taskRemindType:I

    .line 9170
    iget-wide v2, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S:J

    .line 538
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->selfFinishTime:J

    .line 9178
    iget-wide v2, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->T:J

    .line 539
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->version:J

    .line 540
    return-void

    .line 496
    .end local v0    # "this":Lcom/alibaba/android/ding/db/entry/EntryDing;
    .restart local p0    # "this":Lcom/alibaba/android/ding/db/entry/EntryDing;
    :cond_1
    invoke-static {p1}, Lbkh;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 497
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ad()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->unConfirmedCount:I

    move-object v1, p1

    .line 498
    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->U:Lckm;

    invoke-virtual {v1}, Lckm;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->notificationDeadline:J

    move-object v1, p1

    .line 499
    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    invoke-virtual {v1}, Lckm;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->getValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingStatus:I

    goto/16 :goto_0

    .line 500
    :cond_2
    invoke-static {p1}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ad()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->unConfirmedCount:I

    .line 502
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ab()Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->getValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->confirmedType:I

    .line 503
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ac()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->confirmedDate:J

    goto/16 :goto_0

    .line 509
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->UNFINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    .line 510
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->getValue()I

    move-result v1

    move-object v0, p0

    .end local p0    # "this":Lcom/alibaba/android/ding/db/entry/EntryDing;
    .restart local v0    # "this":Lcom/alibaba/android/ding/db/entry/EntryDing;
    goto/16 :goto_1

    .line 511
    .end local v0    # "this":Lcom/alibaba/android/ding/db/entry/EntryDing;
    .restart local p0    # "this":Lcom/alibaba/android/ding/db/entry/EntryDing;
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->getValue()I

    move-result v1

    move-object v0, p0

    .end local p0    # "this":Lcom/alibaba/android/ding/db/entry/EntryDing;
    .restart local v0    # "this":Lcom/alibaba/android/ding/db/entry/EntryDing;
    goto/16 :goto_1

    .line 516
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->UNFINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    .line 517
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->getValue()I

    move-result v1

    move-object v0, p0

    goto/16 :goto_2

    .line 518
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->getValue()I

    move-result v1

    move-object v0, p0

    goto/16 :goto_2

    .line 535
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_3
.end method

.method public reset()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 333
    iput-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingId:Ljava/lang/String;

    .line 334
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->senderId:J

    .line 335
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->notificationType:I

    .line 336
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingCreatedAt:J

    .line 337
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->notificationDeadline:J

    .line 338
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->totalCount:I

    .line 339
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->receiverCount:I

    .line 340
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->unConfirmedCount:I

    .line 341
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingStatus:I

    .line 342
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->confirmedType:I

    .line 343
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->confirmedDate:J

    .line 344
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->identity:I

    .line 345
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingModifyAt:J

    .line 346
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->commentCount:J

    .line 347
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingOperationStatus:I

    .line 348
    iput-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->attachments:Ljava/lang/String;

    .line 349
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingSendAt:J

    .line 350
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->notifyCommentCount:J

    .line 351
    iput-boolean v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->hasDeadline:Z

    .line 352
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->deadline:J

    .line 353
    iput v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->finishStatus:I

    .line 354
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->unCompletedCount:I

    .line 355
    iput v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->selfFinishStatus:I

    .line 356
    iput-boolean v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->focusStatus:Z

    .line 357
    iput-boolean v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->isTask:Z

    .line 358
    iput-boolean v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->onlyVisibleToSender:Z

    .line 359
    iput-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->receiverUids:Ljava/lang/String;

    .line 360
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->finishTime:J

    .line 361
    iput-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->latestComments:Ljava/lang/String;

    .line 362
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->bizType:I

    .line 363
    iput-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->bizExtension:Ljava/lang/String;

    .line 364
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->bizId:J

    .line 365
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->parentId:J

    .line 366
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->subTaskCount:I

    .line 367
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->role:I

    .line 368
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->ccUidCount:I

    .line 369
    iput-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->ccUids:Ljava/lang/String;

    .line 370
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->executeCompletedCount:I

    .line 371
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->subBizType:I

    .line 372
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->userCommentCount:J

    .line 373
    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->canCreateSubTask:I

    .line 374
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->taskRemindType:I

    .line 375
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->selfFinishTime:J

    .line 376
    iput-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->version:J

    .line 377
    return-void
.end method

.method public toObjectDing(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 10
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 380
    iget-object v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->c(Ljava/lang/String;)V

    .line 381
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->senderId:J

    invoke-virtual {p1, v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(J)V

    .line 382
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->notificationType:I

    invoke-static {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)V

    .line 383
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingCreatedAt:J

    invoke-virtual {p1, v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->c(J)V

    .line 384
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingModifyAt:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_2

    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingCreatedAt:J

    :goto_0
    invoke-virtual {p1, v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d(J)V

    .line 385
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingSendAt:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_3

    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingCreatedAt:J

    :goto_1
    invoke-virtual {p1, v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->e(J)V

    .line 386
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->sendStatus:I

    invoke-static {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;)V

    .line 387
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->identity:I

    invoke-static {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;)V

    .line 388
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->totalCount:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->e(I)V

    .line 389
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->receiverCount:I

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f(I)V

    .line 390
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->commentCount:J

    invoke-virtual {p1, v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f(J)V

    .line 391
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->newCommentCount:J

    invoke-virtual {p1, v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->h(J)V

    .line 392
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingOperationStatus:I

    invoke-static {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)V

    .line 393
    iget-object v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->extension:Ljava/lang/String;

    invoke-static {v3}, Lcoz;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(Ljava/util/Map;)V

    .line 394
    iget-object v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->attachments:Ljava/lang/String;

    invoke-static {v3}, Lbjp;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 395
    .local v1, "attachmentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 396
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    .line 398
    :cond_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aa()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 399
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 400
    .local v0, "attachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    if-eqz v0, :cond_1

    .line 403
    iget-object v4, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    iget-object v4, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aa()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4, v5}, Layx;->a(Ljava/lang/String;Ljava/util/Map;)Layw;

    move-result-object v2

    .line 405
    .local v2, "authInfo":Layw;
    if-eqz v2, :cond_1

    .line 406
    iget-object v4, v2, Layw;->b:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    .line 407
    iget-object v4, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 408
    iget-object v4, v2, Layw;->c:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    goto :goto_2

    .line 384
    .end local v0    # "attachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .end local v1    # "attachmentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    .end local v2    # "authInfo":Layw;
    :cond_2
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingModifyAt:J

    goto/16 :goto_0

    .line 385
    :cond_3
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingSendAt:J

    goto/16 :goto_1

    .line 414
    .restart local v1    # "attachmentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    :cond_4
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->notifyCommentCount:J

    invoke-virtual {p1, v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(J)V

    .line 415
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->deadline:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Ljava/lang/Long;)V

    .line 416
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->finishStatus:I

    invoke-static {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->fromValue(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;)V

    .line 417
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->selfFinishStatus:I

    invoke-static {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->fromValue(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;)V

    .line 418
    iget-boolean v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->focusStatus:Z

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Z)V

    .line 419
    iget-boolean v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->onlyVisibleToSender:Z

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d(Z)V

    .line 420
    iget-object v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->receiverUids:Ljava/lang/String;

    invoke-static {v3}, Lbjp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(Ljava/util/List;)V

    .line 421
    iget-object v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->latestComments:Ljava/lang/String;

    invoke-static {v3}, Lbjp;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->c(Ljava/util/List;)V

    .line 422
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->bizType:I

    .line 2685
    iput v3, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 423
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->selfFinishStatus:I

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(I)V

    .line 424
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->finishStatus:I

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(I)V

    .line 425
    iget-object v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->bizExtension:Ljava/lang/String;

    invoke-static {v3}, Lcob;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Ljava/util/Map;)V

    .line 426
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->bizId:J

    .line 2820
    iput-wide v4, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->N:J

    .line 427
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->m()V

    .line 428
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->parentId:J

    .line 2832
    iput-wide v4, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    .line 429
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->subTaskCount:I

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->c(I)V

    .line 430
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->role:I

    invoke-static {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->fromValue(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;)V

    .line 431
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->ccUidCount:I

    .line 2871
    iput v3, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Q:I

    .line 432
    iget-object v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->ccUids:Ljava/lang/String;

    invoke-static {v3}, Lbjp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Ljava/util/List;)V

    .line 433
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->executeCompletedCount:I

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d(I)V

    .line 434
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->subBizType:I

    .line 3693
    iput v3, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->F:I

    .line 435
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->userCommentCount:J

    invoke-virtual {p1, v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g(J)V

    .line 436
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->canCreateSubTask:I

    if-lez v3, :cond_5

    const/4 v3, 0x1

    .line 4098
    :goto_3
    iput-boolean v3, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G:Z

    .line 437
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->finishTime:J

    .line 4106
    iput-wide v4, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->H:J

    .line 438
    iget v3, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->taskRemindType:I

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->fromValue(I)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v3

    invoke-static {v3}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)V

    .line 439
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->selfFinishTime:J

    .line 4174
    iput-wide v4, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S:J

    .line 440
    iget-wide v4, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->version:J

    .line 4182
    iput-wide v4, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->T:J

    .line 441
    return-void

    :cond_5
    move v3, v6

    .line 436
    goto :goto_3
.end method

.method public toObjectDingMySelf()Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 462
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>()V

    .line 463
    .local v0, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/db/entry/EntryDing;->toObjectDing(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 464
    iget v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->unConfirmedCount:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->h(I)V

    .line 465
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->U:Lckm;

    iget-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->notificationDeadline:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 6228
    invoke-virtual {v1, v2, v4}, Lckm;->b(Ljava/lang/Object;Z)Z

    .line 466
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    iget v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingStatus:I

    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    move-result-object v2

    .line 7228
    invoke-virtual {v1, v2, v4}, Lckm;->b(Ljava/lang/Object;Z)Z

    .line 467
    iget v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->confirmedType:I

    invoke-static {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)V

    .line 468
    iget-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->confirmedDate:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->i(J)V

    .line 469
    return-object v0
.end method

.method public toObjectDingReceived()Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 444
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;-><init>()V

    .line 445
    .local v0, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/db/entry/EntryDing;->toObjectDing(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 446
    iget v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->unConfirmedCount:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;->h(I)V

    .line 447
    iget v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->confirmedType:I

    invoke-static {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)V

    .line 448
    iget-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->confirmedDate:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;->i(J)V

    .line 449
    return-object v0
.end method

.method public toObjectDingSent()Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 453
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>()V

    .line 454
    .local v0, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/db/entry/EntryDing;->toObjectDing(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 455
    iget v1, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->unConfirmedCount:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->h(I)V

    .line 456
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->U:Lckm;

    iget-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->notificationDeadline:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 4228
    invoke-virtual {v1, v2, v4}, Lckm;->b(Ljava/lang/Object;Z)Z

    .line 457
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    iget v2, p0, Lcom/alibaba/android/ding/db/entry/EntryDing;->dingStatus:I

    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    move-result-object v2

    .line 5228
    invoke-virtual {v1, v2, v4}, Lckm;->b(Ljava/lang/Object;Z)Z

    .line 458
    return-object v0
.end method
