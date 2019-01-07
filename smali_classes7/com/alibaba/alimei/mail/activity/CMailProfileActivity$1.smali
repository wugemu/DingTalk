.class final Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$1;
.super Ljava/lang/Object;
.source "CMailProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 63
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, ""

    .line 65
    .local v8, "orgName":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 67
    .local v9, "userName":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v7

    .line 68
    .local v7, "currentOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v7, :cond_0

    .line 69
    iget-object v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    .line 70
    iget-object v9, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;

    sget v1, Laxo$i;->dt_mail_invite_mail_subject:I

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v9, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "subject":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;

    sget v1, Laxo$i;->dt_mail_invite_mail_content_without_account:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "content":Ljava/lang/String;
    :goto_0
    const-string/jumbo v0, "mail_content_txt"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcma;)V

    .line 80
    return-void

    .line 76
    .end local v6    # "content":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;

    sget v1, Laxo$i;->dt_mail_invite_mail_content:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v8, v2, v5

    aput-object v9, v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "content":Ljava/lang/String;
    goto :goto_0
.end method
