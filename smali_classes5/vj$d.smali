.class final Lvj$d;
.super Lvj$h;
.source "MimeUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Lvs;

.field b:Lcom/alibaba/alimei/emailcommon/mail/Message;


# direct methods
.method public constructor <init>(Lvs;Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 0
    .param p1, "containerPart"    # Lvs;
    .param p2, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 4010
    invoke-direct {p0}, Lvj$h;-><init>()V

    .line 4011
    iput-object p1, p0, Lvj$d;->a:Lvs;

    .line 4012
    iput-object p2, p0, Lvj$d;->b:Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 4013
    return-void
.end method
