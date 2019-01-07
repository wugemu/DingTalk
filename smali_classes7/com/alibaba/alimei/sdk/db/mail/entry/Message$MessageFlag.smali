.class public final Lcom/alibaba/alimei/sdk/db/mail/entry/Message$MessageFlag;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageFlag"
.end annotation


# static fields
.field public static final FLAG_CONVERT_INLINE_IMG:I = 0x100000

.field public static final FLAG_FORWARDED:I = 0x80000

.field public static final FLAG_INCOMING_MEETING_CANCEL:I = 0x8

.field public static final FLAG_INCOMING_MEETING_INVITE:I = 0x4

.field public static final FLAG_INCOMING_MEETING_MASK:I = 0xc

.field public static final FLAG_NO:I = 0x0

.field public static final FLAG_NOT_INCLUDE_QUOTED_TEXT:I = 0x20000

.field public static final FLAG_OUTGOING_MEETING_ACCEPT:I = 0x40

.field public static final FLAG_OUTGOING_MEETING_CANCEL:I = 0x20

.field public static final FLAG_OUTGOING_MEETING_DECLINE:I = 0x80

.field public static final FLAG_OUTGOING_MEETING_INVITE:I = 0x10

.field public static final FLAG_OUTGOING_MEETING_TENTATIVE:I = 0x100

.field public static final FLAG_REPLIED_TO:I = 0x40000

.field public static final FLAG_TYPE_FORWARD:I = 0x2

.field public static final FLAG_TYPE_FORWARD_CALENDAR:I = 0x200000

.field public static final FLAG_TYPE_MASK:I = 0x3

.field public static final FLAG_TYPE_REPLY:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method
