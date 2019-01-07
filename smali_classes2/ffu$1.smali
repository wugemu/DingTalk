.class final Lffu$1;
.super Landroid/content/BroadcastReceiver;
.source "OrgEmployeeInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lffu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lffu;


# direct methods
.method constructor <init>(Lffu;)V
    .locals 0
    .param p1, "this$0"    # Lffu;

    .prologue
    .line 86
    iput-object p1, p0, Lffu$1;->a:Lffu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 89
    iget-object v1, p0, Lffu$1;->a:Lffu;

    invoke-static {v1}, Lffu;->a(Lffu;)Lfft$a;

    move-result-object v1

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.workapp.org_employee_change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lffu$1;->a:Lffu;

    invoke-static {v1}, Lffu;->a(Lffu;)Lfft$a;

    move-result-object v1

    invoke-interface {v1}, Lfft$a;->a()V

    goto :goto_0

    .line 96
    :cond_2
    const-string/jumbo v1, "com.workapp.org.sync"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lffu$1;->a:Lffu;

    invoke-static {v1}, Lffu;->a(Lffu;)Lfft$a;

    move-result-object v1

    invoke-interface {v1}, Lfft$a;->b()V

    goto :goto_0
.end method
