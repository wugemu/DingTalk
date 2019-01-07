.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$9;
.super Ljava/lang/Object;
.source "BleTestFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$9;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    iput p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$9;->a:I

    iput p3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$9;->b:I

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
    .line 480
    check-cast p1, Ljava/lang/String;

    .line 1483
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$9;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get secret:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V

    .line 1484
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$9;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$9;->a:I

    iget v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$9;->b:I

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;IILjava/lang/String;)V

    .line 480
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 492
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$9;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get secret error,code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 488
    return-void
.end method
