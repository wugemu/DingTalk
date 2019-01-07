.class public Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EncryptKeyEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_encrypt_key"
.end annotation


# static fields
.field public static final NAME_ALGORITHM:Ljava/lang/String; = "algorithm"

.field public static final NAME_CORPID:Ljava/lang/String; = "corpid"

.field public static final NAME_KEY:Ljava/lang/String; = "key"

.field public static final NAME_VERSION:Ljava/lang/String; = "version"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_encrypt_key"


# instance fields
.field public mAlgorithm:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "algorithm"
        sort = 0x4
    .end annotation
.end field

.field public mCorpId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "corpid"
        sort = 0x1
        uniqueIndexName = "unique_corpid_key_index:1"
    .end annotation
.end field

.field public mKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "key"
        sort = 0x2
    .end annotation
.end field

.field public mVersion:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "version"
        sort = 0x3
        uniqueIndexName = "unique_corpid_key_index:2"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method
