.class public interface abstract Lcom/laiwang/protocol/push/CommandHandler$Command;
.super Ljava/lang/Object;
.source "CommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/push/CommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Command"
.end annotation


# virtual methods
.method public abstract doExecute(Ljava/lang/String;Lcom/laiwang/protocol/lang/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/lang/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
