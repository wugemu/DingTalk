.class public Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "ContactEntry.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "contacts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/contact/db/entry/ContactEntry$ContactExtendMigrate;
    }
.end annotation


# static fields
.field public static final ACCOUNT_KEY:Ljava/lang/String; = "accountKey"

.field public static final ALIASES:Ljava/lang/String; = "aliases"

.field public static final AVATAR_ADDRESS:Ljava/lang/String; = "avatarAddr"

.field public static final CONTACT_TYPE:Ljava/lang/String; = "contactType"

.field public static final DEF_SENDER_MAIL:Ljava/lang/String; = "def_sender_mail"

.field public static final DEF_SENDER_NAME:Ljava/lang/String; = "def_sender_name"

.field public static final DELETED_FLAG:Ljava/lang/String; = "deleted"

.field public static final DIRTY:Ljava/lang/String; = "dirty"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final EXTEND:Ljava/lang/String; = "extend"

.field public static final FOLDERID:Ljava/lang/String; = "folderId"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MOBILE:Ljava/lang/String; = "mobile"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NAMEINJIANPIN:Ljava/lang/String; = "nameInJianPin"

.field public static final NAMEINPINYIN:Ljava/lang/String; = "nameInPinyin"

.field public static final POP_ACCOUNTS:Ljava/lang/String; = "popaccounts"

.field public static final REMARK:Ljava/lang/String; = "remark"

.field public static final SERVERID:Ljava/lang/String; = "serverId"

.field public static final SMTP_ACCOUNTS:Ljava/lang/String; = "smtpaccounts"

.field public static final SORTKEY:Ljava/lang/String; = "sortKey"

.field public static final TABLE_NAME:Ljava/lang/String; = "contacts"


# instance fields
.field public _id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x0
        isAutoincrement = true
        isPrimaryKey = true
        name = "_id"
    .end annotation
.end field

.field public accountKey:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        indexGroups = {
            "index_contacts_accout_contact"
        }
        name = "accountKey"
    .end annotation
.end field

.field public aliases:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xa
        name = "aliases"
    .end annotation
.end field

.field public avatarAddr:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "avatarAddr"
    .end annotation
.end field

.field public contactType:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        indexGroups = {
            "index_contacts_accout_contact"
        }
        name = "contactType"
    .end annotation
.end field

.field public defSendMail:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        name = "def_sender_mail"
    .end annotation
.end field

.field public defSendName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "def_sender_name"
    .end annotation
.end field

.field public deletedFlag:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x10
        defaultValue = "0"
        name = "deleted"
    .end annotation
.end field

.field public dirty:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x11
        defaultValue = "0"
        name = "dirty"
    .end annotation
.end field

.field public email:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "email"
    .end annotation
.end field

.field public extend:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x14
        name = "extend"
    .end annotation
.end field

.field public folderId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xb
        name = "folderId"
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x9
        name = "mobile"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "name"
    .end annotation
.end field

.field public nameInJianpin:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xd
        name = "nameInJianPin"
    .end annotation
.end field

.field public nameInPinyin:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xc
        name = "nameInPinyin"
    .end annotation
.end field

.field public popAccounts:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x12
        name = "popaccounts"
    .end annotation
.end field

.field public remark:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xf
        name = "remark"
    .end annotation
.end field

.field public serverId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        index = true
        name = "serverId"
    .end annotation
.end field

.field public smtpAccounts:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x13
        name = "smtpaccounts"
    .end annotation
.end field

.field public sortKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xe
        name = "sortKey"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    return-void
.end method
