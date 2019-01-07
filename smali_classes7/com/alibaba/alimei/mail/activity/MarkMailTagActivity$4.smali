.class final Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$4;
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
    .line 549
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 565
    const-string/jumbo v0, "MarkMailTagActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 566
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->dismissLoadingDialog()V

    .line 570
    sget v0, Laxo$i;->and_delete_error:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 549
    check-cast p1, Ljava/lang/Boolean;

    .line 1552
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->dismissLoadingDialog()V

    .line 1556
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1557
    sget v0, Laxo$i;->dt_common_delete_success:I

    invoke-static {v0}, Lcms;->a(I)V

    :cond_0
    :goto_0
    return-void

    .line 1559
    :cond_1
    sget v0, Laxo$i;->and_delete_error:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method
