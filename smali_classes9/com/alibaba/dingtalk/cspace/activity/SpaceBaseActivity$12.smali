.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$12;
.super Ljava/lang/Object;
.source "SpaceBaseActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(I)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$12;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 411
    const-string/jumbo v0, "conv_id"

    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$12;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string/jumbo v0, "space_org_id"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$12;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-wide v2, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->m:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 413
    const-string/jumbo v0, "space_id"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$12;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    return-object p1
.end method
