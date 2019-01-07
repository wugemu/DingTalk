.class final Lewf$4;
.super Lbzd;
.source "SystemCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewf;->b(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lewf$4;->a:Ljava/lang/String;

    iput-object p2, p0, Lewf$4;->b:Landroid/app/Activity;

    iput p3, p0, Lewf$4;->c:I

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 178
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lewf;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Make call to "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lewf$4;->a:Ljava/lang/String;

    invoke-static {v5}, Leyv;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lewf$4;->b:Landroid/app/Activity;

    iget-object v2, p0, Lewf$4;->a:Ljava/lang/String;

    iget v3, p0, Lewf$4;->c:I

    invoke-static {v1, v2, v3}, Lcpj;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CREATE_SYSCALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lewf$4;->b:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 184
    return-void
.end method

.method public final onDenied()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lewf$4;->b:Landroid/app/Activity;

    invoke-static {v0}, Lewf;->a(Landroid/app/Activity;)V

    .line 189
    return-void
.end method

.method public final onNeverAsk()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lewf$4;->b:Landroid/app/Activity;

    invoke-static {v0}, Lewf;->a(Landroid/app/Activity;)V

    .line 194
    return-void
.end method
