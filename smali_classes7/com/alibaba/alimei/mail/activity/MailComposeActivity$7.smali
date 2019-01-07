.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;
.super Ljava/lang/Object;
.source "MailComposeActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lafn;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lsm;

.field final synthetic f:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Ljava/util/ArrayList;Lafn;Ljava/lang/String;ILsm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->f:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->b:Lafn;

    iput-object p4, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->c:Ljava/lang/String;

    iput p5, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->d:I

    iput-object p6, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->e:Lsm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1267
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1250
    check-cast p1, Ljava/util/List;

    .line 2253
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->f:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2256
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->b:Lafn;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2257
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2258
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2259
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->a:Ljava/util/ArrayList;

    iget v4, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->d:I

    const/4 v5, -0x1

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->c:Ljava/lang/String;

    invoke-static {v4, v5, v0, v6, v7}, Lafn;->a(IILjava/lang/String;ZLjava/lang/Object;)Lafn;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2262
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->e:Lsm;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lsm;->a(Ljava/util/List;)V

    .line 2263
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->e:Lsm;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;->f:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->c(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsm;->a(Ljava/lang/String;)V

    .line 1250
    :cond_2
    return-void
.end method
