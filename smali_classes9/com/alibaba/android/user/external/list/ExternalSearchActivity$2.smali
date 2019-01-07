.class final Lcom/alibaba/android/user/external/list/ExternalSearchActivity$2;
.super Ljava/lang/Object;
.source "ExternalSearchActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/view/PageScrollView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$2;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$2;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->a(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Lcom/alibaba/android/user/external/list/ExternalListFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$2;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->a(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Lcom/alibaba/android/user/external/list/ExternalListFragment;

    move-result-object v0

    .line 2149
    invoke-virtual {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    if-nez v1, :cond_1

    .line 2150
    :cond_0
    :goto_0
    return-void

    .line 2153
    :cond_1
    iget-object v1, v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v1}, Lfnq;->f()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v1}, Lfnq;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2154
    iget-boolean v1, v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->k:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->l:Z

    if-eqz v1, :cond_0

    .line 2155
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(ZILjava/lang/Runnable;)V

    goto :goto_0
.end method
