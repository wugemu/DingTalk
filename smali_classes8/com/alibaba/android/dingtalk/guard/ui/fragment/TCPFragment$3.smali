.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$3;
.super Ljava/lang/Object;
.source "TCPFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method
