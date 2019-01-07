.class Lcom/laiwang/protocol/android/Foreground$2;
.super Ljava/lang/Object;
.source "Foreground.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/Foreground;->onActivityStopped(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/protocol/android/Foreground;

.field final synthetic val$activityString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/Foreground;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/Foreground;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/laiwang/protocol/android/Foreground$2;->this$0:Lcom/laiwang/protocol/android/Foreground;

    iput-object p2, p0, Lcom/laiwang/protocol/android/Foreground$2;->val$activityString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    iget-object v2, p0, Lcom/laiwang/protocol/android/Foreground$2;->this$0:Lcom/laiwang/protocol/android/Foreground;

    invoke-static {v2}, Lcom/laiwang/protocol/android/Foreground;->access$200(Lcom/laiwang/protocol/android/Foreground;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/laiwang/protocol/android/Foreground$2;->val$activityString:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 119
    iget-object v2, p0, Lcom/laiwang/protocol/android/Foreground$2;->this$0:Lcom/laiwang/protocol/android/Foreground;

    invoke-static {v2}, Lcom/laiwang/protocol/android/Foreground;->access$200(Lcom/laiwang/protocol/android/Foreground;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string/jumbo v2, "went background"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/laiwang/protocol/android/Foreground$2;->this$0:Lcom/laiwang/protocol/android/Foreground;

    invoke-static {v2}, Lcom/laiwang/protocol/android/Foreground;->access$300(Lcom/laiwang/protocol/android/Foreground;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/Foreground$Listener;

    .line 123
    .local v1, "listener":Lcom/laiwang/protocol/android/Foreground$Listener;
    :try_start_0
    invoke-interface {v1}, Lcom/laiwang/protocol/android/Foreground$Listener;->onBecameBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Listener becameBackground  err"

    invoke-static {v3, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lcom/laiwang/protocol/android/Foreground$Listener;
    :cond_0
    return-void
.end method
