.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/android/dingtalk/userbase/ContactInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 1646
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;->a:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1646
    check-cast p1, Ljava/util/List;

    .line 2649
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2652
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 2654
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->z(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2655
    :cond_1
    :goto_0
    return-void

    .line 2657
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Laxo$i;->dt_mail_detail_backtoconv_at_at:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;->a:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 2658
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;->a:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 2659
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 2657
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2660
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9$1;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1679
    :goto_0
    return-void

    .line 1677
    :cond_0
    const-string/jumbo v0, "MailDetailFragment"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->z(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1670
    return-void
.end method
