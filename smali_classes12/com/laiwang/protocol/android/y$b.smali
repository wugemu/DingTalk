.class Lcom/laiwang/protocol/android/y$b;
.super Ljava/lang/Exception;
.source "ClientCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/y;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/y;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/y;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/laiwang/protocol/android/y$b;->a:Lcom/laiwang/protocol/android/y;

    .line 298
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 299
    return-void
.end method
