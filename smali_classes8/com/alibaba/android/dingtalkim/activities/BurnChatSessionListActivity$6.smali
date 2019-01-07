.class final Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$6;
.super Ljava/lang/Object;
.source "BurnChatSessionListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 245
    check-cast p1, Ljava/lang/Boolean;

    .line 2022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1248
    if-eqz v0, :cond_0

    .line 1249
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    :goto_0
    return-void

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 262
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 263
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 258
    return-void
.end method
