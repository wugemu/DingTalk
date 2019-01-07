.class public Lcom/alibaba/alimei/cspace/db/entry/DentryVersionEntry;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "DentryVersionEntry.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "dentry_version"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field public static final CREATE_EMAIL:Ljava/lang/String; = "create_email"

.field public static final CREATE_NICK:Ljava/lang/String; = "create_nick"

.field public static final CREATE_TIME:Ljava/lang/String; = "create_time"

.field public static final DENTRY_ID:Ljava/lang/String; = "dentry_id"

.field public static final DIRTY:Ljava/lang/String; = "dirty"

.field public static final DOWNLOADED_SIZE:Ljava/lang/String; = "downloaded_size"

.field public static final EXTENSION:Ljava/lang/String; = "extension"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LOCAL_URL:Ljava/lang/String; = "local_url"

.field public static final MODIFIED_TIME:Ljava/lang/String; = "modified_time"

.field public static final MODIFIER_EMAIL:Ljava/lang/String; = "modifier_email"

.field public static final MODIFIER_NICK:Ljava/lang/String; = "modifier_nick"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PARENT_PATH:Ljava/lang/String; = "parent_path"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final SPACE_ID:Ljava/lang/String; = "space_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "dentry_version"

.field public static final TEMP_URL:Ljava/lang/String; = "temp_url"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VERSION_TYPE:Ljava/lang/String; = "version_type"


# instance fields
.field public contentType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "content_type"
    .end annotation
.end field

.field public createTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x9
        name = "create_time"
    .end annotation
.end field

.field public creatorEmail:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xb
        name = "create_email"
    .end annotation
.end field

.field public creatorNick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xc
        name = "create_nick"
    .end annotation
.end field

.field public dentryId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        index = true
        name = "dentry_id"
    .end annotation
.end field

.field public dirty:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x12
        name = "dirty"
    .end annotation
.end field

.field public downloadedSize:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x14
        name = "downloaded_size"
    .end annotation
.end field

.field public extension:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "extension"
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

.field public localUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x11
        name = "local_url"
    .end annotation
.end field

.field public modifiedTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xa
        name = "modified_time"
    .end annotation
.end field

.field public modifierEmail:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xd
        name = "modifier_email"
    .end annotation
.end field

.field public modifierNick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xe
        name = "modifier_nick"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "name"
    .end annotation
.end field

.field public parentPath:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x13
        index = true
        name = "parent_path"
    .end annotation
.end field

.field public path:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        index = true
        name = "path"
    .end annotation
.end field

.field public size:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        name = "size"
    .end annotation
.end field

.field public spaceId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        name = "space_id"
    .end annotation
.end field

.field public tempUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x10
        name = "temp_url"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "type"
    .end annotation
.end field

.field public versionType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xf
        name = "version_type"
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
