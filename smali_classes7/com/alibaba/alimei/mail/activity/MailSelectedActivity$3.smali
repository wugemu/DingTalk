.class final Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$3;
.super Ljava/lang/Object;
.source "MailSelectedActivity.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 2
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->d(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->d(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->e(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->f(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V

    .line 186
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 2
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->d(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->f(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V

    .line 193
    return-void
.end method
