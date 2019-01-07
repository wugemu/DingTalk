.class final Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$5;
.super Ljava/lang/Object;
.source "SpaceMembersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$5;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

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
    .line 171
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$5;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a:Lgfe$a;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$5;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->f(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lgfe$a;->a(Z)V

    .line 172
    return-void
.end method
