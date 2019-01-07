.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;
.super Ljava/lang/Object;
.source "WifiFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 479
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "ssid":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "passwd":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;Ljava/lang/String;)V

    .line 482
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-static {v2, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;Ljava/lang/String;)V

    .line 483
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;Z)Z

    .line 484
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->i(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;->a:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 488
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;->b:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 489
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->a()V

    .line 490
    return-void
.end method
