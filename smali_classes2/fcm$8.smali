.class final Lfcm$8;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcov;

.field final synthetic b:Lfcm;


# direct methods
.method constructor <init>(Lfcm;Lcov;)V
    .locals 0
    .param p1, "this$0"    # Lfcm;

    .prologue
    .line 579
    iput-object p1, p0, Lfcm$8;->b:Lfcm;

    iput-object p2, p0, Lfcm$8;->a:Lcov;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 579
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1582
    iget-object v0, p0, Lfcm$8;->b:Lfcm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfcm;->a(Lfcm;Z)Z

    .line 1583
    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->saveLike2DbAsync()V

    .line 1584
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-virtual {v0, v2, v3}, Lfcn;->b(J)V

    .line 1586
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "connection_on_post_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1587
    const-string/jumbo v1, "connection_on_post_changed"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1588
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1590
    iget-object v0, p0, Lfcm$8;->a:Lcov;

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lfcm$8;->a:Lcov;

    invoke-interface {v0, p1}, Lcov;->a(Ljava/lang/Object;)V

    .line 579
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 602
    iget-object v0, p0, Lfcm$8;->b:Lfcm;

    invoke-static {v0, v4}, Lfcm;->a(Lfcm;Z)Z

    .line 603
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "code:"

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    const-string/jumbo v1, ", reason:"

    aput-object v1, v0, v6

    aput-object p2, v0, v2

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 604
    const-string/jumbo v0, "Circle"

    const-string/jumbo v1, "CircleTag"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "like"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 598
    return-void
.end method
