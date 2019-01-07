.class final Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$4;
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
        "Ljava/lang/Boolean;",
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
    .line 275
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 292
    const-string/jumbo v0, "CMailTagAddOrEditActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 293
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->dismissLoadingDialog()V

    .line 297
    sget v0, Laxo$i;->dt_cmail_update_fail:I

    invoke-static {v0}, Lhcn;->a(I)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 275
    check-cast p1, Ljava/lang/Boolean;

    .line 1278
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->dismissLoadingDialog()V

    .line 2022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1282
    if-eqz v0, :cond_1

    .line 1283
    sget v0, Laxo$i;->dt_cmail_update_success:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 1287
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->finish()V

    .line 275
    :cond_0
    return-void

    .line 1285
    :cond_1
    sget v0, Laxo$i;->dt_cmail_update_fail:I

    invoke-static {v0}, Lhcn;->a(I)V

    goto :goto_0
.end method
