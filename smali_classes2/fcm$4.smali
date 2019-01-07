.class final Lfcm$4;
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
.field final synthetic a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

.field final synthetic b:J

.field final synthetic c:Lfcm;


# direct methods
.method constructor <init>(Lfcm;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;J)V
    .locals 1
    .param p1, "this$0"    # Lfcm;

    .prologue
    .line 1388
    iput-object p1, p0, Lfcm$4;->c:Lfcm;

    iput-object p2, p0, Lfcm$4;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iput-wide p3, p0, Lfcm$4;->b:J

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
    .line 1388
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 2391
    iget-object v0, p0, Lfcm$4;->c:Lfcm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfcm;->b(Lfcm;Z)Z

    .line 2392
    iget-object v0, p0, Lfcm$4;->c:Lfcm;

    invoke-static {v0, p1}, Lfcm;->a(Lfcm;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 2393
    iget-object v0, p0, Lfcm$4;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-object v1, p0, Lfcm$4;->c:Lfcm;

    iget-object v1, v1, Lfcm;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lfcm$4;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->onRemoveComment(Landroid/app/Activity;J)V

    .line 2394
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "connection_on_post_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2395
    const-string/jumbo v1, "connection_on_post_changed"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2396
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1388
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1406
    iget-object v0, p0, Lfcm$4;->c:Lfcm;

    invoke-static {v0, v2}, Lfcm;->b(Lfcm;Z)Z

    .line 1407
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "deleteComment error code = "

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ",exception = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lffe;->a(Ljava/lang/String;)V

    .line 1409
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1402
    return-void
.end method
