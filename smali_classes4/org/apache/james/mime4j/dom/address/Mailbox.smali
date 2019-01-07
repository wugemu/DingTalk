.class public Lorg/apache/james/mime4j/dom/address/Mailbox;
.super Lorg/apache/james/mime4j/dom/address/Address;
.source "Mailbox.java"


# static fields
.field private static final EMPTY_ROUTE_LIST:Lorg/apache/james/mime4j/dom/address/DomainList;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final domain:Ljava/lang/String;

.field private final localPart:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final route:Lorg/apache/james/mime4j/dom/address/DomainList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lorg/apache/james/mime4j/dom/address/DomainList;

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/dom/address/DomainList;-><init>(Ljava/util/List;Z)V

    sput-object v0, Lorg/apache/james/mime4j/dom/address/Mailbox;->EMPTY_ROUTE_LIST:Lorg/apache/james/mime4j/dom/address/DomainList;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "localPart"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0, v0, p1, p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "route"    # Lorg/apache/james/mime4j/dom/address/DomainList;
    .param p3, "localPart"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lorg/apache/james/mime4j/dom/address/Address;-><init>()V

    .line 58
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 61
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    :cond_3
    iput-object p1, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->name:Ljava/lang/String;

    .line 62
    if-nez p2, :cond_4

    sget-object p2, Lorg/apache/james/mime4j/dom/address/Mailbox;->EMPTY_ROUTE_LIST:Lorg/apache/james/mime4j/dom/address/DomainList;

    .end local p2    # "route":Lorg/apache/james/mime4j/dom/address/DomainList;
    :cond_4
    iput-object p2, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->route:Lorg/apache/james/mime4j/dom/address/DomainList;

    .line 63
    iput-object p3, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    .line 64
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    move-object p4, v0

    .end local p4    # "domain":Ljava/lang/String;
    :cond_6
    iput-object p4, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "baseMailbox"    # Lorg/apache/james/mime4j/dom/address/Mailbox;

    .prologue
    .line 72
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getRoute()Lorg/apache/james/mime4j/dom/address/DomainList;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "route"    # Lorg/apache/james/mime4j/dom/address/DomainList;
    .param p2, "localPart"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method


# virtual methods
.method protected final doAddMailboxesTo(Ljava/util/List;)V
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
    .line 162
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    if-ne p1, p0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    instance-of v3, p1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-nez v3, :cond_2

    move v1, v2

    .line 193
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 194
    check-cast v0, Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 195
    .local v0, "that":Lorg/apache/james/mime4j/dom/address/Mailbox;
    iget-object v3, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    .line 1055
    if-nez v3, :cond_5

    if-nez v4, :cond_4

    move v3, v1

    .line 195
    :goto_1
    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    .line 1066
    if-nez v3, :cond_7

    if-nez v4, :cond_6

    move v3, v1

    .line 196
    :goto_2
    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v3, v2

    .line 1055
    goto :goto_1

    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_6
    move v3, v2

    .line 1066
    goto :goto_2

    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    goto :goto_2
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    .line 156
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRoute()Lorg/apache/james/mime4j/dom/address/DomainList;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->route:Lorg/apache/james/mime4j/dom/address/DomainList;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 168
    const/16 v1, 0x11

    iget-object v2, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-static {v1, v2}, Lktc;->a(ILjava/lang/Object;)I

    move-result v0

    .line 169
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 169
    :goto_0
    invoke-static {v0, v1}, Lktc;->a(ILjava/lang/Object;)I

    move-result v0

    .line 171
    return v0

    .line 170
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
