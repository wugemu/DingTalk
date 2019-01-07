.class public Lorg/apache/james/mime4j/dom/address/Group;
.super Lorg/apache/james/mime4j/dom/address/Address;
.source "Group.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mailboxList:Lorg/apache/james/mime4j/dom/address/MailboxList;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "mailboxes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    new-instance v0, Lorg/apache/james/mime4j/dom/address/MailboxList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/dom/address/MailboxList;-><init>(Ljava/util/List;Z)V

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/dom/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/MailboxList;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/MailboxList;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mailboxes"    # Lorg/apache/james/mime4j/dom/address/MailboxList;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/james/mime4j/dom/address/Address;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 46
    :cond_0
    if-nez p2, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 49
    :cond_1
    iput-object p1, p0, Lorg/apache/james/mime4j/dom/address/Group;->name:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/apache/james/mime4j/dom/address/Group;->mailboxList:Lorg/apache/james/mime4j/dom/address/MailboxList;

    .line 51
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Mailbox;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mailboxes"    # [Lorg/apache/james/mime4j/dom/address/Mailbox;

    .prologue
    .line 60
    new-instance v0, Lorg/apache/james/mime4j/dom/address/MailboxList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/dom/address/MailboxList;-><init>(Ljava/util/List;Z)V

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/dom/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/MailboxList;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected doAddMailboxesTo(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    iget-object v1, p0, Lorg/apache/james/mime4j/dom/address/Group;->mailboxList:Lorg/apache/james/mime4j/dom/address/MailboxList;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/dom/address/MailboxList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 90
    .local v0, "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v0    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    :cond_0
    return-void
.end method

.method public getMailboxes()Lorg/apache/james/mime4j/dom/address/MailboxList;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Group;->mailboxList:Lorg/apache/james/mime4j/dom/address/MailboxList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Group;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/apache/james/mime4j/dom/address/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    const/4 v0, 0x1

    .line 100
    .local v0, "first":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/dom/address/Group;->mailboxList:Lorg/apache/james/mime4j/dom/address/MailboxList;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/dom/address/MailboxList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 101
    .local v1, "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 106
    :goto_1
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 104
    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 109
    .end local v1    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    :cond_1
    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
