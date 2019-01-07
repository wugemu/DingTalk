.class public final Llec;
.super Ljava/lang/Object;
.source "Attribute.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "allowfullscreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "async"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "autofocus"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "checked"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "declare"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "defer"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "disabled"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "formnovalidate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "hidden"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "inert"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "ismap"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "itemscope"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "multiple"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "muted"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "nohref"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "noresize"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "noshade"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "novalidate"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "nowrap"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "open"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "readonly"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "required"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "reversed"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "seamless"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "selected"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "sortable"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "truespeed"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "typemustmatch"

    aput-object v2, v0, v1

    sput-object v0, Llec;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lleb;->a(Ljava/lang/String;)V

    .line 31
    invoke-static {p2}, Lleb;->a(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llec;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Llec;->b:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()Llec;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 150
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llec;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 6
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 83
    iget-object v0, p0, Llec;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    const-string/jumbo v0, ""

    iget-object v1, p0, Llec;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llec;->b:Ljava/lang/String;

    iget-object v1, p0, Llec;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1448
    :cond_0
    iget-object v0, p2, Lorg/jsoup/nodes/Document$OutputSettings;->e:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 1122
    sget-object v1, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v0, v1, :cond_2

    sget-object v0, Llec;->c:[Ljava/lang/String;

    iget-object v1, p0, Llec;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    move v0, v3

    .line 84
    :goto_0
    if-nez v0, :cond_1

    .line 85
    const-string/jumbo v0, "=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Llec;->b:Ljava/lang/String;

    move-object v0, p1

    move-object v2, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lorg/jsoup/nodes/Entities;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V

    .line 87
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :cond_1
    return-void

    :cond_2
    move v0, v4

    .line 1122
    goto :goto_0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Llec;->a()Llec;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    if-ne p0, p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 130
    :cond_1
    instance-of v3, p1, Llec;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 132
    check-cast v0, Llec;

    .line 134
    .local v0, "attribute":Llec;
    iget-object v3, p0, Llec;->a:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Llec;->a:Ljava/lang/String;

    iget-object v4, v0, Llec;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Llec;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 135
    :cond_5
    iget-object v3, p0, Llec;->b:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Llec;->b:Ljava/lang/String;

    iget-object v4, v0, Llec;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, v0, Llec;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public final bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    .line 5041
    iget-object v0, p0, Llec;->a:Ljava/lang/String;

    .line 12
    return-object v0
.end method

.method public final bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    .line 4058
    iget-object v0, p0, Llec;->b:Ljava/lang/String;

    .line 12
    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v2, p0, Llec;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Llec;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 143
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Llec;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Llec;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 144
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 142
    goto :goto_0
.end method

.method public final synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 3066
    .end local p1    # "x0":Ljava/lang/Object;
    invoke-static {p1}, Lleb;->a(Ljava/lang/Object;)V

    .line 3067
    iget-object v0, p0, Llec;->b:Ljava/lang/String;

    .line 3068
    iput-object p1, p0, Llec;->b:Ljava/lang/String;

    .line 12
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 97
    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2078
    new-instance v1, Lorg/jsoup/nodes/Document;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 2539
    iget-object v1, v1, Lorg/jsoup/nodes/Document;->a:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 2078
    invoke-virtual {p0, v0, v1}, Llec;->a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 2079
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    return-object v0
.end method
