.class public Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "MailParticipantsEntry.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "mailParticipants"
.end annotation


# static fields
.field public static final ACCOUNT_KEY:Ljava/lang/String; = "accountKey"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MAIL_SERVERID:Ljava/lang/String; = "mailServerId"

.field public static final RECIPIENT_ADDRESS:Ljava/lang/String; = "recpAddr"

.field public static final RECIPIENT_ADDRESS_TYPE:Ljava/lang/String; = "recpAddrType"

.field public static final RECIPIENT_NAME:Ljava/lang/String; = "recpName"

.field public static final RECIPIENT_TYPE:Ljava/lang/String; = "recpType"

.field public static final STATUS:Ljava/lang/String; = "_status"

.field public static final TABLE_NAME:Ljava/lang/String; = "mailParticipants"


# instance fields
.field public accountKey:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        index = true
        name = "accountKey"
    .end annotation
.end field

.field public mId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x0
        isAutoincrement = true
        isPrimaryKey = true
        name = "_id"
    .end annotation
.end field

.field public mailServerId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        name = "mailServerId"
    .end annotation
.end field

.field public recipientAddress:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "recpAddr"
    .end annotation
.end field

.field public recipientAddressType:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "recpAddrType"
    .end annotation
.end field

.field public recipientName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "recpName"
    .end annotation
.end field

.field public recipientType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "recpType"
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "_status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;->mId:J

    .line 17
    return-void
.end method
