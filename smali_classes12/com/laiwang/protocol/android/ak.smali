.class public Lcom/laiwang/protocol/android/ak;
.super Ljava/lang/Object;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/ak$c;,
        Lcom/laiwang/protocol/android/ak$b;,
        Lcom/laiwang/protocol/android/ak$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/laiwang/protocol/android/ak$b;

.field protected b:Lcom/laiwang/protocol/android/ak$a;


# direct methods
.method public constructor <init>(ILcom/laiwang/protocol/android/ak$c;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "type"    # Lcom/laiwang/protocol/android/ak$c;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/laiwang/protocol/android/ak$b;

    iget v1, p2, Lcom/laiwang/protocol/android/ak$c;->f:I

    invoke-direct {v0, p1, v1}, Lcom/laiwang/protocol/android/ak$b;-><init>(II)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ak;->a:Lcom/laiwang/protocol/android/ak$b;

    .line 24
    new-instance v0, Lcom/laiwang/protocol/android/ak$a;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/ak$a;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ak;->b:Lcom/laiwang/protocol/android/ak$a;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/laiwang/protocol/android/ak$b;Lcom/laiwang/protocol/android/ak$a;)V
    .locals 0
    .param p1, "header"    # Lcom/laiwang/protocol/android/ak$b;
    .param p2, "body"    # Lcom/laiwang/protocol/android/ak$a;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/laiwang/protocol/android/ak;->a:Lcom/laiwang/protocol/android/ak$b;

    .line 19
    iput-object p2, p0, Lcom/laiwang/protocol/android/ak;->b:Lcom/laiwang/protocol/android/ak$a;

    .line 20
    return-void
.end method
