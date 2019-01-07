.class final Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;
.super Ljava/lang/Object;
.source "MyConnectionsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

.field final synthetic b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;->b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 462
    check-cast p1, Ljava/util/List;

    .line 1465
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;->b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->f(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, v0}, Lflw;->b(Ljava/util/List;Ljava/util/Map;)V

    .line 1467
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;->b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->g(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)V

    .line 1468
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    if-eqz v0, :cond_0

    .line 1469
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;->b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;->b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-interface {v1, v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;->a(I)V

    .line 462
    :cond_0
    return-void

    .line 1469
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 480
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;->b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->g(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)V

    .line 481
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    if-eqz v0, :cond_0

    .line 482
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;->b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$4;->b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-interface {v1, v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;->a(I)V

    .line 484
    :cond_0
    return-void

    .line 482
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 476
    return-void
.end method
