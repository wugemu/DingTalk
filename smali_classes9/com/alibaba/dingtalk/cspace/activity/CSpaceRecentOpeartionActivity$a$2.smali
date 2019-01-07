.class final Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;
.super Ljava/lang/Object;
.source "CSpaceRecentOpeartionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 564
    packed-switch p2, :pswitch_data_0

    .line 588
    :goto_0
    return-void

    .line 567
    :pswitch_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v5, "cspace_recent_more_send_click"

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 568
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v3}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 569
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v3, v3, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v3, v4}, Lgla;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0

    .line 571
    :cond_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;)Lght;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;Lght;I)V

    goto :goto_0

    .line 576
    :pswitch_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "cspace_recent_more_mail_click"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 577
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;)Lght;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;Lght;I)V

    goto :goto_0

    .line 580
    :pswitch_2
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;)Lght;

    move-result-object v5

    iget-object v5, v5, Lght;->i:Ljava/lang/Long;

    if-nez v5, :cond_1

    const-string/jumbo v2, "0"

    .line 581
    .local v2, "spaceId":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;)Lght;

    move-result-object v5

    iget-object v5, v5, Lght;->b:Ljava/lang/Long;

    if-nez v5, :cond_2

    const-string/jumbo v0, "0"

    .line 582
    .local v0, "fileId":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    invoke-static {v6}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;)Lght;

    move-result-object v6

    iget-object v6, v6, Lght;->k:Ljava/lang/Integer;

    .line 1033
    invoke-static {v6, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v6

    .line 582
    if-ne v6, v3, :cond_3

    :goto_3
    invoke-virtual {v5, v2, v0, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, "printUrl":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v4, v4, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v5, v5, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    sget v6, Lfzs$h;->dt_cspace_action_print:I

    invoke-virtual {v5, v6}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 580
    .end local v0    # "fileId":Ljava/lang/String;
    .end local v1    # "printUrl":Ljava/lang/String;
    .end local v2    # "spaceId":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;)Lght;

    move-result-object v5

    iget-object v5, v5, Lght;->i:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 581
    .restart local v2    # "spaceId":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;)Lght;

    move-result-object v5

    iget-object v5, v5, Lght;->b:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .restart local v0    # "fileId":Ljava/lang/String;
    :cond_3
    move v3, v4

    .line 582
    goto :goto_3

    .line 564
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
