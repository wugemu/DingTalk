.class final Lacv$3;
.super Ljava/lang/Object;
.source "CMailListAdapter.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacv;->e()V
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lacv;


# direct methods
.method constructor <init>(Lacv;)V
    .locals 0
    .param p1, "this$0"    # Lacv;

    .prologue
    .line 313
    iput-object p1, p0, Lacv$3;->a:Lacv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 338
    const-string/jumbo v0, "CMailListAdapter queryAllRevokeStatus fail"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 339
    iget-object v0, p0, Lacv$3;->a:Lacv;

    invoke-static {v0}, Lacv;->a(Lacv;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacv$3;->a:Lacv;

    invoke-static {v0}, Lacv;->a(Lacv;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lacv$3;->a:Lacv;

    invoke-virtual {v0}, Lacv;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 313
    check-cast p1, Ljava/util/Map;

    .line 1316
    iget-object v0, p0, Lacv$3;->a:Lacv;

    invoke-static {v0}, Lacv;->a(Lacv;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacv$3;->a:Lacv;

    invoke-static {v0}, Lacv;->a(Lacv;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    iget-object v0, p0, Lacv$3;->a:Lacv;

    invoke-static {v0}, Lacv;->c(Lacv;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lacv$3;->a:Lacv;

    invoke-static {v0}, Lacv;->c(Lacv;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1321
    iget-object v0, p0, Lacv$3;->a:Lacv;

    invoke-static {v0}, Lacv;->c(Lacv;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1324
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1325
    iget-object v0, p0, Lacv$3;->a:Lacv;

    invoke-static {v0}, Lacv;->c(Lacv;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1327
    iget-object v0, p0, Lacv$3;->a:Lacv;

    invoke-static {v0}, Lacv;->d(Lacv;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1329
    iget-object v0, p0, Lacv$3;->a:Lacv;

    invoke-static {v0}, Lacv;->d(Lacv;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1333
    :cond_3
    iget-object v0, p0, Lacv$3;->a:Lacv;

    invoke-virtual {v0}, Lacv;->notifyDataSetChanged()V

    goto :goto_0
.end method
