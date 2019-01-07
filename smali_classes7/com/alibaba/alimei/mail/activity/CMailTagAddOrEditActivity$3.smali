.class final Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$3;
.super Ljava/lang/Object;
.source "CMailTagAddOrEditActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;
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
        "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 254
    const-string/jumbo v0, "CMailTagAddOrEditActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 255
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->dismissLoadingDialog()V

    .line 259
    sget v0, Laxo$i;->dt_cmail_create_fail:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 260
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->finish()V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 241
    .line 1244
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->dismissLoadingDialog()V

    .line 1248
    sget v0, Laxo$i;->dt_cmail_create_success:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 1249
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->finish()V

    .line 241
    :cond_0
    return-void
.end method
