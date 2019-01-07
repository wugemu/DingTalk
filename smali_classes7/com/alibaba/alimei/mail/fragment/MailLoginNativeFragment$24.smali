.class final Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;
.super Ljava/lang/Object;
.source "MailLoginNativeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 2004
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;->e:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object p4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 2008
    packed-switch p2, :pswitch_data_0

    .line 2028
    :goto_0
    return-void

    .line 2847
    :pswitch_0
    const-string/jumbo v0, "mail_mailbind_orglogin_managercofigure_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 2012
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;->e:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;J)V

    goto :goto_0

    .line 2016
    :cond_0
    sget v0, Laxo$i;->dt_cmail_org_info_get_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 2020
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;->e:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2008
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
