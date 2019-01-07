.class final Lcom/taobao/ma/ui/ScanCombineActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "ScanCombineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/ma/ui/ScanCombineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/ma/ui/ScanCombineActivity;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/ScanCombineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/ScanCombineActivity;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$3;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    if-eqz p2, :cond_0

    sget-object v0, Lhcp;->d:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanCombineActivity$3;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-virtual {v0}, Lcom/taobao/ma/ui/ScanCombineActivity;->finish()V

    .line 190
    :cond_0
    return-void
.end method
