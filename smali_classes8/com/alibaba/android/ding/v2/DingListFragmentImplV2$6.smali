.class final Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$6;
.super Ljava/lang/Object;
.source "DingListFragmentImplV2.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 823
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$6;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 823
    .line 1826
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$6;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$6;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    .line 1830
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$6;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->d()V

    .line 1831
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$6;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    .line 823
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$6;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$6;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 836
    return-void
.end method