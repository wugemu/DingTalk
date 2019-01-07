.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$1;
.super Ljava/lang/Object;
.source "WifiFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 126
    return-void
.end method
