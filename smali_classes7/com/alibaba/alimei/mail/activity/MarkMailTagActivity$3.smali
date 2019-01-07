.class final Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$3;
.super Ljava/lang/Object;
.source "MarkMailTagActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 511
    const-string/jumbo v0, "MarkMailTagActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 512
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 493
    check-cast p1, Ljava/lang/Boolean;

    .line 1496
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1500
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1501
    sget v0, Laxo$i;->dd_cmail_token_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1502
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->f(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V

    .line 1506
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->finish()V

    .line 493
    :cond_0
    return-void

    .line 1504
    :cond_1
    sget v0, Laxo$i;->dd_cmail_token_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method
