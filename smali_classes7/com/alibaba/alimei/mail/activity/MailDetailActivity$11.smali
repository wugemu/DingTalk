.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$11;
.super Ljava/lang/Object;
.source "MailDetailActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity;
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
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 400
    const-string/jumbo v0, "MailDetailActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 401
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 387
    check-cast p1, Ljava/util/List;

    .line 1390
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1393
    if-eqz p1, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 387
    :cond_0
    return-void
.end method
