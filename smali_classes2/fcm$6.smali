.class final Lfcm$6;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfcm;


# direct methods
.method constructor <init>(Lfcm;)V
    .locals 0
    .param p1, "this$0"    # Lfcm;

    .prologue
    .line 514
    iput-object p1, p0, Lfcm$6;->a:Lfcm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 518
    iget-object v1, p0, Lfcm$6;->a:Lfcm;

    invoke-static {v1}, Lfcm;->b(Lfcm;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 519
    iget-object v1, p0, Lfcm$6;->a:Lfcm;

    iget-object v1, v1, Lfcm;->a:Landroid/app/Activity;

    iget-object v2, p0, Lfcm$6;->a:Lfcm;

    invoke-static {v2}, Lfcm;->b(Lfcm;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-static {v1, v2, v3}, Lfeu;->a(Landroid/app/Activity;J)V

    .line 521
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "connection_on_before_delete_post"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "connection_on_before_delete_post"

    iget-object v2, p0, Lfcm$6;->a:Lfcm;

    invoke-static {v2}, Lfcm;->b(Lfcm;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 523
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 529
    :goto_0
    return-void

    .line 525
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "connection_on_delete_post"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "connection_on_delete_post"

    iget-object v2, p0, Lfcm$6;->a:Lfcm;

    invoke-static {v2}, Lfcm;->b(Lfcm;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 527
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
