.class public Lorg/apache/james/mime4j/dom/address/MailboxList;
.super Ljava/util/AbstractList;
.source "MailboxList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lorg/apache/james/mime4j/dom/address/Mailbox;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mailboxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p2, "dontCopy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "mailboxes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 45
    if-eqz p1, :cond_1

    .line 46
    if-eqz p2, :cond_0

    .end local p1    # "mailboxes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    :goto_0
    iput-object p1, p0, Lorg/apache/james/mime4j/dom/address/MailboxList;->mailboxes:Ljava/util/List;

    .line 50
    :goto_1
    return-void

    .line 46
    .restart local p1    # "mailboxes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/dom/address/MailboxList;->mailboxes:Ljava/util/List;

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/address/MailboxList;->get(I)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/MailboxList;->mailboxes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/address/Mailbox;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/MailboxList;->mailboxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
