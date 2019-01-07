.class final Lcom/alibaba/android/user/connection/activity/PostPictureActivity$5;
.super Ljava/lang/Object;
.source "PostPictureActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PostPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$5;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 459
    .line 1462
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$5;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {v0}, Lfcm;->c(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 1463
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$5;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-wide v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-virtual {v0, v2, v3}, Lfcn;->c(J)V

    .line 1465
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "connection_on_post_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1466
    const-string/jumbo v1, "connection_on_post_changed"

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$5;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2017
    sget-object v1, Leda;->a:Landroid/content/Context;

    .line 1467
    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 459
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 472
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string/jumbo v0, "Circle"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PostPictureActivity unlike fail "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 478
    return-void
.end method
