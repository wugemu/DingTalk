.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$6;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    iput-boolean p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$6;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 360
    .line 1363
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$6;->a:Z

    invoke-static {v0, v1}, Lajj;->a(Ljava/lang/String;Z)V

    .line 1368
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g()V

    .line 1369
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    .line 360
    :cond_0
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
    .line 379
    const-string/jumbo v0, "CMailSettingsFolderPushActivity"

    const-string/jumbo v1, "setCommonUserMailSwitch"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->n(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    .line 381
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g()V

    .line 385
    sget v0, Laxo$i;->connectivity_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 386
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 375
    return-void
.end method
