.class public Lcom/laiwang/protocol/android/al;
.super Lcom/laiwang/protocol/android/ak;
.source "Ping.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 14
    sget-object v0, Lcom/laiwang/protocol/android/ak$c;->d:Lcom/laiwang/protocol/android/ak$c;

    invoke-direct {p0, p1, v0}, Lcom/laiwang/protocol/android/ak;-><init>(ILcom/laiwang/protocol/android/ak$c;)V

    .line 15
    iget-object v0, p0, Lcom/laiwang/protocol/android/al;->a:Lcom/laiwang/protocol/android/ak$b;

    const/4 v1, 0x1

    iput v1, v0, Lcom/laiwang/protocol/android/ak$b;->e:I

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/laiwang/protocol/android/ak$b;Lcom/laiwang/protocol/android/ak$a;)V
    .locals 2
    .param p1, "header"    # Lcom/laiwang/protocol/android/ak$b;
    .param p2, "body"    # Lcom/laiwang/protocol/android/ak$a;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/laiwang/protocol/android/ak;-><init>(Lcom/laiwang/protocol/android/ak$b;Lcom/laiwang/protocol/android/ak$a;)V

    .line 10
    iget-object v0, p0, Lcom/laiwang/protocol/android/al;->a:Lcom/laiwang/protocol/android/ak$b;

    const/4 v1, 0x1

    iput v1, v0, Lcom/laiwang/protocol/android/ak$b;->e:I

    .line 11
    return-void
.end method
