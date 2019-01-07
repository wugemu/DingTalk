.class public Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "DentrySyncEntry.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "dentry_sync_info"
.end annotation


# static fields
.field public static final CREATE_TIME:Ljava/lang/String; = "create_time"

.field public static final DENTRY_ID:Ljava/lang/String; = "dentry_id"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final LOADMORE_ID:Ljava/lang/String; = "loadmore_Id"

.field public static final MODIFIED_TIME:Ljava/lang/String; = "modified_time"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final SPACE_ID:Ljava/lang/String; = "space_id"

.field public static final SYNC_KEY:Ljava/lang/String; = "sync_key"

.field public static final TABLE_NAME:Ljava/lang/String; = "dentry_sync_info"

.field public static final TOTAL_DENTRY:Ljava/lang/String; = "total_dentry"


# instance fields
.field public createTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "create_time"
    .end annotation
.end field

.field public dentryId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        index = true
        name = "dentry_id"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x0
        isAutoincrement = true
        name = "id"
        nullable = false
    .end annotation
.end field

.field public loadmoreId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "loadmore_Id"
    .end annotation
.end field

.field public modifiedTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "modified_time"
    .end annotation
.end field

.field public path:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "path"
    .end annotation
.end field

.field public spaceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "space_id"
    .end annotation
.end field

.field public syncKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        name = "sync_key"
    .end annotation
.end field

.field public totalDentry:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        name = "total_dentry"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    return-void
.end method
