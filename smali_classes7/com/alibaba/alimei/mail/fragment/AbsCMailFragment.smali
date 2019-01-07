.class public abstract Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;
.super Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;
.source "AbsCMailFragment.java"

# interfaces
.implements Lacm;


# instance fields
.field protected a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field protected b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field protected d:Ladr;

.field protected e:Lafo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lafo",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/View;

.field private g:Lrz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;-><init>()V

    .line 64
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->g:Lrz;

    .line 81
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->e:Lafo;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b:Ljava/util/HashMap;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    .prologue
    const/4 v3, 0x3

    .line 59
    .line 13605
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13608
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 13609
    sget v0, Laxo$i;->dt_cmail_mark:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 13610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13611
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13613
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 13614
    sget v4, Laxo$i;->dt_cmail_follows_tag:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13615
    const/16 v4, 0x35

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13617
    sget v4, Laxo$i;->dt_cmail_complete_tag:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13618
    const/16 v4, 0x37

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13620
    sget v4, Laxo$i;->dt_cmail_cancel_flag_tag:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13621
    const/16 v3, 0x36

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13623
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 13624
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 13625
    new-instance v3, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$3;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$3;-><init>(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 13645
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 59
    .line 9744
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9745
    :cond_0
    :goto_0
    return-void

    .line 10357
    :cond_1
    const-string/jumbo v0, "mail_editmode_del"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 9750
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 9751
    const/4 v0, 0x0

    .line 9752
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 9753
    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 9754
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 9755
    goto :goto_1

    .line 9757
    :cond_2
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$5;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$5;-><init>(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;)V

    .line 11261
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v1

    .line 9775
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->g()Z

    move-result v3

    invoke-virtual {v1, v3, v0, v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->deleteMailByServerId(ZLxv;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 59
    .line 12674
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Ljava/util/List;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 59
    .line 7562
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7563
    :cond_0
    :goto_0
    return-void

    .line 8345
    :cond_1
    const-string/jumbo v0, "mail_editmode_markread"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 7568
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7569
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 7570
    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-eq v3, p2, :cond_2

    .line 7573
    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7576
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 7577
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 7579
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$2;-><init>(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;)V

    .line 9261
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v2

    .line 7597
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->g()Z

    move-result v3

    invoke-virtual {v2, v3, p2, v1, v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->changeMailReadStatus(ZZLxv;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 9
    .param p2, "tagId"    # Ljava/lang/String;
    .param p3, "isAdd"    # Z
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "mailList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const/4 v2, 0x1

    .line 678
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 683
    .local v7, "serverIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 684
    .local v6, "mailModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-nez p4, :cond_3

    invoke-static {v6, p2}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;)Z

    move-result v1

    if-eq v1, p3, :cond_2

    .line 687
    :cond_3
    iget-object v1, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 690
    .end local v6    # "mailModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 691
    .local v5, "serverIdArray":[Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "serverIdArray":[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .line 693
    .restart local v5    # "serverIdArray":[Ljava/lang/String;
    new-instance v4, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$4;

    invoke-direct {v4, p0, p2, p3}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$4;-><init>(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/lang/String;Z)V

    .line 719
    .local v4, "listener":Lxv;, "Lxv<Lxv$a;>;"
    if-eqz p3, :cond_7

    .line 720
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 721
    .local v3, "removeTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "1"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 722
    const-string/jumbo v0, "2"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3261
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v0

    .line 726
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->g()Z

    move-result v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v2, v8

    .line 727
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 726
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->addAndRemoveTag(ZLjava/util/List;Ljava/util/List;Lxv;[Ljava/lang/String;)V

    goto :goto_0

    .line 723
    :cond_6
    const-string/jumbo v0, "2"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 724
    const-string/jumbo v0, "1"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 729
    .end local v3    # "removeTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 730
    .restart local v3    # "removeTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4261
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v0

    .line 731
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->g()Z

    move-result v1

    invoke-virtual {v0, v1, p2, v4, v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->removeMailTag(ZLjava/lang/String;Lxv;[Ljava/lang/String;)V

    .line 733
    const-string/jumbo v0, "1"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 734
    const-string/jumbo v0, "2"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5261
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v0

    .line 738
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->g()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->addAndRemoveTag(ZLjava/util/List;Ljava/util/List;Lxv;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 735
    :cond_9
    const-string/jumbo v0, "2"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 736
    const-string/jumbo v0, "1"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;)Lrz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->g:Lrz;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v1, 0x0

    .line 59
    .line 11649
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11650
    :cond_0
    :goto_0
    return-void

    .line 12353
    :cond_1
    const-string/jumbo v0, "mail_editmode_move"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 12607
    const-string/jumbo v0, "mail_move_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 11656
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->f()Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    move-result-object v0

    .line 11658
    instance-of v2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v2, :cond_3

    .line 11659
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-object v3, v0

    .line 11662
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 11663
    const/4 v0, 0x0

    .line 11664
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 11665
    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    aput-object v0, v5, v2

    .line 11666
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 11667
    goto :goto_2

    .line 11669
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 11670
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->g()Z

    move-result v4

    .line 11669
    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderModel;Z[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, v1

    goto :goto_1
.end method

.method private j()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->F_()Landroid/widget/ListView;

    move-result-object v4

    .line 874
    .local v4, "lv":Landroid/widget/ListView;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    if-nez v7, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 879
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .line 880
    .local v3, "la":Lacv;
    instance-of v7, v0, Lacv;

    if-eqz v7, :cond_4

    move-object v3, v0

    .line 881
    check-cast v3, Lacv;

    .line 891
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 895
    invoke-virtual {v3}, Lacv;->b()Ljava/util/List;

    move-result-object v2

    .line 896
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 900
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 901
    .local v5, "serverIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 902
    .local v1, "item":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v1, :cond_3

    iget-object v8, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 905
    iget-object v8, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 882
    .end local v1    # "item":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v5    # "serverIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    instance-of v7, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v7, :cond_0

    .line 883
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 884
    .local v6, "temp":Landroid/widget/ListAdapter;
    instance-of v7, v6, Lacv;

    if-eqz v7, :cond_2

    move-object v3, v6

    .line 885
    check-cast v3, Lacv;

    goto :goto_1

    .line 907
    .end local v6    # "temp":Landroid/widget/ListAdapter;
    .restart local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v5    # "serverIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v7

    .line 6523
    iput-object v5, v7, Lacr;->h:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private k()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->h()Ljava/util/List;

    move-result-object v2

    .line 934
    .local v2, "selectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 935
    :cond_0
    const/4 v0, 0x0

    .line 946
    :cond_1
    :goto_0
    return v0

    .line 938
    :cond_2
    const/4 v0, 0x0

    .line 939
    .local v0, "hasUnread":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 940
    .local v1, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-boolean v4, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v4, :cond_3

    .line 941
    const/4 v0, 0x1

    .line 942
    goto :goto_0
.end method

.method private l()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 950
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->h()Ljava/util/List;

    move-result-object v2

    .line 952
    .local v2, "selectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 953
    :cond_0
    const/4 v0, 0x0

    .line 964
    :cond_1
    :goto_0
    return v0

    .line 956
    :cond_2
    const/4 v0, 0x0

    .line 957
    .local v0, "hasImportant":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 958
    .local v1, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-static {v1}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 959
    const/4 v0, 0x1

    .line 960
    goto :goto_0
.end method

.method private m()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->h()Ljava/util/List;

    move-result-object v2

    .line 988
    .local v2, "selectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 989
    :cond_0
    const/4 v0, 0x0

    .line 999
    :cond_1
    :goto_0
    return v0

    .line 992
    :cond_2
    const/4 v0, 0x0

    .line 993
    .local v0, "hasUnFlag":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 994
    .local v1, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-static {v1}, Lrx;->b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 995
    const/4 v0, 0x1

    .line 996
    goto :goto_0
.end method


# virtual methods
.method public abstract F_()Landroid/widget/ListView;
.end method

.method public final a(Ladr;)V
    .locals 0
    .param p1, "callback"    # Ladr;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->d:Ladr;

    .line 131
    return-void
.end method

.method protected final a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 10
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 5831
    const-string/jumbo v0, "mail_assist_msg_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 825
    iget-object v8, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->fromAddress:Ljava/lang/String;

    .line 826
    .local v8, "from":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 827
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v0, :cond_5

    .line 828
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 833
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    .line 6126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6128
    const-string/jumbo v2, "msgid"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6129
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6130
    const-string/jumbo v0, "sender"

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6132
    :cond_1
    const-string/jumbo v0, "mail_maillist_cell_click"

    invoke-static {v0, v1}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 834
    :cond_2
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    if-eqz v0, :cond_6

    .line 835
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->d:Ladr;

    if-eqz v0, :cond_4

    .line 836
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->f()Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    move-result-object v6

    .line 837
    .local v6, "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    const/4 v4, 0x0

    .line 838
    .local v4, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    instance-of v0, v6, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v0, :cond_3

    move-object v4, v6

    .line 839
    check-cast v4, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 841
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->d:Ladr;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    iget v5, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    invoke-interface/range {v0 .. v5}, Ladr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderModel;I)V

    .line 870
    .end local v4    # "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v6    # "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    :cond_4
    :goto_1
    return-void

    .line 830
    :cond_5
    const-string/jumbo v8, ""

    goto :goto_0

    .line 845
    :cond_6
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->d:Ladr;

    if-eqz v0, :cond_4

    .line 846
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->f()Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    move-result-object v6

    .line 847
    .restart local v6    # "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    instance-of v0, v6, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v0, :cond_8

    move-object v7, v6

    .line 848
    check-cast v7, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 849
    .local v7, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v7, :cond_8

    .line 851
    invoke-virtual {v7}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    if-eq v0, v5, :cond_4

    .line 855
    :cond_7
    invoke-virtual {v7}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isDraftFolder()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 856
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->d:Ladr;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Ladr;->a(J)V

    goto :goto_1

    .line 862
    .end local v7    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->j()V

    .line 864
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->d:Ladr;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ladr;->a(Ljava/lang/String;)V

    .line 865
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v0, :cond_4

    .line 6261
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v0

    .line 866
    const/4 v1, 0x0

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-virtual {v0, v9, v5, v1, v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->changeMailReadStatus(ZZLxv;[Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final a(Z)V
    .locals 1
    .param p1, "editor"    # Z

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c:Z

    if-ne v0, p1, :cond_0

    .line 921
    :goto_0
    return-void

    .line 915
    :cond_0
    if-eqz p1, :cond_1

    .line 7478
    const-string/jumbo v0, "mail_list_edit_mark_cancel_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 919
    :cond_1
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c:Z

    .line 920
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b(Z)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(Landroid/view/View;)V
.end method

.method protected b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 0
    .param p1, "mailModel"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 929
    return-void
.end method

.method protected b(Z)V
    .locals 0
    .param p1, "editor"    # Z

    .prologue
    .line 927
    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()I
.end method

.method public abstract f()Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.end method

.method protected abstract g()Z
.end method

.method protected h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1039
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lafn;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v12, 0x34

    const/4 v11, 0x0

    .line 1043
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->F()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1044
    const/4 v5, 0x0

    .line 1120
    :goto_0
    return-object v5

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1048
    .local v7, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 1049
    .local v1, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->f()Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    move-result-object v0

    .line 1050
    .local v0, "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    instance-of v9, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v9, :cond_1

    move-object v1, v0

    .line 1051
    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1053
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    .local v5, "menuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lafn;>;"
    if-eqz v1, :cond_3

    .line 1055
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1057
    sget v9, Laxo$i;->icon_delete:I

    sget v10, Laxo$i;->dt_mail_delete:I

    .line 1058
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1057
    invoke-static {v11, v9, v10}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v2

    .line 1060
    .local v2, "deleteItem":Lafn;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1062
    .end local v2    # "deleteItem":Lafn;
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isDraftFolder()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1064
    sget v9, Laxo$i;->icon_delete:I

    sget v10, Laxo$i;->dt_mail_delete:I

    .line 1065
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1064
    invoke-static {v11, v9, v10}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v2

    .line 1066
    .restart local v2    # "deleteItem":Lafn;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1072
    .end local v2    # "deleteItem":Lafn;
    :cond_3
    sget v9, Laxo$i;->icon_delete:I

    sget v10, Laxo$i;->dt_mail_delete:I

    .line 1073
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1072
    invoke-static {v11, v9, v10}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v2

    .line 1077
    .restart local v2    # "deleteItem":Lafn;
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->k()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1078
    const/16 v9, 0x11

    sget v10, Laxo$i;->icon_read:I

    sget v11, Laxo$i;->dt_mail_mark_read:I

    .line 1079
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1078
    invoke-static {v9, v10, v11}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v8

    .line 1085
    .local v8, "tokenItem":Lafn;
    :goto_1
    const/4 v3, 0x0

    .line 1087
    .local v3, "importantItem":Lafn;
    invoke-static {}, Lacg;->f()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1088
    sget v9, Laxo$i;->icon_task:I

    sget v10, Laxo$i;->dt_cmail_follows_tag:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v9, v10}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v4

    .line 1089
    .local v4, "markItem":Lafn;
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->l()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1090
    const/16 v9, 0x2f

    sget v10, Laxo$i;->icon_star_fill:I

    sget v11, Laxo$i;->dt_mail_unfollow:I

    .line 1091
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1090
    invoke-static {v9, v10, v11}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v3

    .line 1105
    :goto_2
    const/4 v9, 0x2

    sget v10, Laxo$i;->icon_move:I

    sget v11, Laxo$i;->dt_mail_move_to:I

    .line 1106
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1105
    invoke-static {v9, v10, v11}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v6

    .line 1108
    .local v6, "moveItem":Lafn;
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    if-eqz v3, :cond_4

    .line 1111
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    :cond_4
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1081
    .end local v3    # "importantItem":Lafn;
    .end local v4    # "markItem":Lafn;
    .end local v6    # "moveItem":Lafn;
    .end local v8    # "tokenItem":Lafn;
    :cond_5
    const/16 v9, 0x12

    sget v10, Laxo$i;->icon_dmail:I

    sget v11, Laxo$i;->dt_mail_mark_unread:I

    .line 1082
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1081
    invoke-static {v9, v10, v11}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v8

    .restart local v8    # "tokenItem":Lafn;
    goto :goto_1

    .line 1093
    .restart local v3    # "importantItem":Lafn;
    .restart local v4    # "markItem":Lafn;
    :cond_6
    const/16 v9, 0x2e

    sget v10, Laxo$i;->icon_star:I

    sget v11, Laxo$i;->dt_mail_follow:I

    .line 1094
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1093
    invoke-static {v9, v10, v11}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v3

    goto :goto_2

    .line 1097
    .end local v4    # "markItem":Lafn;
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->m()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1098
    sget v9, Laxo$i;->icon_task_fill:I

    sget v10, Laxo$i;->dt_cmail_follows_tag:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v9, v10}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v4

    .restart local v4    # "markItem":Lafn;
    goto :goto_2

    .line 1100
    .end local v4    # "markItem":Lafn;
    :cond_8
    const/16 v9, 0x36

    sget v10, Laxo$i;->icon_task:I

    sget v11, Laxo$i;->dt_cmail_cancel_flag_tag:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v4

    .restart local v4    # "markItem":Lafn;
    goto :goto_2
.end method

.method protected k_()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->d()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->f:Landroid/view/View;

    .line 2439
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b:Ljava/util/HashMap;

    sget v2, Laxo$i;->alm_cmail_tag_important_remove:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2440
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b:Ljava/util/HashMap;

    sget v2, Laxo$i;->alm_cmail_tag_important:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2441
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b:Ljava/util/HashMap;

    sget v2, Laxo$i;->alm_cmail_mail_delete:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2442
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b:Ljava/util/HashMap;

    sget v2, Laxo$i;->dt_mail_action_markunread_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2443
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b:Ljava/util/HashMap;

    sget v2, Laxo$i;->dt_mail_action_markread_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2444
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b:Ljava/util/HashMap;

    sget v2, Laxo$i;->dt_mail_action_moveto_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->F_()Landroid/widget/ListView;

    move-result-object v0

    .line 155
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$6;-><init>(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 193
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$7;-><init>(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 233
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->f:Landroid/view/View;

    return-object v1
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method
