.class final Letf$3$1;
.super Ljava/lang/Object;
.source "ContactSearchViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Letf$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Letf$3;


# direct methods
.method constructor <init>(Letf$3;)V
    .locals 0
    .param p1, "this$1"    # Letf$3;

    .prologue
    .line 369
    iput-object p1, p0, Letf$3$1;->a:Letf$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 372
    const-string/jumbo v1, "search_call_demission_colleague_confirm"

    invoke-static {v1}, Letd;->a(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Letf$3$1;->a:Letf$3;

    iget-object v1, v1, Letf$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    instance-of v1, v1, Lcom/alibaba/android/search/model/OrgContactModel;

    if-eqz v1, :cond_2

    .line 375
    iget-object v1, p0, Letf$3$1;->a:Letf$3;

    iget-object v1, v1, Letf$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    check-cast v1, Lcom/alibaba/android/search/model/OrgContactModel;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/OrgContactModel;->getOrgNodeItemObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v0

    .line 376
    .local v0, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p0, Letf$3$1;->a:Letf$3;

    iget-object v1, v1, Letf$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->isRobot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Letf$3$1;->a:Letf$3;

    iget-object v2, v2, Letf$3;->c:Letf;

    iget-object v2, v2, Letf;->a:Landroid/app/Activity;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;J)V

    .line 399
    .end local v0    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 400
    return-void

    .line 380
    .restart local v0    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_1
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v2, p0, Letf$3$1;->a:Letf$3;

    iget-object v2, v2, Letf$3;->c:Letf;

    iget-object v2, v2, Letf;->a:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/user/profile.html"

    new-instance v3, Letf$3$1$1;

    invoke-direct {v3, p0, v0}, Letf$3$1$1;-><init>(Letf$3$1;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 396
    .end local v0    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_2
    const-string/jumbo v1, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ContactSearchViewHolder.CallDemissionColleagueDialog:error model:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Letf$3$1;->a:Letf$3;

    iget-object v3, v3, Letf$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
