.class public abstract Lantlr/BaseAST;
.super Ljava/lang/Object;
.source "BaseAST.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lny;


# static fields
.field private static tokenNames:[Ljava/lang/String;

.field private static verboseStringConversion:Z


# instance fields
.field protected down:Lantlr/BaseAST;

.field protected right:Lantlr/BaseAST;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lantlr/BaseAST;->verboseStringConversion:Z

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lantlr/BaseAST;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x70

    const/16 v11, 0x6f

    const/16 v10, 0x61

    const/16 v9, 0x74

    const/16 v8, 0x3b

    .line 357
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 358
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 359
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 360
    const/16 v3, 0x26

    if-ne v2, v3, :cond_5

    .line 361
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 362
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 363
    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 364
    add-int/lit8 v5, v0, 0x4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 365
    add-int/lit8 v6, v0, 0x5

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 367
    if-ne v2, v10, :cond_0

    const/16 v7, 0x6d

    if-ne v3, v7, :cond_0

    if-ne v4, v12, :cond_0

    if-ne v5, v8, :cond_0

    .line 368
    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    add-int/lit8 v0, v0, 0x5

    .line 358
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    const/16 v7, 0x6c

    if-ne v2, v7, :cond_1

    if-ne v3, v9, :cond_1

    if-ne v4, v8, :cond_1

    .line 372
    const-string/jumbo v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 375
    :cond_1
    const/16 v7, 0x67

    if-ne v2, v7, :cond_2

    if-ne v3, v9, :cond_2

    if-ne v4, v8, :cond_2

    .line 376
    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 379
    :cond_2
    const/16 v7, 0x71

    if-ne v2, v7, :cond_3

    const/16 v7, 0x75

    if-ne v3, v7, :cond_3

    if-ne v4, v11, :cond_3

    if-ne v5, v9, :cond_3

    if-ne v6, v8, :cond_3

    .line 381
    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    add-int/lit8 v0, v0, 0x6

    goto :goto_1

    .line 384
    :cond_3
    if-ne v2, v10, :cond_4

    if-ne v3, v12, :cond_4

    if-ne v4, v11, :cond_4

    const/16 v2, 0x73

    if-ne v5, v2, :cond_4

    if-ne v6, v8, :cond_4

    .line 386
    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    add-int/lit8 v0, v0, 0x6

    goto :goto_1

    .line 390
    :cond_4
    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 393
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 395
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0
.end method

.method private doWorkForFindAll(Loc;Lny;Z)V
    .locals 1

    .prologue
    .line 86
    .line 87
    :goto_0
    if-eqz p0, :cond_4

    .line 89
    if-eqz p3, :cond_0

    invoke-interface {p0, p2}, Lny;->equalsTreePartial(Lny;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p3, :cond_2

    invoke-interface {p0, p2}, Lny;->equalsTree(Lny;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    :cond_1
    invoke-virtual {p1, p0}, Loc;->a(Ljava/lang/Object;)V

    .line 94
    :cond_2
    invoke-interface {p0}, Lny;->getFirstChild()Lny;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 95
    invoke-interface {p0}, Lny;->getFirstChild()Lny;

    move-result-object v0

    check-cast v0, Lantlr/BaseAST;

    invoke-direct {v0, p1, p2, p3}, Lantlr/BaseAST;->doWorkForFindAll(Loc;Lny;Z)V

    .line 88
    :cond_3
    invoke-interface {p0}, Lny;->getNextSibling()Lny;

    move-result-object p0

    goto :goto_0

    .line 98
    :cond_4
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 400
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 401
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 402
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 403
    sparse-switch v2, :sswitch_data_0

    .line 431
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 401
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :sswitch_0
    const-string/jumbo v2, "&amp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 411
    :sswitch_1
    const-string/jumbo v2, "&lt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 416
    :sswitch_2
    const-string/jumbo v2, "&gt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 421
    :sswitch_3
    const-string/jumbo v2, "&quot;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 426
    :sswitch_4
    const-string/jumbo v2, "&apos;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0

    .line 403
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x27 -> :sswitch_4
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public static getTokenNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lantlr/BaseAST;->tokenNames:[Ljava/lang/String;

    return-object v0
.end method

.method public static setVerboseStringConversion(Z[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 302
    sput-boolean p0, Lantlr/BaseAST;->verboseStringConversion:Z

    .line 303
    sput-object p1, Lantlr/BaseAST;->tokenNames:[Ljava/lang/String;

    .line 304
    return-void
.end method


# virtual methods
.method public addChild(Lny;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lantlr/BaseAST;->down:Lantlr/BaseAST;

    .line 55
    if-eqz v0, :cond_2

    .line 56
    :goto_1
    iget-object v1, v0, Lantlr/BaseAST;->right:Lantlr/BaseAST;

    if-eqz v1, :cond_1

    .line 57
    iget-object v0, v0, Lantlr/BaseAST;->right:Lantlr/BaseAST;

    goto :goto_1

    .line 59
    :cond_1
    check-cast p1, Lantlr/BaseAST;

    iput-object p1, v0, Lantlr/BaseAST;->right:Lantlr/BaseAST;

    goto :goto_0

    .line 62
    :cond_2
    check-cast p1, Lantlr/BaseAST;

    iput-object p1, p0, Lantlr/BaseAST;->down:Lantlr/BaseAST;

    goto :goto_0
.end method

.method public equals(Lny;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 102
    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lny;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lantlr/BaseAST;->getType()I

    move-result v1

    invoke-interface {p1}, Lny;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equalsList(Lny;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 114
    if-nez p1, :cond_2

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    invoke-interface {p0}, Lny;->getNextSibling()Lny;

    move-result-object p0

    invoke-interface {p1}, Lny;->getNextSibling()Lny;

    move-result-object p1

    .line 120
    :cond_2
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 124
    invoke-interface {p0, p1}, Lny;->equals(Lny;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-interface {p0}, Lny;->getFirstChild()Lny;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 129
    invoke-interface {p0}, Lny;->getFirstChild()Lny;

    move-result-object v1

    invoke-interface {p1}, Lny;->getFirstChild()Lny;

    move-result-object v2

    invoke-interface {v1, v2}, Lny;->equalsList(Lny;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 134
    :cond_3
    invoke-interface {p1}, Lny;->getFirstChild()Lny;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 138
    :cond_4
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 139
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equalsListPartial(Lny;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    if-nez p1, :cond_2

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 159
    :cond_1
    invoke-interface {p0}, Lny;->getNextSibling()Lny;

    move-result-object p0

    invoke-interface {p1}, Lny;->getNextSibling()Lny;

    move-result-object p1

    .line 158
    :cond_2
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 161
    invoke-interface {p0, p1}, Lny;->equals(Lny;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 163
    :cond_3
    invoke-interface {p0}, Lny;->getFirstChild()Lny;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 164
    invoke-interface {p0}, Lny;->getFirstChild()Lny;

    move-result-object v2

    invoke-interface {p1}, Lny;->getFirstChild()Lny;

    move-result-object v3

    invoke-interface {v2, v3}, Lny;->equalsListPartial(Lny;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 167
    :cond_4
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    .line 169
    goto :goto_0
.end method

.method public equalsTree(Lny;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, p1}, Lantlr/BaseAST;->equals(Lny;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lantlr/BaseAST;->getFirstChild()Lny;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 183
    invoke-virtual {p0}, Lantlr/BaseAST;->getFirstChild()Lny;

    move-result-object v1

    invoke-interface {p1}, Lny;->getFirstChild()Lny;

    move-result-object v2

    invoke-interface {v1, v2}, Lny;->equalsList(Lny;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 186
    :cond_3
    invoke-interface {p1}, Lny;->getFirstChild()Lny;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public equalsTreePartial(Lny;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    if-nez p1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    invoke-virtual {p0, p1}, Lantlr/BaseAST;->equals(Lny;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p0}, Lantlr/BaseAST;->getFirstChild()Lny;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {p0}, Lantlr/BaseAST;->getFirstChild()Lny;

    move-result-object v2

    invoke-interface {p1}, Lny;->getFirstChild()Lny;

    move-result-object v3

    invoke-interface {v2, v3}, Lny;->equalsListPartial(Lny;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public findAll(Lny;)Lnz;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 215
    new-instance v1, Loc;

    const/16 v0, 0xa

    invoke-direct {v1, v0}, Loc;-><init>(I)V

    .line 219
    if-nez p1, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 225
    :goto_0
    return-object v0

    .line 223
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v0}, Lantlr/BaseAST;->doWorkForFindAll(Loc;Lny;Z)V

    .line 225
    new-instance v0, Loa;

    invoke-direct {v0, v1}, Loa;-><init>(Loc;)V

    goto :goto_0
.end method

.method public findAllPartial(Lny;)Lnz;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 233
    new-instance v1, Loc;

    const/16 v0, 0xa

    invoke-direct {v1, v0}, Loc;-><init>(I)V

    .line 237
    if-nez p1, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    .line 241
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, p1, v0}, Lantlr/BaseAST;->doWorkForFindAll(Loc;Lny;Z)V

    .line 243
    new-instance v0, Loa;

    invoke-direct {v0, v1}, Loa;-><init>(Loc;)V

    goto :goto_0
.end method

.method public getColumn()I
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstChild()Lny;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lantlr/BaseAST;->down:Lantlr/BaseAST;

    return-object v0
.end method

.method public getLine()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public getNextSibling()Lny;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lantlr/BaseAST;->right:Lantlr/BaseAST;

    return-object v0
.end method

.method public getNumberOfChildren()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 68
    iget-object v1, p0, Lantlr/BaseAST;->down:Lantlr/BaseAST;

    .line 70
    if-eqz v1, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 72
    :goto_0
    iget-object v2, v1, Lantlr/BaseAST;->right:Lantlr/BaseAST;

    if-eqz v2, :cond_1

    .line 73
    iget-object v1, v1, Lantlr/BaseAST;->right:Lantlr/BaseAST;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public abstract initialize(ILjava/lang/String;)V
.end method

.method public abstract initialize(Lns;)V
.end method

.method public abstract initialize(Lny;)V
.end method

.method public removeChildren()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lantlr/BaseAST;->down:Lantlr/BaseAST;

    .line 283
    return-void
.end method

.method public setFirstChild(Lny;)V
    .locals 0

    .prologue
    .line 286
    check-cast p1, Lantlr/BaseAST;

    iput-object p1, p0, Lantlr/BaseAST;->down:Lantlr/BaseAST;

    .line 287
    return-void
.end method

.method public setNextSibling(Lny;)V
    .locals 0

    .prologue
    .line 290
    check-cast p1, Lantlr/BaseAST;

    iput-object p1, p0, Lantlr/BaseAST;->right:Lantlr/BaseAST;

    .line 291
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, -0x1

    .line 312
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 314
    sget-boolean v0, Lantlr/BaseAST;->verboseStringConversion:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lantlr/BaseAST;->tokenNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lantlr/BaseAST;->getType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lantlr/BaseAST;->tokenNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lantlr/BaseAST;->getType()I

    move-result v3

    aget-object v0, v0, v3

    const-string/jumbo v3, "\""

    const-string/jumbo v4, "\""

    .line 1080
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1081
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 1082
    if-eq v3, v5, :cond_0

    if-ne v4, v5, :cond_1

    .line 314
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 317
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 318
    invoke-virtual {p0}, Lantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    const-string/jumbo v0, ",<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    sget-object v0, Lantlr/BaseAST;->tokenNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lantlr/BaseAST;->getType()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    const-string/jumbo v0, ">]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_1
    return-object v0

    .line 1083
    :cond_1
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_2
    invoke-virtual {p0}, Lantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public toStringList()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 329
    .line 330
    const-string/jumbo v0, ""

    .line 331
    invoke-interface {p0}, Lny;->getFirstChild()Lny;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/BaseAST;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-interface {p0}, Lny;->getFirstChild()Lny;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 334
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lny;->getFirstChild()Lny;

    move-result-object v0

    check-cast v0, Lantlr/BaseAST;

    invoke-virtual {v0}, Lantlr/BaseAST;->toStringList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_1
    invoke-interface {p0}, Lny;->getFirstChild()Lny;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_2
    invoke-interface {p0}, Lny;->getNextSibling()Lny;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 338
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lny;->getNextSibling()Lny;

    move-result-object v0

    check-cast v0, Lantlr/BaseAST;

    invoke-virtual {v0}, Lantlr/BaseAST;->toStringList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_3
    return-object v0
.end method

.method public toStringTree()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 344
    .line 345
    const-string/jumbo v0, ""

    .line 346
    invoke-interface {p0}, Lny;->getFirstChild()Lny;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/BaseAST;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-interface {p0}, Lny;->getFirstChild()Lny;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 349
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lny;->getFirstChild()Lny;

    move-result-object v0

    check-cast v0, Lantlr/BaseAST;

    invoke-virtual {v0}, Lantlr/BaseAST;->toStringList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_1
    invoke-interface {p0}, Lny;->getFirstChild()Lny;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    :cond_2
    return-object v0
.end method

.method public xmlSerialize(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 466
    move-object v1, p0

    .line 467
    :goto_0
    if-eqz v1, :cond_1

    .line 469
    invoke-interface {v1}, Lny;->getFirstChild()Lny;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 471
    check-cast v0, Lantlr/BaseAST;

    invoke-virtual {v0, p1}, Lantlr/BaseAST;->xmlSerializeNode(Ljava/io/Writer;)V

    .line 468
    :goto_1
    invoke-interface {v1}, Lny;->getNextSibling()Lny;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 474
    check-cast v0, Lantlr/BaseAST;

    invoke-virtual {v0, p1}, Lantlr/BaseAST;->xmlSerializeRootOpen(Ljava/io/Writer;)V

    .line 477
    invoke-interface {v1}, Lny;->getFirstChild()Lny;

    move-result-object v0

    check-cast v0, Lantlr/BaseAST;

    invoke-virtual {v0, p1}, Lantlr/BaseAST;->xmlSerialize(Ljava/io/Writer;)V

    move-object v0, v1

    .line 480
    check-cast v0, Lantlr/BaseAST;

    invoke-virtual {v0, p1}, Lantlr/BaseAST;->xmlSerializeRootClose(Ljava/io/Writer;)V

    goto :goto_1

    .line 483
    :cond_1
    return-void
.end method

.method public xmlSerializeNode(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 441
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 442
    const-string/jumbo v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "text=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lantlr/BaseAST;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\" type=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/BaseAST;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public xmlSerializeRootClose(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "</"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public xmlSerializeRootOpen(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 452
    const-string/jumbo v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "text=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lantlr/BaseAST;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\" type=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/BaseAST;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 457
    return-void
.end method
