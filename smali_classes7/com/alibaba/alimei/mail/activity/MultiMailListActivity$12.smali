.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$12;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 336
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;ILjava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 1
    .param p1, "attachmentPanel"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;
    .param p2, "position"    # I
    .param p3, "mailServerId"    # Ljava/lang/String;
    .param p4, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, p4}, Laji;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 298
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;ILjava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/util/List;)V
    .locals 1
    .param p1, "attachmentPanel"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;
    .param p2, "position"    # I
    .param p3, "mailServerId"    # Ljava/lang/String;
    .param p4, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;",
            "I",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p5, "allImageAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    const/4 v0, 0x0

    invoke-static {p1, p3, p4, p5, v0}, Lajn;->a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/util/List;Z)V

    .line 292
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 9
    .param p1, "attachmentPanel"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;
    .param p2, "mailServerId"    # Ljava/lang/String;
    .param p3, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 302
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    .line 303
    .local v4, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    if-eqz p3, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .local v6, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v0, p3, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 306
    sget v7, Laxo$b;->alm_cmail_save_space:I

    new-instance v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$12$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$12$1;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$12;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;)V

    invoke-virtual {v6, v7, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 328
    invoke-virtual {v6, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 329
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 331
    .end local v6    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_0
    return-void
.end method
