.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$4;
.super Ljava/lang/Object;
.source "WireFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 121
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->m()Lbsw$b;

    move-result-object v0

    .line 122
    .local v0, "dataSource":Lbsw$b;
    if-eqz v0, :cond_0

    .line 123
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbsw$b;->g(Z)V

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->o()V

    .line 126
    return-void
.end method
