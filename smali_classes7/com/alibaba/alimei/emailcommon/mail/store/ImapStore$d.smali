.class final Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$d;
.super Lvf;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 4030
    invoke-direct {p0}, Lvf;-><init>()V

    .line 4031
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 4035
    iput p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$d;->c:I

    .line 4036
    return-void
.end method
