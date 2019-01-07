.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$5;
.super Ljava/lang/Object;
.source "CSpaceRecentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$5;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$5;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)V

    .line 414
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$5;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Lgfx;

    move-result-object v0

    invoke-virtual {v0}, Lgfx;->a()V

    .line 415
    return-void
.end method
