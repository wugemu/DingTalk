.class public abstract Lcom/alibaba/alimei/restfulapi/data/Constants$FolderType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/data/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "FolderType"
.end annotation


# static fields
.field public static final TYPE_CALENDAR:I = 0x8

.field public static final TYPE_CALENDAR_USER:I = 0xd

.field public static final TYPE_CHAT:I = 0x1f

.field public static final TYPE_CONTACT:I = 0x9

.field public static final TYPE_CONTACT_BLACK_LIST:I = 0x10

.field public static final TYPE_CONTACT_PERSONAL_INFO:I = 0x11

.field public static final TYPE_CONTACT_RECENT:I = 0xf

.field public static final TYPE_CONTACT_USER:I = 0xe

.field public static final TYPE_DELETED:I = 0x4

.field public static final TYPE_DOMAIN:I = 0x29

.field public static final TYPE_DRAFT:I = 0x3

.field public static final TYPE_EMAIL_USER:I = 0xc

.field public static final TYPE_IMAP_PARENT:I = -0x4

.field public static final TYPE_INBOX:I = 0x2

.field public static final TYPE_MAIL_READLIST:I = 0x12

.field public static final TYPE_NOTICE:I = 0x1e

.field public static final TYPE_OUTBOX:I = 0x64

.field public static final TYPE_SENT:I = 0x5

.field public static final TYPE_SHARED_CALENDAR:I = 0xd

.field public static final TYPE_SPAM:I = 0x6

.field public static final TYPE_TEAM:I = 0x2a

.field public static final TYPE_TEAM_MEMBER:I = 0x2b

.field public static final TYPE_VOIP:I = 0x63


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/data/Constants;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/data/Constants;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/data/Constants;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Constants$FolderType;->this$0:Lcom/alibaba/alimei/restfulapi/data/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
