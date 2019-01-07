.class final Lcom/alibaba/android/oa/fragment/CommonOAFragment$12;
.super Ljava/lang/Object;
.source "CommonOAFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/fragment/CommonOAFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/dingtalk/oabase/models/TopPicObject;

.field final synthetic c:Lcom/alibaba/android/oa/fragment/CommonOAFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;ILcom/alibaba/dingtalk/oabase/models/TopPicObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$12;->c:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    iput p2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$12;->a:I

    iput-object p3, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$12;->b:Lcom/alibaba/dingtalk/oabase/models/TopPicObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 486
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 487
    .local v1, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "banner"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$12;->a:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "oa_topbanner_open_click"

    invoke-interface {v3, v4, v5, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 489
    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$12;->b:Lcom/alibaba/dingtalk/oabase/models/TopPicObject;

    iget-object v2, v3, Lcom/alibaba/dingtalk/oabase/models/TopPicObject;->picLink:Ljava/lang/String;

    .line 490
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$12;->c:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v3}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->e(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    invoke-static {v2, v3}, Legf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 491
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 492
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$12;->c:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 494
    return-void
.end method
