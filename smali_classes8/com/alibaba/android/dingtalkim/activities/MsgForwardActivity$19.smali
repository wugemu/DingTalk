.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$19;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 385
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->f(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->f(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->f(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method
