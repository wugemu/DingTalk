.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment$1;
.super Ljava/lang/Object;
.source "LanWifiNameFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;Z)V

    .line 103
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;Z)V

    .line 95
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbrx$b;->uidic_global_color_10_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;Z)V

    .line 99
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbrx$b;->_uidic_forms_item_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 80
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 85
    return-void
.end method
