.class final Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer$1;
.super Landroid/content/BroadcastReceiver;
.source "BioFragmentContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer$1;->a:Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;

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
    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.alipay.mobile.security.bio.autoclose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer$1;->a:Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->verifyCallBackEvent()V

    .line 127
    const-string/jumbo v1, "verifyCallBackEvent rev"

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer$1;->a:Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->commandFinished()V

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer$1;->a:Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->onReceiveAction(Landroid/content/Intent;)V

    .line 135
    return-void
.end method
