.class public Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "MailReadStatusEntry.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "mailReadStatusCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry$MailReadStatusMigration1;
    }
.end annotation


# static fields
.field public static final ACCOUNT_KEY:Ljava/lang/String; = "accountKey"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MAIL_SERVERID:Ljava/lang/String; = "mailServerId"

.field public static final TABLE_NAME:Ljava/lang/String; = "mailReadStatusCache"

.field public static final TOTAL_COUNT:Ljava/lang/String; = "totalCount"

.field public static final UNKNOWN_COUNT:Ljava/lang/String; = "unknownCount"

.field public static final UNREAD_COUNT:Ljava/lang/String; = "unreadCount"


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

.field public totalCount:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "totalCount"
    .end annotation
.end field

.field public unknownCount:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "unknownCount"
    .end annotation
.end field

.field public unreadCount:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "unreadCount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->mId:J

    .line 23
    return-void
.end method
