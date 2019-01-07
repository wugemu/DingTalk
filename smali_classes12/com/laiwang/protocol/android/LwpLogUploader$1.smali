.class Lcom/laiwang/protocol/android/LwpLogUploader$1;
.super Ljava/lang/Object;
.source "LwpLogUploader.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/LwpLogUploader;->uploadLogAndDel(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Reply",
        "<",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/protocol/android/LwpLogUploader;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/LwpLogUploader;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/LwpLogUploader;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/laiwang/protocol/android/LwpLogUploader$1;->this$0:Lcom/laiwang/protocol/android/LwpLogUploader;

    iput-object p2, p0, Lcom/laiwang/protocol/android/LwpLogUploader$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Lcom/laiwang/protocol/core/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v0

    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/laiwang/protocol/android/LwpLogUploader$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 45
    :cond_0
    return-void
.end method

.method public bridge synthetic on(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/LwpLogUploader$1;->on(Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method
