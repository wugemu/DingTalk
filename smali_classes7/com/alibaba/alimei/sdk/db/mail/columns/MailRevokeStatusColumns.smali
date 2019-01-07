.class public Lcom/alibaba/alimei/sdk/db/mail/columns/MailRevokeStatusColumns;
.super Ljava/lang/Object;
.source "MailRevokeStatusColumns.java"


# static fields
.field public static final ACCOUNT_KEY:Ljava/lang/String; = "accountKey"

.field public static final ELAPSED_TIME:Ljava/lang/String; = "elapsedTime"

.field public static final FAILED_MAILADDR_LIST:Ljava/lang/String; = "failedMailAddrList"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final PROCESSED_COUNT:Ljava/lang/String; = "processedCount"

.field public static final SERVER_ID:Ljava/lang/String; = "serverId"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_CANCELED:I = 0x4

.field public static final STATUS_FAILED:I = 0x5

.field public static final STATUS_FINISHED:I = 0x3

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SUBMITTED:I = 0x1

.field public static final STATUS_UNINITED:I = 0x0

.field public static final TABLE_NAME:Ljava/lang/String; = "MailRevokeStatus"

.field public static final TASK_ID:Ljava/lang/String; = "taskId"

.field public static final TOTAL_COUNT:Ljava/lang/String; = "totalCount"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
