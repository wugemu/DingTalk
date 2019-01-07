.class public final Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync$SyncType;
.super Ljava/lang/Object;
.source "MessageSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncType"
.end annotation


# static fields
.field public static final MailAdd:I = 0x1

.field public static final MailAddTag:I = 0x6

.field public static final MailAllReadStatus:I = 0x9

.field public static final MailDelete:I = 0x4

.field public static final MailFavoriteStatus:I = 0x3

.field public static final MailMove:I = 0x5

.field public static final MailReadStatus:I = 0x2

.field public static final MailRemoveTag:I = 0x7

.field public static final MailTagHistoryLoad:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method
