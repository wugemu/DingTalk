.class final Lcom/alibaba/android/user/external/list/ExternalSearchActivity$7;
.super Ljava/lang/Object;
.source "ExternalSearchActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    .line 211
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$7;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$7;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->g(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$7;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->f(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$7;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->g(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$7;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->f(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method
