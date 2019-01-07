.class public Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryMeetingMinutes.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_ding_meeting_minutes"
.end annotation


# static fields
.field public static final NAME_CONTENT:Ljava/lang/String; = "mm_content"

.field public static final NAME_CONTENT_TYPE:Ljava/lang/String; = "mm_content_type"

.field public static final NAME_DING_ID:Ljava/lang/String; = "mm_ding_id"

.field public static final NAME_MINUTES_ID:Ljava/lang/String; = "mm_minutes_id"

.field public static final NAME_RECORDER_ID:Ljava/lang/String; = "mm_recorder_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_ding_meeting_minutes"


# instance fields
.field public content:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "mm_content"
        sort = 0x2
    .end annotation
.end field

.field public contentType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "mm_content_type"
    .end annotation
.end field

.field public dingId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "mm_ding_id"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_ding_meeting_minutes:1"
    .end annotation
.end field

.field public minutesId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "mm_minutes_id"
        sort = 0x4
        uniqueIndexName = "idx_tb_ding_meeting_minutes:2"
    .end annotation
.end field

.field public recorderId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "mm_recorder_id"
        sort = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 33
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 34
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->getValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;->contentType:I

    .line 33
    return-void
.end method


# virtual methods
.method public toMeetingMinutesDetailObject()Lbfv;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 44
    new-instance v0, Lbfv;

    invoke-direct {v0}, Lbfv;-><init>()V

    .line 45
    .local v0, "detailObject":Lbfv;
    iget-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;->dingId:J

    .line 1040
    iput-wide v2, v0, Lbfv;->a:J

    .line 46
    iget-object v1, p0, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;->content:Ljava/lang/String;

    .line 1044
    iput-object v1, v0, Lbfv;->b:Ljava/lang/String;

    .line 47
    iget v1, p0, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;->contentType:I

    .line 1048
    iput v1, v0, Lbfv;->c:I

    .line 48
    iget-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;->recorderId:J

    .line 1052
    iput-wide v2, v0, Lbfv;->d:J

    .line 49
    iget-wide v2, p0, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;->minutesId:J

    .line 1060
    iput-wide v2, v0, Lbfv;->e:J

    .line 51
    return-object v0
.end method
