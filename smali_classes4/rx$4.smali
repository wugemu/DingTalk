.class final Lrx$4;
.super Ljava/lang/Object;
.source "CMailSupport.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lrx$4;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 795
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iget-object v1, p0, Lrx$4;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 796
    .local v0, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    iget-object v1, p0, Lrx$4;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    sget v2, Laxo$i;->dt_mail_reader_profile_reject_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 797
    iget-object v1, p0, Lrx$4;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    sget v2, Laxo$i;->dd_cmail_get_profile_error:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 798
    iget-object v1, p0, Lrx$4;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    sget v2, Laxo$i;->sure:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 799
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 800
    new-instance v1, Lrx$4$1;

    invoke-direct {v1, p0, v0}, Lrx$4$1;-><init>(Lrx$4;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 1271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 806
    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 767
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1770
    iget-object v0, p0, Lrx$4;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1774
    if-nez p1, :cond_1

    .line 1775
    invoke-direct {p0}, Lrx$4;->a()V

    :cond_0
    :goto_0
    return-void

    .line 1777
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lrx$4;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    const-string/jumbo v2, "Mail Detail"

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 788
    iget-object v0, p0, Lrx$4;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    :goto_0
    return-void

    .line 791
    :cond_0
    invoke-direct {p0}, Lrx$4;->a()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 784
    return-void
.end method
