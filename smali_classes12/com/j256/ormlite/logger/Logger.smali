.class public Lcom/j256/ormlite/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field private final b:Lcom/j256/ormlite/logger/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/logger/Log;)V
    .locals 0
    .param p1, "log"    # Lcom/j256/ormlite/logger/Log;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/j256/ormlite/logger/Logger;->b:Lcom/j256/ormlite/logger/Log;

    .line 41
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 602
    sget-object v2, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    if-eq p1, v2, :cond_0

    .line 604
    if-nez p1, :cond_1

    .line 606
    const-string/jumbo v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 609
    const/16 v2, 0x5b

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 610
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 611
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 612
    if-lez v0, :cond_2

    .line 613
    const-string/jumbo v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_2
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 617
    :cond_3
    const/16 v2, 0x5d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 620
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "arg0"    # Ljava/lang/Object;
    .param p5, "arg1"    # Ljava/lang/Object;
    .param p6, "arg2"    # Ljava/lang/Object;
    .param p7, "argArray"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 542
    iget-object v2, p0, Lcom/j256/ormlite/logger/Logger;->b:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v2, p1}, Lcom/j256/ormlite/logger/Log;->a(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1556
    const/4 v2, 0x0

    move v3, v1

    move v6, v1

    move-object v1, v2

    move v2, v6

    .line 1560
    :goto_0
    const-string/jumbo v4, "{}"

    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 1562
    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 1565
    if-nez v1, :cond_0

    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1570
    :cond_0
    invoke-virtual {v1, p3, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1572
    add-int/lit8 v3, v4, 0x2

    .line 1574
    if-nez p7, :cond_4

    .line 1575
    if-nez v2, :cond_2

    .line 1576
    invoke-static {v1, p4}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 1589
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 1590
    goto :goto_0

    .line 1577
    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 1578
    invoke-static {v1, p5}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1579
    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 1580
    invoke-static {v1, p6}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1584
    :cond_4
    array-length v4, p7

    if-ge v2, v4, :cond_1

    .line 1585
    aget-object v4, p7, v2

    invoke-static {v1, v4}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1591
    :cond_5
    if-nez v1, :cond_7

    move-object v0, p3

    .line 544
    .local v0, "fullMsg":Ljava/lang/String;
    :goto_2
    if-nez p2, :cond_8

    .line 545
    iget-object v1, p0, Lcom/j256/ormlite/logger/Logger;->b:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v1, p1, v0}, Lcom/j256/ormlite/logger/Log;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V

    .line 550
    .end local v0    # "fullMsg":Ljava/lang/String;
    :cond_6
    :goto_3
    return-void

    .line 1596
    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p3, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1597
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 547
    .restart local v0    # "fullMsg":Ljava/lang/String;
    :cond_8
    iget-object v1, p0, Lcom/j256/ormlite/logger/Logger;->b:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v1, p1, v0, p2}, Lcom/j256/ormlite/logger/Log;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 124
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 61
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 68
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 75
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 369
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 370
    return-void
.end method

.method public final a(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 1
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/j256/ormlite/logger/Logger;->b:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/logger/Log;->a(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 131
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 138
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 145
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 201
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 208
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 215
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 216
    return-void
.end method
