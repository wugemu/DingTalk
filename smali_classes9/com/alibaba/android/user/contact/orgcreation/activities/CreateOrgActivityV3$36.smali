.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;
.super Ljava/lang/Object;
.source "CreateOrgActivityV3.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/model/OrgDetailObject;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/user/model/OrgDetailObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->a:Lcom/alibaba/android/user/model/OrgDetailObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 14
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 548
    const-string/jumbo v7, "contact_create_team_regaindata_ok_click"

    invoke-static {v7}, Lfxo;->a(Ljava/lang/String;)V

    .line 549
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->a:Lcom/alibaba/android/user/model/OrgDetailObject;

    if-nez v7, :cond_1

    .line 550
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->a:Lcom/alibaba/android/user/model/OrgDetailObject;

    iget-object v7, v7, Lcom/alibaba/android/user/model/OrgDetailObject;->members:Ljava/util/List;

    if-eqz v7, :cond_7

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v3, "memberList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->a:Lcom/alibaba/android/user/model/OrgDetailObject;

    iget-object v7, v7, Lcom/alibaba/android/user/model/OrgDetailObject;->members:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 559
    .local v4, "orgMemberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    if-eqz v4, :cond_2

    .line 563
    iget-wide v10, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->c()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-nez v7, :cond_4

    .line 564
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->i(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfla;

    move-result-object v7

    invoke-virtual {v7, v4}, Lfla;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)V

    .line 565
    iget-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 566
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    new-instance v9, Lcom/alibaba/android/user/model/PositionData;

    iget-object v10, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobName:Ljava/lang/String;

    iget-object v11, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lcom/alibaba/android/user/model/PositionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v9}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/user/model/PositionData;)Lcom/alibaba/android/user/model/PositionData;

    .line 567
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v7

    iget-boolean v9, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isCustomJobPosition:Z

    iput-boolean v9, v7, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    .line 568
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->m(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    move-result-object v9

    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v7

    iget-boolean v7, v7, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v7

    iget-object v7, v7, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    :goto_2
    invoke-virtual {v9, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setContent(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v7

    iget-object v7, v7, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    goto :goto_2

    .line 570
    :cond_4
    iget-boolean v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    if-eqz v7, :cond_5

    .line 571
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 573
    :cond_5
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 576
    .end local v4    # "orgMemberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_6
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->i(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfla;

    move-result-object v7

    invoke-virtual {v7, v0}, Lfla;->b(Ljava/util/List;)V

    .line 577
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->i(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfla;

    move-result-object v7

    invoke-virtual {v7, v3}, Lfla;->c(Ljava/util/List;)V

    .line 578
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v8}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->i(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfla;

    move-result-object v8

    invoke-virtual {v8}, Lfla;->a()I

    move-result v8

    .line 3030
    invoke-virtual {v7, v8}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(I)V

    .line 581
    .end local v0    # "adminList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    .end local v3    # "memberList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    :cond_7
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->a:Lcom/alibaba/android/user/model/OrgDetailObject;

    iget-object v8, v8, Lcom/alibaba/android/user/model/OrgDetailObject;->orgInfoObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-static {v7, v8}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 583
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v7

    if-nez v7, :cond_8

    .line 584
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    goto/16 :goto_0

    .line 589
    :cond_8
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v7

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 590
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v8}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;)Ljava/lang/String;

    .line 591
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->o(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfky;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 592
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->o(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfky;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v8}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->p(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lfky;->b(Ljava/lang/String;)V

    .line 597
    :cond_9
    :goto_3
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->o(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfky;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 598
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->o(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfky;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v8}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v8

    iget-wide v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    .line 3162
    iput-wide v8, v7, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->f:J

    .line 602
    :cond_a
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v7

    iget v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    if-eqz v7, :cond_f

    .line 603
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v7

    if-nez v7, :cond_b

    .line 604
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    new-instance v8, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;-><init>()V

    invoke-static {v7, v8}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 606
    :cond_b
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v8}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v8

    iget v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    iput v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    .line 607
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v8}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryDesc:Ljava/lang/String;

    iput-object v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    .line 608
    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v7

    iget v9, v7, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v7

    iget-object v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v7

    iget-object v11, v7, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v7

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->mediaId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    const/4 v7, 0x1

    :goto_4
    invoke-static {v8, v9, v10, v11, v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 614
    :goto_5
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v7

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 616
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v7

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 617
    .local v2, "jsonObject":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    const-string/jumbo v8, "orgScal"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;I)I

    .line 618
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->r(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfks;

    move-result-object v7

    invoke-virtual {v7}, Lfks;->a()Ljava/util/List;

    move-result-object v6

    .line 620
    .local v6, "teamScaleObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    .line 621
    .local v5, "teamScaleObject":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    if-eqz v5, :cond_c

    .line 625
    iget v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->id:I

    iget-object v9, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v9}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)I

    move-result v9

    if-ne v8, v9, :cond_c

    .line 626
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->s(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    move-result-object v7

    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setContent(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 631
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "teamScaleObject":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    .end local v6    # "teamScaleObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;>;"
    :catch_0
    move-exception v1

    .line 632
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "user"

    invoke-static {}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->g()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "json exception "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 594
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_d
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->q(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    goto/16 :goto_3

    .line 608
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 610
    :cond_f
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    goto/16 :goto_5
.end method
