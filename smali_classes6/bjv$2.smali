.class final Lbjv$2;
.super Ljava/lang/Object;
.source "DingNavUtil.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lbjv$2;->a:Ljava/lang/String;

    iput p2, p0, Lbjv$2;->b:I

    iput-object p3, p0, Lbjv$2;->c:Landroid/os/Bundle;

    iput-boolean p4, p0, Lbjv$2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 477
    const-string/jumbo v0, "ding_id"

    iget-object v1, p0, Lbjv$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string/jumbo v0, "intent_key_ding_biz_type"

    iget v1, p0, Lbjv$2;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    iget-object v0, p0, Lbjv$2;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lbjv$2;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 482
    :cond_0
    iget-boolean v0, p0, Lbjv$2;->d:Z

    if-eqz v0, :cond_1

    .line 483
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 485
    :cond_1
    return-object p1
.end method
