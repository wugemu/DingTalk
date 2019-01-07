.class public Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
.super Lcom/alibaba/alimei/sdk/db/mail/entry/MailTableEntry;
.source "Tag.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "tags"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/sdk/db/mail/entry/Tag$LastVisitTimeMigration;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Tag$AddUnreadTagMigrate;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Tag$CareOrderMigrate;,
        Lcom/alibaba/alimei/sdk/db/mail/entry/Tag$AddDefaultTag;
    }
.end annotation


# instance fields
.field public mAccountKey:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "account_key"
        nullable = false
    .end annotation
.end field

.field public mCareOrder:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xd
        name = "careOrder"
    .end annotation
.end field

.field public mColor:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "color"
    .end annotation
.end field

.field public mCount:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "totle_count"
    .end annotation
.end field

.field public mDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        name = "displayName"
    .end annotation
.end field

.field public mHasMoreMail:Z
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xa
        defaultValue = "1"
        name = "has_more_mail"
    .end annotation
.end field

.field public mHidden:Z
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        defaultValue = "0"
        name = "hidden"
    .end annotation
.end field

.field public mLastSyncTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xc
        name = "last_sync_time"
    .end annotation
.end field

.field public mLastVisitTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xe
        name = "last_visit_time"
    .end annotation
.end field

.field public mOldestSerId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        name = "oldest_server_id"
    .end annotation
.end field

.field public mOldestTimeStamp:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xb
        name = "oldest_time_stamp"
    .end annotation
.end field

.field public mSystemTag:Z
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        defaultValue = "0"
        name = "system_tag"
    .end annotation
.end field

.field public mTagId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        name = "tag_id"
        nullable = false
    .end annotation
.end field

.field public mTimeStamp:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x9
        name = "time_stamp"
    .end annotation
.end field

.field public mUnreadCount:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "unread_count"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/db/mail/entry/MailTableEntry;-><init>()V

    return-void
.end method
