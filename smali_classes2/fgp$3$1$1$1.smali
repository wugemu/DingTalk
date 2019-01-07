.class final Lfgp$3$1$1$1;
.super Lcmi;
.source "OrgApplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgp$3$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfgp$3$1$1;


# direct methods
.method constructor <init>(Lfgp$3$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lfgp$3$1$1;

    .prologue
    .line 301
    iput-object p1, p0, Lfgp$3$1$1$1;->a:Lfgp$3$1$1;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 313
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 301
    .line 1305
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org_apply_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1306
    const-string/jumbo v1, "list_view_position"

    iget-object v2, p0, Lfgp$3$1$1$1;->a:Lfgp$3$1$1;

    iget-object v2, v2, Lfgp$3$1$1;->b:Lfgp$3$1;

    iget-object v2, v2, Lfgp$3$1;->a:Lfgp$3;

    iget v2, v2, Lfgp$3;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1307
    const-string/jumbo v1, "org_apply_status"

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1308
    iget-object v1, p0, Lfgp$3$1$1$1;->a:Lfgp$3$1$1;

    iget-object v1, v1, Lfgp$3$1$1;->b:Lfgp$3$1;

    iget-object v1, v1, Lfgp$3$1;->a:Lfgp$3;

    iget-object v1, v1, Lfgp$3;->c:Lfgp;

    invoke-static {v1}, Lfgp;->a(Lfgp;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 301
    return-void
.end method
