.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;
.super Ljava/lang/Object;
.source "GroupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 474
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->e(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->e(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-static {v1, v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 499
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->notifyDataSetChanged()V

    .line 500
    return-void

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isAdmin:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->e(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 483
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 485
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V

    .line 486
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->l()Lbsw$c;

    move-result-object v1

    instance-of v1, v1, Lbsz;

    if-eqz v1, :cond_2

    .line 487
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "GroupFragment"

    const-string/jumbo v3, "alpha_request_auth_enter"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 490
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 491
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "device_type"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string/jumbo v1, "device_server"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string/jumbo v1, "_field_event_id"

    const-string/jumbo v2, "2101"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2q0r.11900333.1.unauth_set_org"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Page_Smart_Device_Set_Org"

    const-string/jumbo v3, "Page_Smart_Device_Set_Org_Button-unauth_set_org"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method
