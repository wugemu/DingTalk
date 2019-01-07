.class final Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;
.super Ljava/lang/Object;
.source "SpaceAclDesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->e(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v6

    .line 234
    .local v6, "enable":Z
    new-instance v7, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;

    invoke-direct {v7, p0, v6}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;Z)V

    .line 280
    .local v7, "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->showLoadingDialogDelay(J)V

    .line 281
    const-class v0, Lcma;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v7, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    check-cast v7, Lcma;

    .line 282
    .restart local v7    # "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->b(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->f(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)J

    move-result-wide v4

    invoke-virtual/range {v1 .. v7}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;JZLcma;)V

    .line 283
    return-void
.end method
