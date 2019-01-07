.class public Lcom/alibaba/android/user/entry/OrgUserNameEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "OrgUserNameEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_org_username"
.end annotation


# static fields
.field public static final NAME_MODIFYTIME:Ljava/lang/String; = "modifyTime"

.field public static final NAME_NICK:Ljava/lang/String; = "nick"

.field public static final NAME_NICK_PINYIN:Ljava/lang/String; = "nickPinyin"

.field public static final NAME_OID:Ljava/lang/String; = "oid"

.field public static final NAME_PINYIN:Ljava/lang/String; = "pinyin"

.field public static final NAME_UID:Ljava/lang/String; = "uid"

.field public static final NAME_USERNAME:Ljava/lang/String; = "username"

.field public static final NAME_VER:Ljava/lang/String; = "ver"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_org_username"


# instance fields
.field public modifyTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "modifyTime"
        nullable = false
        sort = 0x4
    .end annotation
.end field

.field public nick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "nick"
        sort = 0x6
    .end annotation
.end field

.field public nickPinyin:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "nickPinyin"
        sort = 0x7
    .end annotation
.end field

.field public oid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "oid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_org_username_sort_uids:1"
    .end annotation
.end field

.field public pinyin:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "pinyin"
        sort = 0x5
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "uid"
        nullable = false
        sort = 0x2
        uniqueIndexName = "idx_tb_org_username_sort_uids:2"
    .end annotation
.end field

.field public username:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "username"
        sort = 0x3
    .end annotation
.end field

.field public ver:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "ver"
        sort = 0x8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method
