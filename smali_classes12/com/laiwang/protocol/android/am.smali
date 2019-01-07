.class public Lcom/laiwang/protocol/android/am;
.super Lcom/laiwang/protocol/android/ak;
.source "Pong.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 13
    sget-object v0, Lcom/laiwang/protocol/android/ak$c;->e:Lcom/laiwang/protocol/android/ak$c;

    invoke-direct {p0, p1, v0}, Lcom/laiwang/protocol/android/ak;-><init>(ILcom/laiwang/protocol/android/ak$c;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/laiwang/protocol/android/ak$b;Lcom/laiwang/protocol/android/ak$a;)V
    .locals 0
    .param p1, "header"    # Lcom/laiwang/protocol/android/ak$b;
    .param p2, "body"    # Lcom/laiwang/protocol/android/ak$a;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/laiwang/protocol/android/ak;-><init>(Lcom/laiwang/protocol/android/ak$b;Lcom/laiwang/protocol/android/ak$a;)V

    .line 10
    return-void
.end method
