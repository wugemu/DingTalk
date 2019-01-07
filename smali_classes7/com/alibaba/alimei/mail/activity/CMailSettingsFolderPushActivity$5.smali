.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;
.super Ljava/lang/Object;
.source "CMailSettingsFolderPushActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafv;->f(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->getFoldersPushSettings(Ljava/util/List;Lxv;)V

    .line 331
    return-void
.end method
