.class public Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;
.super Lcom/alibaba/alimei/sdk/db/mail/entry/MailTableEntry;
.source "MailRevokeStatus.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "MailRevokeStatus"
.end annotation


# instance fields
.field public mAccountKey:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        name = "accountKey"
    .end annotation
.end field

.field public mElapsedTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        name = "elapsedTime"
    .end annotation
.end field

.field public mFailedList:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "failedMailAddrList"
    .end annotation
.end field

.field public mProcessCount:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "processedCount"
    .end annotation
.end field

.field public mServerId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        name = "serverId"
    .end annotation
.end field

.field public mStatus:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "status"
    .end annotation
.end field

.field public mTaskId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "taskId"
    .end annotation
.end field

.field public mTotalCount:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "totalCount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/db/mail/entry/MailTableEntry;-><init>()V

    return-void
.end method
