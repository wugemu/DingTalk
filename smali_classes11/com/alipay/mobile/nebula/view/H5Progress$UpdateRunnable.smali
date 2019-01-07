.class Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;
.super Ljava/lang/Object;
.source "H5Progress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/view/H5Progress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateRunnable"
.end annotation


# instance fields
.field private deltaProgress:I

.field private period:I

.field final synthetic this$0:Lcom/alipay/mobile/nebula/view/H5Progress;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/view/H5Progress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/view/H5Progress;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$002(Lcom/alipay/mobile/nebula/view/H5Progress;Z)Z

    .line 168
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->getMax()I

    move-result v6

    .line 169
    .local v6, "max":I
    if-nez v6, :cond_0

    .line 170
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$100(Lcom/alipay/mobile/nebula/view/H5Progress;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$002(Lcom/alipay/mobile/nebula/view/H5Progress;Z)Z

    .line 217
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 175
    .local v0, "currentTime":J
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$200(Lcom/alipay/mobile/nebula/view/H5Progress;)J

    move-result-wide v8

    sub-long v2, v0, v8

    .line 177
    .local v2, "deltaTime":J
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$300(Lcom/alipay/mobile/nebula/view/H5Progress;)J

    move-result-wide v8

    iget v10, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->deltaProgress:I

    int-to-long v10, v10

    mul-long/2addr v8, v10

    int-to-long v10, v6

    div-long v4, v8, v10

    .line 178
    .local v4, "duration":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_1

    .line 179
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$100(Lcom/alipay/mobile/nebula/view/H5Progress;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$002(Lcom/alipay/mobile/nebula/view/H5Progress;Z)Z

    goto :goto_0

    .line 183
    :cond_1
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$400(Lcom/alipay/mobile/nebula/view/H5Progress;)I

    move-result v8

    iget v9, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->deltaProgress:I

    int-to-long v10, v9

    mul-long/2addr v10, v2

    iget-object v9, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 184
    invoke-static {v9}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$300(Lcom/alipay/mobile/nebula/view/H5Progress;)J

    move-result-wide v12

    div-long/2addr v10, v12

    long-to-int v9, v10

    add-int v7, v8, v9

    .line 187
    .local v7, "nextProgress":I
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$500(Lcom/alipay/mobile/nebula/view/H5Progress;)I

    move-result v8

    if-le v7, v8, :cond_5

    .line 188
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->getMax()I

    move-result v8

    if-le v7, v8, :cond_2

    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$600(Lcom/alipay/mobile/nebula/view/H5Progress;)Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 189
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$600(Lcom/alipay/mobile/nebula/view/H5Progress;)Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;->onProgressEnd()V

    .line 192
    :cond_2
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$700(Lcom/alipay/mobile/nebula/view/H5Progress;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 193
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    iget-object v9, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v9}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$700(Lcom/alipay/mobile/nebula/view/H5Progress;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$801(Lcom/alipay/mobile/nebula/view/H5Progress;I)V

    .line 194
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$702(Lcom/alipay/mobile/nebula/view/H5Progress;I)I

    .line 205
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$500(Lcom/alipay/mobile/nebula/view/H5Progress;)I

    move-result v8

    if-le v7, v8, :cond_7

    .line 206
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->getMax()I

    move-result v8

    if-le v7, v8, :cond_4

    .line 207
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$1000(Lcom/alipay/mobile/nebula/view/H5Progress;)V

    .line 209
    :cond_4
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$100(Lcom/alipay/mobile/nebula/view/H5Progress;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$002(Lcom/alipay/mobile/nebula/view/H5Progress;Z)Z

    goto/16 :goto_0

    .line 197
    :cond_5
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$900(Lcom/alipay/mobile/nebula/view/H5Progress;)I

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$600(Lcom/alipay/mobile/nebula/view/H5Progress;)Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 198
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$600(Lcom/alipay/mobile/nebula/view/H5Progress;)Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;->onProgressBegin()V

    .line 201
    :cond_6
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v8, v7}, Lcom/alipay/mobile/nebula/view/H5Progress;->setProgress(I)V

    .line 202
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8, v7}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$902(Lcom/alipay/mobile/nebula/view/H5Progress;I)I

    goto :goto_1

    .line 214
    :cond_7
    iget-object v8, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$100(Lcom/alipay/mobile/nebula/view/H5Progress;)Landroid/os/Handler;

    move-result-object v8

    iget v9, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->period:I

    int-to-long v10, v9

    invoke-virtual {v8, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public setPeriodValue(I)V
    .locals 0
    .param p1, "period"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->period:I

    .line 159
    return-void
.end method

.method public setdeltaProgressValue(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->deltaProgress:I

    .line 163
    return-void
.end method
