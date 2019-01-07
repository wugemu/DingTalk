.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$3;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

.field final synthetic e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$3;->e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$3;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 400
    new-instance v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-direct {v3}, Lcom/alibaba/android/ding/base/objects/DingLinkObject;-><init>()V

    .line 401
    .local v3, "linkObject":Lcom/alibaba/android/ding/base/objects/DingLinkObject;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, "dingtalk://dingtalkclient/page/managerRoleSetting?orgId="

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    .line 402
    invoke-virtual {v5, v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "url":Ljava/lang/String;
    iput-object v4, v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    .line 404
    sget v5, Lbrx$g;->dt_smartdevice_open_org_permission:I

    invoke-static {v5}, Leda;->a(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    .line 405
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$3;->b:Ljava/lang/String;

    iput-object v5, v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    .line 406
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->mediaId:Ljava/lang/String;

    iput-object v5, v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    .line 407
    sget-object v5, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->CType_OA:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->getValue()I

    move-result v5

    iput v5, v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    .line 409
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$3;->c:Ljava/lang/String;

    .line 411
    .local v1, "content":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>()V

    .line 412
    .local v0, "atteachment":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    sget-object v5, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->LINK:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v5

    iput v5, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 413
    iput-object v3, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 414
    new-instance v5, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v5}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 415
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->d(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Long;

    iget-object v7, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$3;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->uid:J

    .line 416
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v5

    .line 417
    invoke-virtual {v5, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v5

    .line 418
    invoke-virtual {v5, v10}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Z)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 419
    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->e(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v5

    .line 420
    invoke-virtual {v5, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v5

    .line 421
    invoke-virtual {v5, v10}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v5

    .line 1922
    iget-object v2, v5, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 424
    .local v2, "info":Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$3;->e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    .line 425
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$3;->e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->l()Lbsw$c;

    move-result-object v5

    instance-of v5, v5, Lbsz;

    if-eqz v5, :cond_0

    .line 426
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "alpha_request_auth_click"

    invoke-interface {v5, v11, v6, v11}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 428
    :cond_0
    return-void
.end method
