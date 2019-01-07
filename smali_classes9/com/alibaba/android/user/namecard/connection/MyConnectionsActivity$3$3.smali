.class final Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$3;
.super Ljava/lang/Object;
.source "MyConnectionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$3;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 416
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$3;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$3;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$3;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$3;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    invoke-interface {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;->a()V

    .line 423
    :cond_1
    :goto_0
    return-void

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$3;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;

    iget-object v1, v0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$3;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$3;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->e(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    invoke-interface {v1, v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
