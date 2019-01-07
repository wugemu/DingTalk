.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$2;
.super Ljava/lang/Object;
.source "StaticIpFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 124
    instance-of v2, p1, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    move-object v0, p1

    .line 125
    check-cast v0, Landroid/widget/EditText;

    .line 126
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;Landroid/widget/EditText;Z)V

    .line 130
    .end local v0    # "et":Landroid/widget/EditText;
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 128
    .restart local v0    # "et":Landroid/widget/EditText;
    .restart local v1    # "text":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
