.class final Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$3;
.super Ljava/lang/Object;
.source "SpaceMembersFragment.java"

# interfaces
.implements Lgfd$b;


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
    .line 116
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;IZ)V

    .line 125
    return-void
.end method

.method public final a(IZ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "allSelected"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-static {v0, p1, p2}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;IZ)V

    .line 120
    return-void
.end method
