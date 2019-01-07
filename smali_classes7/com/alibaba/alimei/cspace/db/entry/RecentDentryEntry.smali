.class public Lcom/alibaba/alimei/cspace/db/entry/RecentDentryEntry;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "RecentDentryEntry.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "rct_operation"
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "app_id"

.field public static final COLUMN_ACCOUNT_NAME:Ljava/lang/String; = "accnm"

.field public static final COLUMN_CATEGORYID:Ljava/lang/String; = "categoryid"

.field public static final COLUMN_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field public static final COLUMN_CREATE_TIME:Ljava/lang/String; = "crttm"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LENTH:Ljava/lang/String; = "fsize"

.field public static final COLUMN_MODIFY_TIME:Ljava/lang/String; = "mdftm"

.field public static final COLUMN_NAME:Ljava/lang/String; = "_name"

.field public static final COLUMN_OPERATION_TIME:Ljava/lang/String; = "optm"

.field public static final COLUMN_OPID:Ljava/lang/String; = "opid"

.field public static final COLUMN_ORG_ID:Ljava/lang/String; = "_orgId"

.field public static final COLUMN_PATH:Ljava/lang/String; = "_path"

.field public static final COLUMN_SERVERID:Ljava/lang/String; = "srvid"

.field public static final COLUMN_SPACEID:Ljava/lang/String; = "spaceid"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "_type"

.field public static final ENCRYPT_ORG_ID:Ljava/lang/String; = "encrypt_org_id"

.field public static final E_SAFE_NET_ENCRYPT_OFF:I = 0x0

.field public static final E_SAFE_NET_ENCRYPT_ON:I = 0x2

.field public static final IS_CRYPT:Ljava/lang/String; = "crypt"

.field public static final IS_E_SAFE_NET_ENCRYPT:Ljava/lang/String; = "is_e_safe_net_encrypt"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final TABLE_NAME:Ljava/lang/String; = "rct_dentry"


# instance fields
.field public accountName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        index = true
        name = "accnm"
    .end annotation
.end field

.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x10
        name = "app_id"
    .end annotation
.end field

.field public categoryId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        index = true
        name = "categoryid"
    .end annotation
.end field

.field public contentType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xb
        name = "content_type"
    .end annotation
.end field

.field public createTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xc
        name = "crttm"
    .end annotation
.end field

.field public encryptOrgId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x11
        name = "encrypt_org_id"
    .end annotation
.end field

.field public fileType:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x9
        name = "_type"
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

.field public isCrypt:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xf
        name = "crypt"
    .end annotation
.end field

.field public isESafeNetEncrypt:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x13
        name = "is_e_safe_net_encrypt"
    .end annotation
.end field

.field public length:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xa
        name = "fsize"
    .end annotation
.end field

.field public modifyTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xd
        name = "mdftm"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "_name"
    .end annotation
.end field

.field public operationId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        index = true
        name = "opid"
    .end annotation
.end field

.field public operationTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xe
        name = "optm"
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        name = "_orgId"
    .end annotation
.end field

.field public path:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "_path"
    .end annotation
.end field

.field public priority:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x12
        name = "priority"
    .end annotation
.end field

.field public serverId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "srvid"
    .end annotation
.end field

.field public spaceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "spaceid"
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
