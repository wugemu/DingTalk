.class public abstract Lorg/apache/james/mime4j/dom/address/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x8ccbe18f7550292L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final addMailboxesTo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/address/Address;->doAddMailboxesTo(Ljava/util/List;)V

    .line 40
    return-void
.end method

.method protected abstract doAddMailboxesTo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)V"
        }
    .end annotation
.end method
