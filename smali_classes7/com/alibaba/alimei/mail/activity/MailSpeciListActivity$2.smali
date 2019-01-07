.class final Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity$2;
.super Ljava/lang/Object;
.source "MailSpeciListActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->printStackTrace()V

    .line 100
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->finish()V

    .line 101
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 84
    check-cast p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 2088
    if-nez p1, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->finish()V

    .line 2090
    :goto_0
    return-void

    .line 2092
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;

    iget v2, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lrx;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2093
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSpeciListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    .line 2202
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;Z)V

    goto :goto_0
.end method
