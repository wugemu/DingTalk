.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 3963
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3966
    if-nez p2, :cond_3

    .line 4759
    const-string/jumbo v5, "mail_attachments_saveto_space_click"

    invoke-static {v5}, Lafe;->a(Ljava/lang/String;)V

    .line 3971
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3973
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->T(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3974
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->T(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 3975
    .local v2, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    iget-object v7, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static {v2}, Lacj;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3976
    invoke-static {v2}, Ltm;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 3977
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v5, v5, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    if-eqz v5, :cond_2

    .line 3978
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v5, v5, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    if-eqz p2, :cond_4

    :goto_1
    invoke-interface {v5, v0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V

    .line 3991
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v2    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_2
    :goto_2
    return-void

    .line 3968
    :cond_3
    if-ne p2, v3, :cond_0

    .line 4763
    const-string/jumbo v5, "mail_attachments_send_click"

    invoke-static {v5}, Lafe;->a(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .restart local v2    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_4
    move v3, v4

    .line 3978
    goto :goto_1

    .line 3985
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v2    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_5
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->b:Ljava/lang/String;

    if-eqz p2, :cond_6

    move v5, v3

    :goto_3
    invoke-static {v6, v7, v5}, Lafh;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3986
    .local v1, "downloadUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v5, v5, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    if-eqz v5, :cond_2

    .line 3987
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v5, v5, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    if-eqz p2, :cond_7

    :goto_4
    invoke-interface {v5, v1, v6, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .end local v1    # "downloadUrl":Ljava/lang/String;
    :cond_6
    move v5, v4

    .line 3985
    goto :goto_3

    .restart local v1    # "downloadUrl":Ljava/lang/String;
    :cond_7
    move v3, v4

    .line 3987
    goto :goto_4
.end method
