.class public Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "FavoriteSyncEntry.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "fav_sync_info"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final BIZ_TYPE:Ljava/lang/String; = "biz_type"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final LOADMORE_ID:Ljava/lang/String; = "loadmore_Id"

.field public static final MODIFIED_TIME:Ljava/lang/String; = "modified_time"

.field public static final SPACE_ID:Ljava/lang/String; = "space_id"

.field public static final SYNC_KEY:Ljava/lang/String; = "sync_key"

.field public static final TABLE_NAME:Ljava/lang/String; = "fav_sync_info"


# instance fields
.field public accountName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        index = true
        name = "account_name"
    .end annotation
.end field

.field public bizType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        index = true
        name = "biz_type"
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

.field public loadMoreId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "loadmore_Id"
    .end annotation
.end field

.field public modifiedTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "modified_time"
    .end annotation
.end field

.field public spaceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "space_id"
    .end annotation
.end field

.field public syncKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "sync_key"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    return-void
.end method
