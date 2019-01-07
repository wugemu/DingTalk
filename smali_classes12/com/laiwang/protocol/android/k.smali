.class public interface abstract Lcom/laiwang/protocol/android/k;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/k$b;,
        Lcom/laiwang/protocol/android/k$a;,
        Lcom/laiwang/protocol/android/k$d;,
        Lcom/laiwang/protocol/android/k$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/laiwang/protocol/android/k$a;

.field public static final b:Lcom/laiwang/protocol/android/k$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/laiwang/protocol/android/k$a;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/k$a;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/k;->a:Lcom/laiwang/protocol/android/k$a;

    .line 196
    new-instance v0, Lcom/laiwang/protocol/android/k$b;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/k$b;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/k;->b:Lcom/laiwang/protocol/android/k$b;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/laiwang/protocol/android/k$c;)V
.end method

.method public abstract a(Ljava/lang/Throwable;)V
.end method

.method public abstract a(Ljava/net/URI;)V
.end method

.method public abstract a(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract a(Ljava/nio/ByteBuffer;Z)V
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract b(Lcom/laiwang/protocol/android/k$c;)V
.end method

.method public abstract c()Ljava/net/URI;
.end method
