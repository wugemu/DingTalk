.class public Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
.super Lcom/alibaba/alimei/sdk/db/mail/entry/MailTableEntry;
.source "Attachment.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "Attachment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment$AddImapColumnMigraton;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment$AttachmentMigrationSpace;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment$AttachmentType;
    }
.end annotation


# instance fields
.field public attachmentType:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x11
        name = "attachment_type"
    .end annotation
.end field

.field public contentType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x17
        name = "contentType"
    .end annotation
.end field

.field public mAccountKey:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        name = "accountKey"
    .end annotation
.end field

.field public mAttachmentId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        name = "attachment_id"
    .end annotation
.end field

.field public mContentId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "contentId"
    .end annotation
.end field

.field public mContentUri:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "contentUri"
    .end annotation
.end field

.field public mEncoding:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xc
        name = "encoding"
    .end annotation
.end field

.field public mFileName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "fileName"
    .end annotation
.end field

.field public mFlags:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xd
        name = "flags"
    .end annotation
.end field

.field public mImageHeight:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x9
        name = "image_height"
    .end annotation
.end field

.field public mImageWidth:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xa
        name = "image_width"
    .end annotation
.end field

.field public mLocation:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "location"
    .end annotation
.end field

.field public mMessageKey:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        index = true
        indexName = "idx_attachment_messageKey"
        name = "messageKey"
    .end annotation
.end field

.field public mMimeType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        name = "mimeType"
    .end annotation
.end field

.field public mSize:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "size"
    .end annotation
.end field

.field public mTempLoaction:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xb
        name = "temp_loaction"
    .end annotation
.end field

.field public mUiDestination:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xe
        name = "uiDestination"
    .end annotation
.end field

.field public mUiDownloadedSize:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xf
        name = "uiDownloadedSize"
    .end annotation
.end field

.field public orgId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x15
        name = "oid"
    .end annotation
.end field

.field public originAccount:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x16
        name = "originAccount"
    .end annotation
.end field

.field public originId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x13
        name = "originId"
    .end annotation
.end field

.field public originSpaceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x12
        name = "originSpaceId"
    .end annotation
.end field

.field public originToken:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x14
        name = "originToken"
    .end annotation
.end field

.field public partId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x18
        name = "partId"
    .end annotation
.end field

.field public uiState:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x10
        name = "uiState"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/db/mail/entry/MailTableEntry;-><init>()V

    return-void
.end method
