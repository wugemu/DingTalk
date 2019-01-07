.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$3;
.super Ljava/lang/Object;
.source "SpaceBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$3;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$3;->a:Lcma;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1173
    :cond_0
    return-void
.end method
