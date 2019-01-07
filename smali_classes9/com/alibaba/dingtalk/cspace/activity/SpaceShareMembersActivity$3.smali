.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$3;
.super Ljava/lang/Object;
.source "SpaceShareMembersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 298
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_filelist_setting_delete_menber"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)V

    .line 301
    return-void
.end method
