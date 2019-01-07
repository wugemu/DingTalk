.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 9
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1029
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v6}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    const-string/jumbo v6, "basic_SyncMail"

    iget-object v7, p1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "basic_SyncNewMail"

    iget-object v7, p1, Lyc;->a:Ljava/lang/String;

    .line 1033
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1035
    :cond_2
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v6}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->o(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lyb;

    move-result-object v6

    if-eqz v6, :cond_4

    iget v6, p1, Lyc;->c:I

    if-eq v6, v5, :cond_3

    iget v6, p1, Lyc;->c:I

    if-ne v6, v8, :cond_4

    .line 1038
    :cond_3
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v6}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->p(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    .line 1041
    :cond_4
    iget v6, p1, Lyc;->c:I

    if-eq v6, v5, :cond_5

    iget v6, p1, Lyc;->c:I

    if-ne v6, v8, :cond_c

    .line 1043
    :cond_5
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v6}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->q(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1044
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v6}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1045
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v6}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1049
    :cond_6
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v6, v4}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->b(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Z)Z

    .line 1050
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v6}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    .line 1051
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v6}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->s(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    .line 1053
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v6}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->k(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1054
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v6}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->k(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    move-result-object v6

    iget v7, p1, Lyc;->c:I

    if-ne v7, v5, :cond_7

    move v4, v5

    :cond_7
    invoke-interface {v6, v4}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;->a(Z)V

    .line 1057
    :cond_8
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v4

    iget-object v6, p1, Lyc;->b:Ljava/lang/String;

    invoke-interface {v4, v6}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v1

    .line 1059
    .local v1, "isAgentEmail":Z
    iget v4, p1, Lyc;->c:I

    if-ne v4, v5, :cond_b

    .line 1647
    const-string/jumbo v4, "mail_receive_success_click"

    invoke-static {v4}, Lafe;->a(Ljava/lang/String;)V

    .line 1061
    if-eqz v1, :cond_a

    .line 1062
    const-string/jumbo v4, "mail.syncMail.imap"

    const-string/jumbo v6, "AbsCMailFragment"

    invoke-static {v4, v6}, Lafe;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    .end local v1    # "isAgentEmail":Z
    :cond_9
    :goto_1
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->c(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lacv;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1086
    const-string/jumbo v4, "ptcpUnreadCountChanged"

    iget-object v6, p1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1087
    iget v4, p1, Lyc;->c:I

    if-ne v4, v5, :cond_0

    .line 1088
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->c(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lacv;

    move-result-object v0

    .line 1089
    .local v0, "adapter":Lacv;
    if-eqz v0, :cond_0

    .line 1090
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v4}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1093
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6$1;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;Lacv;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1064
    .end local v0    # "adapter":Lacv;
    .restart local v1    # "isAgentEmail":Z
    :cond_a
    const-string/jumbo v4, "mail.syncMail"

    const-string/jumbo v6, "AbsCMailFragment"

    invoke-static {v4, v6}, Lafe;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1071
    :cond_b
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    iget-object v6, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    iget-object v7, p1, Lyc;->b:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;Ljava/lang/String;)V

    .line 1073
    const-string/jumbo v4, "CMailMainFragment.mEventListener"

    iget-object v6, p1, Lyc;->f:Ljava/lang/String;

    iget-object v7, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v4, v6, v7}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1074
    const-string/jumbo v4, "mail.syncMail"

    iget-object v6, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v4, v6}, Lafe;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto :goto_1

    .line 1076
    .end local v1    # "isAgentEmail":Z
    :cond_c
    iget v4, p1, Lyc;->c:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_9

    .line 1077
    iget v2, p1, Lyc;->d:I

    .line 1078
    .local v2, "offset":I
    iget-wide v6, p1, Lyc;->e:J

    long-to-int v3, v6

    .line 1079
    .local v3, "total":I
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v4, v2, v3}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;II)V

    goto :goto_1
.end method
