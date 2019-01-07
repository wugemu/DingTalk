.class public Lcom/alibaba/alimei/framework/db/Account;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "Account.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "account"
.end annotation


# static fields
.field public static final CHECK_INTERVAL_NEVER:I = -0x1

.field public static final CHECK_INTERVAL_PING:I = -0x3

.field public static final CHECK_INTERVAL_PUSH:I = -0x2

.field public static final CHECK_INTERVAL_PUSH_HOLD:I = -0x4


# instance fields
.field public accountType:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x15
        defaultValue = "0"
        name = "accountType"
    .end annotation
.end field

.field public audioEnableType:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x11
        defaultValue = "0"
        name = "audioEnableType"
    .end annotation
.end field

.field public downloadContentType:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x10
        defaultValue = "0"
        name = "autoDownloadContentType"
    .end annotation
.end field

.field public extend:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x22
        name = "extend"
    .end annotation
.end field

.field public incomingPassword:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1c
        name = "incoming_password"
    .end annotation
.end field

.field public incomingPort:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x17
        name = "incoming_port"
    .end annotation
.end field

.field public incomingServer:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x16
        name = "incoming_server"
    .end annotation
.end field

.field public incomingSsl:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x18
        name = "incoming_ssl"
    .end annotation
.end field

.field public mAutoViewPicType:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xc
        name = "autoViewPicType"
    .end annotation
.end field

.field public mDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "displayName"
    .end annotation
.end field

.field public mEmailAddress:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        name = "emailAddress"
    .end annotation
.end field

.field public mForwardWithAttachment:Z
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xe
        name = "forwardWithAttach"
    .end annotation
.end field

.field public mHostAuthKeyRecv:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x9
        name = "hostAuthKeyRecv"
    .end annotation
.end field

.field public mHostAuthKeySend:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xa
        name = "hostAuthKeySend"
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

.field public mIsDefault:Z
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "isDefault"
    .end annotation
.end field

.field public mRingtoneUri:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xd
        name = "ringtoneUri"
    .end annotation
.end field

.field public mSenderName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        name = "senderName"
    .end annotation
.end field

.field public mSignature:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xf
        name = "signature"
    .end annotation
.end field

.field public mSyncInterval:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "syncInterval"
    .end annotation
.end field

.field public mSyncKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "syncKey"
    .end annotation
.end field

.field public mTagSyncKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "tagSyncKey"
    .end annotation
.end field

.field public notifyCalendarOn:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x13
        defaultValue = "1"
        name = "notifyCalendarOn"
    .end annotation
.end field

.field public notifyCallOn:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x14
        defaultValue = "1"
        name = "notifyCallOn"
    .end annotation
.end field

.field public notifyMailOn:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x12
        defaultValue = "1"
        name = "notifyMailOn"
    .end annotation
.end field

.field public oauthExpires:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x20
        name = "oauth_expires"
    .end annotation
.end field

.field public oauthLastRefreshTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x21
        name = "oauth_last_refresh_time"
    .end annotation
.end field

.field public oauthRefreshToken:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1f
        name = "oauth_refresh_token"
    .end annotation
.end field

.field public oauthToken:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1e
        name = "oauth_token"
    .end annotation
.end field

.field public senderAddress:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xb
        name = "senderAddress"
    .end annotation
.end field

.field public smtpPassword:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1d
        name = "smtp_password"
    .end annotation
.end field

.field public smtpPort:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1a
        name = "smtp_port"
    .end annotation
.end field

.field public smtpServer:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x19
        name = "smtp_server"
    .end annotation
.end field

.field public smtpSsl:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1b
        name = "smtp_ssl"
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
