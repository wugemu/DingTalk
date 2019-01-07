.class final Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$2;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$2;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

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
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$2;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->c(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$2;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$2;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->c(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$2;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$2;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->c(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$2;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method
