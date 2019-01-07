.class public Lcom/alibaba/alimei/contact/db/views/ViewContactExtent;
.super Lcom/alibaba/alimei/orm/ViewEntry;
.source "ViewContactExtent.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/View;
    from = "contact_extends JOIN mimetypes ON (contact_extends._flag=mimetypes._id) JOIN contacts ON (contact_extends.contactKey=contacts._id)"
    name = "contact_extent_view"
.end annotation


# static fields
.field public static final ACCOUNT_KEY:Ljava/lang/String; = "accountKey"

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTACT_TYPE:Ljava/lang/String; = "contactType"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field static final FROM:Ljava/lang/String; = "contact_extends JOIN mimetypes ON (contact_extends._flag=mimetypes._id) JOIN contacts ON (contact_extends.contactKey=contacts._id)"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MIMETYPE:Ljava/lang/String; = "mimetype"

.field public static final MIMETYPE_VALUE:Ljava/lang/String; = "mimeTypeValue"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SORT_KEY:Ljava/lang/String; = "sortKey"

.field static final VIEW_NAME:Ljava/lang/String; = "contact_extent_view"


# instance fields
.field public _id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "_id"
        columnOrder = 0x1
        name = "_id"
        tableName = "contact_extends"
    .end annotation
.end field

.field public accountKey:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "accountKey"
        columnOrder = 0x9
        name = "accountKey"
        tableName = "contact_extends"
    .end annotation
.end field

.field public aliases:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x10
        name = "aliases"
    .end annotation
.end field

.field public avatarAddr:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0xc
        name = "avatarAddr"
    .end annotation
.end field

.field public contactType:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0xa
        name = "contactType"
    .end annotation
.end field

.field public contact_id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "contact_id"
        columnOrder = 0x2
        name = "_id"
        tableName = "contacts"
    .end annotation
.end field

.field public deleted:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x15
        name = "deleted"
    .end annotation
.end field

.field public email:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0xe
        name = "email"
    .end annotation
.end field

.field public folderId:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x11
        name = "folderId"
    .end annotation
.end field

.field public is_primary:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x3
        name = "dirty"
    .end annotation
.end field

.field public mimeTypeValue:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "mimeTypeValue"
        columnOrder = 0x7
        name = "_value"
        tableName = "contact_extends"
    .end annotation
.end field

.field public mimeType_id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "mimeType_id"
        columnOrder = 0x4
        name = "_flag"
    .end annotation
.end field

.field public mimeType_key:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "mimeType_key"
        columnOrder = 0x5
        name = "_name"
        tableName = "contact_extends"
    .end annotation
.end field

.field public mimetype:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "mimetype"
        columnOrder = 0x6
        name = "mimetype"
        tableName = "mimetypes"
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0xf
        name = "mobile"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0xd
        name = "name"
    .end annotation
.end field

.field public nameInJianPin:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x13
        name = "nameInJianPin"
    .end annotation
.end field

.field public nameInPinyin:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x12
        name = "nameInPinyin"
    .end annotation
.end field

.field public remark:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x14
        name = "remark"
    .end annotation
.end field

.field public serverId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0xb
        name = "serverId"
    .end annotation
.end field

.field public sortKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x8
        name = "sortKey"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/ViewEntry;-><init>()V

    return-void
.end method
