.class Lcom/taobao/android/runtime/Dex2OatService$Dex2OatTask;
.super Ljava/lang/Object;
.source "Dex2OatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/runtime/Dex2OatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dex2OatTask"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOutputPathName:Ljava/lang/String;

.field private final mSourcePathName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourcePathName"    # Ljava/lang/String;
    .param p3, "outputPathName"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/taobao/android/runtime/Dex2OatService$Dex2OatTask;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/taobao/android/runtime/Dex2OatService$Dex2OatTask;->mSourcePathName:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lcom/taobao/android/runtime/Dex2OatService$Dex2OatTask;->mOutputPathName:Ljava/lang/String;

    .line 132
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 137
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/taobao/android/runtime/Dex2OatService$Dex2OatTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/taobao/android/runtime/Dex2OatService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "sourcePathName"

    iget-object v3, p0, Lcom/taobao/android/runtime/Dex2OatService$Dex2OatTask;->mSourcePathName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string/jumbo v2, "outputPathName"

    iget-object v3, p0, Lcom/taobao/android/runtime/Dex2OatService$Dex2OatTask;->mOutputPathName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v2, p0, Lcom/taobao/android/runtime/Dex2OatService$Dex2OatTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Dex2OatService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "- Dex2OatService start fail: sourcePathName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/taobao/android/runtime/Dex2OatService$Dex2OatTask;->mSourcePathName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", outputPathName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/android/runtime/Dex2OatService$Dex2OatTask;->mOutputPathName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
