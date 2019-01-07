.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/sdk/model/FolderModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 643
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    const-string/jumbo v1, "MultiMailListActivity"

    const-string/jumbo v2, "handleSelectFolder error for activity is destroy"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 648
    const-string/jumbo v1, "MultiMailListActivity"

    const-string/jumbo v2, "handleSelectFolder error for fragment is null"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 651
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->b(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)I

    .line 652
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_2

    .line 653
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 654
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "handle intent tickets time: "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 655
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 656
    const-string/jumbo v1, "more than max handle tickets, return"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 657
    const-string/jumbo v1, "MultiMailListActivity"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 660
    .end local v0    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v1

    .line 3217
    iget-object v2, v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    if-nez v2, :cond_4

    .line 3551
    :cond_3
    const/4 v1, 0x0

    .line 660
    :goto_1
    if-eqz v1, :cond_5

    .line 661
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iget v3, v3, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lrx;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    goto :goto_0

    .line 3221
    :cond_4
    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    .line 3551
    iget-object v1, v1, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    .line 664
    :cond_5
    const-string/jumbo v1, "MultiMailListActivity"

    const-string/jumbo v2, "handleSelectFolder loop for mail menu is not ready"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$43;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    goto/16 :goto_0
.end method
