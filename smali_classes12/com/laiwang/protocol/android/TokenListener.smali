.class public interface abstract Lcom/laiwang/protocol/android/TokenListener;
.super Ljava/lang/Object;
.source "TokenListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/TokenListener$AuthResult;
    }
.end annotation


# virtual methods
.method public abstract authUri()Ljava/lang/String;
.end method

.method public abstract noAuthUris()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract token()Ljava/lang/String;
.end method

.method public abstract tokenAuthResult(Lcom/laiwang/protocol/android/TokenListener$AuthResult;)V
.end method

.method public abstract tokenInvalid()V
.end method

.method public abstract tokenRequired()V
.end method
