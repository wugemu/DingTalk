.class Lmtopsdk/mtop/common/NetworkListenerAdapter$3;
.super Ljava/lang/Object;
.source "NetworkListenerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/common/NetworkListenerAdapter;->callFinish(Llg$a;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$finishEvent:Llg$a;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/common/NetworkListenerAdapter;Llg$a;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$3;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    iput-object p2, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$3;->val$finishEvent:Llg$a;

    iput-object p3, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$3;->val$context:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 177
    .local v0, "exestart":J
    iget-object v2, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$3;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    iget-object v3, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$3;->val$finishEvent:Llg$a;

    iget-object v4, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$3;->val$context:Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$900(Lmtopsdk/mtop/common/NetworkListenerAdapter;Llg$a;Ljava/lang/Object;)V

    .line 178
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const-string/jumbo v2, "mtopsdk.NetworkListenerAdapter"

    iget-object v3, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$3;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-static {v3}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$100(Lmtopsdk/mtop/common/NetworkListenerAdapter;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[onFinished] execute time[ms] "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method
