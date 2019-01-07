.class Lcom/laiwang/protocol/android/bt$a;
.super Ljava/lang/Object;
.source "HandlerExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field protected a:J

.field final synthetic b:Lcom/laiwang/protocol/android/bt;

.field private c:Ljava/lang/Runnable;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/bt;Ljava/lang/Runnable;JLjava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/bt;
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "delay"    # J
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/laiwang/protocol/android/bt$a;->b:Lcom/laiwang/protocol/android/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/bt$a;->d:Z

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/laiwang/protocol/android/bt$a;->a:J

    .line 150
    iput-object p2, p0, Lcom/laiwang/protocol/android/bt$a;->c:Ljava/lang/Runnable;

    .line 151
    iput-object p5, p0, Lcom/laiwang/protocol/android/bt$a;->e:Ljava/lang/String;

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/bt$a;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bt$a;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt$a;->c:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/laiwang/protocol/android/bt$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/bt$a;->b:Lcom/laiwang/protocol/android/bt;

    invoke-static {v1}, Lcom/laiwang/protocol/android/bt;->a(Lcom/laiwang/protocol/android/bt;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    iget-boolean v1, p0, Lcom/laiwang/protocol/android/bt$a;->d:Z

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    :goto_1
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/laiwang/protocol/android/bt$a;->d:Z

    .line 164
    iget-object v1, p0, Lcom/laiwang/protocol/android/bt$a;->c:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/laiwang/protocol/android/bt$a;->c:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method
