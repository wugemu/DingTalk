.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$7;
.super Ljava/lang/Object;
.source "CMailSettingsFolderPushActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Labb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 396
    check-cast p1, Labb;

    .line 1399
    if-eqz p1, :cond_0

    iget-object v0, p1, Labb;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Labb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1400
    iget-object v0, p1, Labb;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laaz;

    .line 1401
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Laaz;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1402
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Laaz;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lajj;->a(Ljava/lang/String;Z)V

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    .line 1409
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g()V

    .line 396
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 418
    const-string/jumbo v0, "CMailSettingsFolderPushActivity"

    const-string/jumbo v1, "getThirdAccountsSubscribeInfo"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g()V

    .line 423
    sget v0, Laxo$i;->connectivity_error:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 414
    return-void
.end method
