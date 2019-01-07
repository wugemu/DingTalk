.class final Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$5;
.super Ljava/lang/Object;
.source "MailComposeSetttingActivity.java"

# interfaces
.implements Lsj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/util/List;
    .locals 1
    .param p1, "component"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->i(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Ljava/util/List;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    .line 324
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->j(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->k(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(I)I
    .locals 1
    .param p1, "component"    # I

    .prologue
    .line 333
    if-nez p1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->l(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)I

    move-result v0

    .line 338
    :goto_0
    return v0

    .line 335
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->m(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)I

    move-result v0

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->n(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)I

    move-result v0

    goto :goto_0
.end method
