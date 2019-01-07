.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$20;
.super Ljava/lang/Object;
.source "BleTestFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;ILjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$20;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    iput p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$20;->a:I

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$20;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 213
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$20;->a:I

    if-ge v1, v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$20;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->j(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$20;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$20;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "times:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$20;->b:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 220
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 225
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
