.class Lcom/laiwang/protocol/android/m$1;
.super Ljava/lang/Object;
.source "LwpConnection.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/m;->a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
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
.field final synthetic a:Lcom/laiwang/protocol/android/m;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/m;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/laiwang/protocol/android/m$1;->a:Lcom/laiwang/protocol/android/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/core/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    .prologue
    .line 504
    return-void
.end method

.method public synthetic on(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 500
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/m$1;->a(Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method
