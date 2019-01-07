.class public final Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox$MailboxType;
.super Ljava/lang/Object;
.source "Mailbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MailboxType"
.end annotation


# static fields
.field public static final TYPE_CALENDAR:I = 0x41

.field public static final TYPE_CALENDAR_USER:I = 0x46

.field public static final TYPE_CHAT:I = 0x51

.field public static final TYPE_CONTACTS:I = 0x42

.field public static final TYPE_CONTACT_BLACK_LIST:I = 0x49

.field public static final TYPE_CONTACT_PERSONAL_INFO:I = 0x50

.field public static final TYPE_CONTACT_RECENT:I = 0x48

.field public static final TYPE_CONTACT_USER:I = 0x47

.field public static final TYPE_DRAFTS:I = 0x3

.field public static final TYPE_EAS_ACCOUNT_MAILBOX:I = 0x44

.field public static final TYPE_IMAP_PARENT:I = -0x4

.field public static final TYPE_INBOX:I = 0x0

.field public static final TYPE_JUNK:I = 0x7

.field public static final TYPE_MAIL:I = 0x1

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_NOTICE:I = 0x52

.field public static final TYPE_NOT_EMAIL:I = 0x40

.field public static final TYPE_OUTBOX:I = 0x4

.field public static final TYPE_PARENT:I = 0x2

.field public static final TYPE_RECENTLY_READ:I = -0x2

.field public static final TYPE_SEARCH:I = 0x8

.field public static final TYPE_SENT:I = 0x5

.field public static final TYPE_SESSION:I = 0xb

.field public static final TYPE_SHARED_CALENDAR:I = 0x46

.field public static final TYPE_STARRED:I = 0x9

.field public static final TYPE_START:I = -0x3

.field public static final TYPE_TASKS:I = 0x43

.field public static final TYPE_TRASH:I = 0x6

.field public static final TYPE_UNKNOWN:I = 0x45

.field public static final TYPE_UNREAD:I = 0xc

.field public static final TYPE_VOIP:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method
