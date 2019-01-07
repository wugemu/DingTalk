.class final Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;
.super Ljava/lang/Object;
.source "MailSelectedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/CheckBox;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->d:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->b:Landroid/widget/CheckBox;

    iput p4, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 410
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->d:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->b:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->m(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->d:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->a(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;)Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->d:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->a(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;)Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$a;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 416
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 417
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->d:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->b:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->n(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)[Z

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->c:I

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->d:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->b:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->o(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->d:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->a(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;)Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 421
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 422
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->d:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->b:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->n(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)[Z

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->c:I

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;->d:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->b:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->p(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V

    goto :goto_0
.end method
