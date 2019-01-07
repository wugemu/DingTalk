.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$14;
.super Ljava/lang/Object;
.source "CSpaceCooperationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$14;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 506
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$14;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lfzu;->a(Landroid/app/Activity;IJLjava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void
.end method
