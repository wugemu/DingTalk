.class final Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$1;
.super Ljava/lang/Object;
.source "MyConnectionsActivity.java"

# interfaces
.implements Lhln;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$1;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lhlp;)V
    .locals 2
    .param p1, "pageInstance"    # Lhlp;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$1;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Lhlp;)Lhlp;

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$1;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->b(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$1;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Lhlp;

    move-result-object v1

    invoke-interface {v1}, Lhlp;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$1;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Lhlp;

    move-result-object v0

    invoke-interface {v0}, Lhlp;->b()V

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$1;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->c(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$1;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->d(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$1;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)Lhlp;

    move-result-object v0

    invoke-interface {v0}, Lhlp;->c()V

    .line 163
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$1;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$1;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->setContentView(Landroid/view/View;)V

    .line 168
    const-string/jumbo v0, "MyConnectionsActivity"

    const-string/jumbo v1, "async init instance fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method
