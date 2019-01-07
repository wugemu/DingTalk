.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$2;
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
    .line 96
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->i()V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->r()V

    goto :goto_0
.end method
