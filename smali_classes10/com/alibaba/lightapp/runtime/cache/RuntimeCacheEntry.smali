.class public Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "RuntimeCacheEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_runtime_cache"
.end annotation


# static fields
.field public static final BIZ_TYPE:Ljava/lang/String; = "bizType"

.field public static final CORP_ID:Ljava/lang/String; = "corpId"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final EXPIRE_TIME:Ljava/lang/String; = "expireTime"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_runtime_cache"


# instance fields
.field public bizType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "bizType"
        nullable = false
        sort = 0x2
        uniqueIndexName = "idx_rt_dm_tp_cpid:2"
    .end annotation
.end field

.field public corpId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "corpId"
        nullable = false
        sort = 0x3
        uniqueIndexName = "idx_rt_dm_tp_cpid:3"
    .end annotation
.end field

.field public data:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "data"
        sort = 0x4
    .end annotation
.end field

.field public domain:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "domain"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_rt_dm_tp_cpid:1"
    .end annotation
.end field

.field public expireTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "expireTime"
        sort = 0x5
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method
