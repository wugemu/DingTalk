.class final Lfzu$38;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 3212
    iput-object p1, p0, Lfzu$38;->a:Ljava/lang/String;

    iput-object p2, p0, Lfzu$38;->b:Ljava/lang/String;

    iput-object p3, p0, Lfzu$38;->c:Ljava/lang/String;

    iput p4, p0, Lfzu$38;->d:I

    iput-object p5, p0, Lfzu$38;->e:Ljava/lang/String;

    iput-object p6, p0, Lfzu$38;->f:Ljava/lang/String;

    iput-object p7, p0, Lfzu$38;->g:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3215
    const-string/jumbo v0, "object_id"

    iget-object v1, p0, Lfzu$38;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3216
    const-string/jumbo v0, "object_container_id"

    iget-object v1, p0, Lfzu$38;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3217
    const-string/jumbo v0, "conv_id"

    iget-object v1, p0, Lfzu$38;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3218
    const-string/jumbo v0, "object_type"

    iget v1, p0, Lfzu$38;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3219
    const-string/jumbo v0, "message_id"

    iget-object v1, p0, Lfzu$38;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3220
    const-string/jumbo v0, "object_name"

    iget-object v1, p0, Lfzu$38;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3221
    iget-object v0, p0, Lfzu$38;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3222
    iget-object v0, p0, Lfzu$38;->g:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3224
    :cond_0
    return-object p1
.end method
