.class Lcom/amap/api/mapcore/util/b$18;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/i$a;Lcom/amap/api/mapcore/util/i$c;Lcom/amap/api/mapcore/util/i$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/i$c;

.field final synthetic b:Lcom/amap/api/mapcore/util/i$a;

.field final synthetic c:Lcom/amap/api/mapcore/util/i$b;

.field final synthetic d:Lcom/amap/api/mapcore/util/i$c;

.field final synthetic e:Lcom/amap/api/mapcore/util/i$a;

.field final synthetic f:Lcom/amap/api/mapcore/util/b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/mapcore/util/i$c;Lcom/amap/api/mapcore/util/i$a;Lcom/amap/api/mapcore/util/i$b;Lcom/amap/api/mapcore/util/i$c;Lcom/amap/api/mapcore/util/i$a;)V
    .locals 0

    .prologue
    .line 1640
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/b$18;->a:Lcom/amap/api/mapcore/util/i$c;

    iput-object p3, p0, Lcom/amap/api/mapcore/util/b$18;->b:Lcom/amap/api/mapcore/util/i$a;

    iput-object p4, p0, Lcom/amap/api/mapcore/util/b$18;->c:Lcom/amap/api/mapcore/util/i$b;

    iput-object p5, p0, Lcom/amap/api/mapcore/util/b$18;->d:Lcom/amap/api/mapcore/util/i$c;

    iput-object p6, p0, Lcom/amap/api/mapcore/util/b$18;->e:Lcom/amap/api/mapcore/util/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x9c5

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1644
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->b()Ljava/lang/String;

    move-result-object v6

    .line 1645
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->c()Ljava/lang/String;

    move-result-object v10

    .line 1647
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/b$18;->a:Lcom/amap/api/mapcore/util/i$c;

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/mapcore/util/i$c;)Lcom/amap/api/mapcore/util/i$c;

    .line 1648
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/b$18;->b:Lcom/amap/api/mapcore/util/i$a;

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/mapcore/util/i$a;)Lcom/amap/api/mapcore/util/i$a;

    .line 1649
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/b$18;->c:Lcom/amap/api/mapcore/util/i$b;

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/mapcore/util/i$b;)Lcom/amap/api/mapcore/util/i$b;

    .line 1650
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->b()Ljava/lang/String;

    move-result-object v7

    .line 1651
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->c()Ljava/lang/String;

    move-result-object v11

    .line 1654
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->i(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/i$a;

    move-result-object v0

    sget-object v3, Lcom/amap/api/mapcore/util/i$a;->b:Lcom/amap/api/mapcore/util/i$a;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    .line 1655
    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->j(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/i$c;

    move-result-object v0

    sget-object v3, Lcom/amap/api/mapcore/util/i$c;->b:Lcom/amap/api/mapcore/util/i$c;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->d:Lcom/amap/api/mapcore/util/i$c;

    sget-object v3, Lcom/amap/api/mapcore/util/i$c;->b:Lcom/amap/api/mapcore/util/i$c;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->e:Lcom/amap/api/mapcore/util/i$a;

    sget-object v3, Lcom/amap/api/mapcore/util/i$a;->b:Lcom/amap/api/mapcore/util/i$a;

    if-ne v0, v3, :cond_1

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    new-instance v3, Lcom/amap/api/mapcore/util/b$18$1;

    invoke-direct {v3, p0}, Lcom/amap/api/mapcore/util/b$18$1;-><init>(Lcom/amap/api/mapcore/util/b$18;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1665
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->d(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 1667
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->l(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1668
    new-instance v0, Lcom/amap/api/mapcore/util/dt;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/b;->m(Lcom/amap/api/mapcore/util/b;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/amap/api/mapcore/util/dt;-><init>(Landroid/content/Context;)V

    .line 1669
    iget-object v3, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/b;->l(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore/util/dt;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 1671
    if-eqz v0, :cond_2

    .line 1672
    iget-object v3, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore/util/i;->a([B)V

    .line 1686
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->i(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/i$a;

    move-result-object v0

    sget-object v3, Lcom/amap/api/mapcore/util/i$a;->b:Lcom/amap/api/mapcore/util/i$a;

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->e:Lcom/amap/api/mapcore/util/i$a;

    sget-object v3, Lcom/amap/api/mapcore/util/i$a;->b:Lcom/amap/api/mapcore/util/i$a;

    if-ne v0, v3, :cond_4

    .line 1688
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->d(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v3

    const/16 v4, 0x7db

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    .line 1689
    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->i(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/i$a;

    move-result-object v0

    sget-object v5, Lcom/amap/api/mapcore/util/i$a;->b:Lcom/amap/api/mapcore/util/i$a;

    if-ne v0, v5, :cond_b

    move v5, v9

    :goto_1
    move v6, v2

    move v7, v2

    move v8, v2

    .line 1688
    invoke-virtual/range {v3 .. v8}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 1694
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->j(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/i$c;

    move-result-object v0

    sget-object v3, Lcom/amap/api/mapcore/util/i$c;->b:Lcom/amap/api/mapcore/util/i$c;

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->d:Lcom/amap/api/mapcore/util/i$c;

    sget-object v3, Lcom/amap/api/mapcore/util/i$c;->b:Lcom/amap/api/mapcore/util/i$c;

    if-ne v0, v3, :cond_6

    .line 1696
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->d(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v3

    const/16 v4, 0x961

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    .line 1697
    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->j(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/i$c;

    move-result-object v0

    sget-object v5, Lcom/amap/api/mapcore/util/i$c;->b:Lcom/amap/api/mapcore/util/i$c;

    if-ne v0, v5, :cond_c

    move v5, v9

    :goto_2
    move v6, v2

    move v7, v2

    move v8, v2

    .line 1696
    invoke-virtual/range {v3 .. v8}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 1699
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0, v9}, Lcom/amap/api/mapcore/util/i;->d(Z)V

    .line 1700
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0, v9}, Lcom/amap/api/mapcore/util/i;->c(Z)V

    .line 1704
    :cond_6
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1705
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0, v9}, Lcom/amap/api/mapcore/util/i;->a(Z)V

    .line 1709
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0, v9}, Lcom/amap/api/mapcore/util/i;->b(Z)V

    .line 1710
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->n(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/i$b;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1711
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->d(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v3

    const/16 v4, 0x7dd

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->i(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i$a;->ordinal()I

    move-result v5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    .line 1712
    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->j(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/i$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i$c;->ordinal()I

    move-result v6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    .line 1713
    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->n(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/i$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i$b;->ordinal()I

    move-result v7

    move v8, v2

    .line 1711
    invoke-virtual/range {v3 .. v8}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 1715
    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->d(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v3

    move v4, v1

    move v5, v9

    move v6, v9

    move v7, v2

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 1717
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->e(Lcom/amap/api/mapcore/util/b;)V

    .line 1719
    return-void

    .line 1676
    :cond_9
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->l(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1677
    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->a()V

    goto/16 :goto_0

    :cond_b
    move v5, v2

    .line 1689
    goto/16 :goto_1

    :cond_c
    move v5, v2

    .line 1697
    goto/16 :goto_2
.end method
