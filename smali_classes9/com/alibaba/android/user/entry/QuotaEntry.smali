.class public Lcom/alibaba/android/user/entry/QuotaEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "QuotaEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_quota_entry"
.end annotation


# static fields
.field public static final NAME_QUOTA_DESC:Ljava/lang/String; = "quotaDesc"

.field public static final NAME_QUOTA_REMAIN:Ljava/lang/String; = "quotaRemain"

.field public static final NAME_QUOTA_TITLE:Ljava/lang/String; = "quotaTitle"

.field public static final NAME_QUOTA_TOTAL:Ljava/lang/String; = "quotaTotal"

.field public static final NAME_QUOTA_TYPE:Ljava/lang/String; = "quotaType"

.field public static final NAME_QUOTA_USED:Ljava/lang/String; = "quotaUsed"

.field public static final NAME_QUOTA_VERSION:Ljava/lang/String; = "quotaVersion"

.field public static final NAME_SEQ_ID:Ljava/lang/String; = "sequence_id"

.field public static final NAME_UPDATE_TIME:Ljava/lang/String; = "update_time"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_quota_entry"


# instance fields
.field public desc:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "quotaDesc"
        sort = 0x7
    .end annotation
.end field

.field public quotaType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "quotaType"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_ding_sort_uids:1"
    .end annotation
.end field

.field public remains:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "quotaRemain"
        sort = 0x2
    .end annotation
.end field

.field public sequenceId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "sequence_id"
        sort = 0x5
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "quotaTitle"
        sort = 0x6
    .end annotation
.end field

.field public total:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "quotaTotal"
        sort = 0x3
    .end annotation
.end field

.field public updateTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "update_time"
        sort = 0x4
    .end annotation
.end field

.field public used:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "quotaUsed"
        sort = 0x8
    .end annotation
.end field

.field public version:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "quotaVersion"
        sort = 0x9
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static fromDBEntry(Lcom/alibaba/android/user/entry/QuotaEntry;)Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;
    .locals 4
    .param p0, "entry"    # Lcom/alibaba/android/user/entry/QuotaEntry;

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;-><init>()V

    .line 59
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;
    iget v1, p0, Lcom/alibaba/android/user/entry/QuotaEntry;->quotaType:I

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->type:I

    .line 60
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/QuotaEntry;->remains:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->remain:J

    .line 61
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/QuotaEntry;->total:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->total:J

    .line 62
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/QuotaEntry;->updateTime:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->lastTime:J

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/user/entry/QuotaEntry;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->title:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/user/entry/QuotaEntry;->desc:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->desc:Ljava/lang/String;

    .line 65
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/QuotaEntry;->used:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->used:J

    .line 66
    iget v1, p0, Lcom/alibaba/android/user/entry/QuotaEntry;->version:I

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->version:I

    goto :goto_0
.end method

.method public static toDBEntry(Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;)Lcom/alibaba/android/user/entry/QuotaEntry;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    .line 74
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/entry/QuotaEntry;

    invoke-direct {v0}, Lcom/alibaba/android/user/entry/QuotaEntry;-><init>()V

    .line 75
    .local v0, "entry":Lcom/alibaba/android/user/entry/QuotaEntry;
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->type:I

    iput v1, v0, Lcom/alibaba/android/user/entry/QuotaEntry;->quotaType:I

    .line 76
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->remain:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/QuotaEntry;->remains:J

    .line 77
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->total:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/QuotaEntry;->total:J

    .line 78
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->lastTime:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/QuotaEntry;->updateTime:J

    .line 79
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/QuotaEntry;->sequenceId:J

    .line 80
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/QuotaEntry;->title:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->desc:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/QuotaEntry;->desc:Ljava/lang/String;

    .line 82
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->used:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/QuotaEntry;->used:J

    .line 83
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->version:I

    iput v1, v0, Lcom/alibaba/android/user/entry/QuotaEntry;->version:I

    goto :goto_0
.end method
