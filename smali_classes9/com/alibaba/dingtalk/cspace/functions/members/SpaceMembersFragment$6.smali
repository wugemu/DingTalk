.class final Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$6;
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
    .line 186
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$6;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$6;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->j()V

    .line 190
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$6;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a:Lgfe$a;

    invoke-interface {v0}, Lgfe$a;->d()V

    .line 191
    return-void
.end method
