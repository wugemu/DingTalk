.class final Lfbr$3$1$1;
.super Lcmi;
.source "ChannelApplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbr$3$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Lfbr$3$1;


# direct methods
.method constructor <init>(Lfbr$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lfbr$3$1;

    .prologue
    .line 184
    iput-object p1, p0, Lfbr$3$1$1;->a:Lfbr$3$1;

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
    .line 201
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 184
    .line 1188
    iget-object v0, p0, Lfbr$3$1$1;->a:Lfbr$3$1;

    iget-object v0, v0, Lfbr$3$1;->a:Lfbr$3;

    iget-object v0, v0, Lfbr$3;->c:Lfbr;

    invoke-static {v0}, Lfbr;->b(Lfbr;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfbr$3$1$1;->a:Lfbr$3$1;

    iget-object v0, v0, Lfbr$3$1;->a:Lfbr$3;

    iget-object v0, v0, Lfbr$3;->c:Lfbr;

    invoke-static {v0}, Lfbr;->b(Lfbr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lfbr$3$1$1;->a:Lfbr$3$1;

    iget-object v1, v1, Lfbr$3$1;->a:Lfbr$3;

    iget v1, v1, Lfbr$3;->a:I

    if-le v0, v1, :cond_0

    .line 1189
    iget-object v0, p0, Lfbr$3$1$1;->a:Lfbr$3$1;

    iget-object v0, v0, Lfbr$3$1;->a:Lfbr$3;

    iget-object v0, v0, Lfbr$3;->c:Lfbr;

    invoke-static {v0}, Lfbr;->b(Lfbr;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lfbr$3$1$1;->a:Lfbr$3$1;

    iget-object v1, v1, Lfbr$3$1;->a:Lfbr$3;

    iget v1, v1, Lfbr$3;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1190
    iget-object v0, p0, Lfbr$3$1$1;->a:Lfbr$3$1;

    iget-object v0, v0, Lfbr$3$1;->a:Lfbr$3;

    iget-object v0, v0, Lfbr$3;->c:Lfbr;

    invoke-virtual {v0}, Lfbr;->notifyDataSetChanged()V

    .line 1193
    :cond_0
    iget-object v0, p0, Lfbr$3$1$1;->a:Lfbr$3$1;

    iget-object v0, v0, Lfbr$3$1;->a:Lfbr$3;

    iget-object v0, v0, Lfbr$3;->c:Lfbr;

    invoke-static {v0}, Lfbr;->b(Lfbr;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfbr$3$1$1;->a:Lfbr$3$1;

    iget-object v0, v0, Lfbr$3$1;->a:Lfbr$3;

    iget-object v0, v0, Lfbr$3;->c:Lfbr;

    invoke-static {v0}, Lfbr;->b(Lfbr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1194
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.channel_apply_clear_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1195
    iget-object v1, p0, Lfbr$3$1$1;->a:Lfbr$3$1;

    iget-object v1, v1, Lfbr$3$1;->a:Lfbr$3;

    iget-object v1, v1, Lfbr$3;->c:Lfbr;

    invoke-static {v1}, Lfbr;->a(Lfbr;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 184
    :cond_1
    return-void
.end method
