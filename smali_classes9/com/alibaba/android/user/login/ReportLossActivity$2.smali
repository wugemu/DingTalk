.class final Lcom/alibaba/android/user/login/ReportLossActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ReportLossActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/ReportLossActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ReportLossActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ReportLossActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/ReportLossActivity;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/alibaba/android/user/login/ReportLossActivity$2;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 518
    const-string/jumbo v0, "com.workapp.select.area"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/alibaba/android/user/login/ReportLossActivity$2;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "code"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->b(Lcom/alibaba/android/user/login/ReportLossActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/alibaba/android/user/login/ReportLossActivity$2;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    const-string/jumbo v1, "name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->c(Lcom/alibaba/android/user/login/ReportLossActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lcom/alibaba/android/user/login/ReportLossActivity$2;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/ReportLossActivity;->u(Lcom/alibaba/android/user/login/ReportLossActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/ReportLossActivity$2;->a:Lcom/alibaba/android/user/login/ReportLossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ReportLossActivity;->t(Lcom/alibaba/android/user/login/ReportLossActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    :cond_0
    return-void
.end method
