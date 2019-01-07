.class final Lcom/alibaba/android/ding/activity/DingReceiverActivity$7;
.super Ljava/lang/Object;
.source "DingReceiverActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingReceiverActivity;
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
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$7;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 271
    check-cast p1, Ljava/util/List;

    .line 1274
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$7;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;Z)Z

    .line 1275
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$7;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;Ljava/util/List;)V

    .line 271
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$7;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;Z)Z

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$7;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$7;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->c(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;Ljava/util/List;)V

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$7;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->supportInvalidateOptionsMenu()V

    .line 287
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 280
    return-void
.end method
