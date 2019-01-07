.class Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl$2;
.super Ljava/lang/Object;
.source "LWPService.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;->deviceTokenChanged(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$1:Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl$2;->this$1:Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;

    iput-object p2, p0, Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl$2;->val$id:Ljava/lang/String;

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
    .line 226
    iget-object v0, p0, Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl$2;->this$1:Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;

    iget-object v1, p0, Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl$2;->val$id:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;->access$000(Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;Ljava/lang/String;Lcom/laiwang/protocol/core/Response;)V

    .line 227
    return-void
.end method

.method public bridge synthetic on(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 223
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl$2;->on(Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method
