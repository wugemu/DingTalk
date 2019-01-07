.class public Lcom/alibaba/alimei/cspace/db/entry/RecentOperationEntry;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "RecentOperationEntry.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "rct_operation"
.end annotation


# static fields
.field public static final COLUMN_ACCOUNT_NAME:Ljava/lang/String; = "accnm"

.field public static final COLUMN_CATEGORYID:Ljava/lang/String; = "categoryid"

.field public static final COLUMN_FILE_COUNT:Ljava/lang/String; = "flcnt"

.field public static final COLUMN_GROUP:Ljava/lang/String; = "grpnm"

.field public static final COLUMN_GROUP_ID:Ljava/lang/String; = "grpid"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_OPERATION_TIME:Ljava/lang/String; = "opttm"

.field public static final COLUMN_OPERATION_TYPE:Ljava/lang/String; = "opttype"

.field public static final COLUMN_OPERATOR:Ljava/lang/String; = "optornm"

.field public static final COLUMN_OPERATOR_ID:Ljava/lang/String; = "optorid"

.field public static final COLUMN_ORG_ID:Ljava/lang/String; = "_orgId"

.field public static final TABLE_NAME:Ljava/lang/String; = "rct_operation"


# instance fields
.field public accountName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        index = true
        name = "accnm"
    .end annotation
.end field

.field public categoryId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        index = true
        name = "categoryid"
    .end annotation
.end field

.field public fileCount:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xa
        name = "flcnt"
    .end annotation
.end field

.field public groupId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "grpid"
    .end annotation
.end field

.field public groupName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "grpnm"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x0
        isAutoincrement = true
        name = "_id"
        nullable = false
    .end annotation
.end field

.field public operationTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xb
        index = true
        name = "opttm"
    .end annotation
.end field

.field public operationType:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x9
        name = "opttype"
    .end annotation
.end field

.field public operatorId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        name = "optorid"
    .end annotation
.end field

.field public operatorName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "optornm"
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "_orgId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    return-void
.end method
