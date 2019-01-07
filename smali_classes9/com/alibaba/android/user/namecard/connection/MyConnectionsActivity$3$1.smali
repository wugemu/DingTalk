.class final Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$1;
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
    .line 390
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$1;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 393
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$1;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$1;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3$1;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;

    iget-object v2, v2, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$3;->b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Landroid/app/Activity;Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;)V

    .line 394
    return-void
.end method
