.class public Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "OfflineTaskEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_offline_task"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tb_offline_task"


# instance fields
.field public mDomain:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "domain"
        sort = 0x7
    .end annotation
.end field

.field public mExtras:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "extras"
        sort = 0x4
    .end annotation
.end field

.field public mHeaders:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "headers"
        sort = 0x3
    .end annotation
.end field

.field public mKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "key"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_taskKey"
    .end annotation
.end field

.field public mMaxRetryTime:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "max_retry_time"
        sort = 0xa
    .end annotation
.end field

.field public mRetry:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "retry"
        sort = 0x5
    .end annotation
.end field

.field public mStorageId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "result_storage_id"
        sort = 0x8
    .end annotation
.end field

.field public mTaskStatus:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_taskStatus"
        name = "task_status"
        sort = 0x9
    .end annotation
.end field

.field public mTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "time"
        sort = 0x6
    .end annotation
.end field

.field public mUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "url"
        nullable = false
        sort = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 104
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 92
    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mKey:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mUrl:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mHeaders:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mExtras:Ljava/lang/String;

    .line 96
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mRetry:I

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mTime:J

    .line 98
    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mDomain:Ljava/lang/String;

    .line 99
    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mStorageId:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->RUNNING:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mTaskStatus:I

    .line 101
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/offline/db/OfflineTaskEntry;->mMaxRetryTime:I

    .line 102
    return-void
.end method
