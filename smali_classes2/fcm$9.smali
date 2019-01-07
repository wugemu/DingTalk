.class final Lfcm$9;
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

.field final synthetic b:Lcov;

.field final synthetic c:Lfcm;


# direct methods
.method constructor <init>(Lfcm;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcov;)V
    .locals 0
    .param p1, "this$0"    # Lfcm;

    .prologue
    .line 637
    iput-object p1, p0, Lfcm$9;->c:Lfcm;

    iput-object p2, p0, Lfcm$9;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iput-object p3, p0, Lfcm$9;->b:Lcov;

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
    .line 637
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1640
    iget-object v0, p0, Lfcm$9;->c:Lfcm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfcm;->a(Lfcm;Z)Z

    .line 1641
    iget-object v0, p0, Lfcm$9;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lfcm$9;->c:Lfcm;

    invoke-static {v0, p1}, Lfcm;->a(Lfcm;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1645
    iget-object v0, p0, Lfcm$9;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {v0}, Lfcm;->c(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 1646
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v0

    iget-object v1, p0, Lfcm$9;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-wide v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-virtual {v0, v2, v3}, Lfcn;->c(J)V

    .line 1648
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "connection_on_post_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1649
    const-string/jumbo v1, "connection_on_post_changed"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1650
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1652
    iget-object v0, p0, Lfcm$9;->b:Lcov;

    if-eqz v0, :cond_0

    .line 1653
    iget-object v0, p0, Lfcm$9;->b:Lcov;

    invoke-interface {v0, p1}, Lcov;->a(Ljava/lang/Object;)V

    .line 637
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 664
    iget-object v0, p0, Lfcm$9;->c:Lfcm;

    invoke-static {v0, v4}, Lfcm;->a(Lfcm;Z)Z

    .line 665
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string/jumbo v0, "Circle"

    const-string/jumbo v1, "CircleTag"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "unLike "

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 660
    return-void
.end method
