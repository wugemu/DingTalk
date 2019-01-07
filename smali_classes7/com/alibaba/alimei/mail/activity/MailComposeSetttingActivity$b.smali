.class final Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;
.super Ljava/lang/Object;
.source "MailComposeSetttingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Date;

.field final synthetic d:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "v"    # Ljava/util/Date;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;->d:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;->a:Ljava/lang/String;

    .line 419
    iput-object p3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;->b:Ljava/lang/String;

    .line 420
    iput-object p4, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;->c:Ljava/util/Date;

    .line 421
    return-void
.end method
