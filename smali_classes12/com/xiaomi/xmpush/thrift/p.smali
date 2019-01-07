.class public Lcom/xiaomi/xmpush/thrift/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/xmpush/thrift/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/thrift/a",
        "<",
        "Lcom/xiaomi/xmpush/thrift/p;",
        "Lcom/xiaomi/xmpush/thrift/p$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/xmpush/thrift/p$a;",
            "Lorg/apache/thrift/meta_data/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lktn;

.field private static final f:Lkth;

.field private static final g:Lkth;

.field private static final h:Lkth;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/y;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/xiaomi/xmpush/thrift/l;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0xf

    const/16 v8, 0xc

    const/4 v7, 0x2

    new-instance v0, Lktn;

    const-string/jumbo v1, "LocationInfo"

    invoke-direct {v0, v1}, Lktn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/p;->e:Lktn;

    new-instance v0, Lkth;

    const-string/jumbo v1, "wifiList"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v9, v2}, Lkth;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/p;->f:Lkth;

    new-instance v0, Lkth;

    const-string/jumbo v1, "cellList"

    invoke-direct {v0, v1, v9, v7}, Lkth;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/p;->g:Lkth;

    new-instance v0, Lkth;

    const-string/jumbo v1, "gps"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v8, v2}, Lkth;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/p;->h:Lkth;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/p$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/xmpush/thrift/p$a;->a:Lcom/xiaomi/xmpush/thrift/p$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string/jumbo v3, "wifiList"

    new-instance v4, Lorg/apache/thrift/meta_data/d;

    new-instance v5, Lorg/apache/thrift/meta_data/g;

    const-class v6, Lcom/xiaomi/xmpush/thrift/y;

    invoke-direct {v5, v8, v6}, Lorg/apache/thrift/meta_data/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/d;-><init>(BLorg/apache/thrift/meta_data/c;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/p$a;->b:Lcom/xiaomi/xmpush/thrift/p$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string/jumbo v3, "cellList"

    new-instance v4, Lorg/apache/thrift/meta_data/d;

    new-instance v5, Lorg/apache/thrift/meta_data/g;

    const-class v6, Lcom/xiaomi/xmpush/thrift/c;

    invoke-direct {v5, v8, v6}, Lorg/apache/thrift/meta_data/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/d;-><init>(BLorg/apache/thrift/meta_data/c;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/p$a;->c:Lcom/xiaomi/xmpush/thrift/p$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string/jumbo v3, "gps"

    new-instance v4, Lorg/apache/thrift/meta_data/g;

    const-class v5, Lcom/xiaomi/xmpush/thrift/l;

    invoke-direct {v4, v8, v5}, Lorg/apache/thrift/meta_data/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/p;->d:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/xmpush/thrift/p;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/p;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/xmpush/thrift/l;)Lcom/xiaomi/xmpush/thrift/p;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/p;->c:Lcom/xiaomi/xmpush/thrift/l;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/y;",
            ">;)",
            "Lcom/xiaomi/xmpush/thrift/p;"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/p;->a:Ljava/util/List;

    return-object p0
.end method

.method public a(Lktk;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    const/16 v5, 0xf

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lktk;->b()Lkth;

    move-result-object v0

    iget-byte v2, v0, Lkth;->b:B

    if-eqz v2, :cond_4

    iget-short v2, v0, Lkth;->c:S

    packed-switch v2, :pswitch_data_0

    iget-byte v0, v0, Lkth;->b:B

    invoke-static {p1, v0}, Lktl;->a(Lktk;B)V

    goto :goto_0

    :pswitch_0
    iget-byte v2, v0, Lkth;->b:B

    if-ne v2, v5, :cond_1

    invoke-virtual {p1}, Lktk;->d()Lkti;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lkti;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->a:Ljava/util/List;

    move v0, v1

    :goto_1
    iget v3, v2, Lkti;->b:I

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/xiaomi/xmpush/thrift/y;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/y;-><init>()V

    invoke-virtual {v3, p1}, Lcom/xiaomi/xmpush/thrift/y;->a(Lktk;)V

    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/p;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lkth;->b:B

    invoke-static {p1, v0}, Lktl;->a(Lktk;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v2, v0, Lkth;->b:B

    if-ne v2, v5, :cond_2

    invoke-virtual {p1}, Lktk;->d()Lkti;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lkti;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->b:Ljava/util/List;

    move v0, v1

    :goto_2
    iget v3, v2, Lkti;->b:I

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/xiaomi/xmpush/thrift/c;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/c;-><init>()V

    invoke-virtual {v3, p1}, Lcom/xiaomi/xmpush/thrift/c;->a(Lktk;)V

    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/p;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-byte v0, v0, Lkth;->b:B

    invoke-static {p1, v0}, Lktl;->a(Lktk;B)V

    goto :goto_0

    :pswitch_2
    iget-byte v2, v0, Lkth;->b:B

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    new-instance v0, Lcom/xiaomi/xmpush/thrift/l;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/l;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->c:Lcom/xiaomi/xmpush/thrift/l;

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->c:Lcom/xiaomi/xmpush/thrift/l;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/l;->a(Lktk;)V

    goto/16 :goto_0

    :cond_3
    iget-byte v0, v0, Lkth;->b:B

    invoke-static {p1, v0}, Lktl;->a(Lktk;B)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->e()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/p;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/p;->a()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/p;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/p;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/p;->b()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/p;->b:Ljava/util/List;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/p;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/p;->d()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/p;->c:Lcom/xiaomi/xmpush/thrift/l;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/p;->c:Lcom/xiaomi/xmpush/thrift/l;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/l;->a(Lcom/xiaomi/xmpush/thrift/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/p;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/p;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/p;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lktd;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/p;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/p;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lktd;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/p;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->c:Lcom/xiaomi/xmpush/thrift/l;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/p;->c:Lcom/xiaomi/xmpush/thrift/l;

    invoke-static {v0, v1}, Lktd;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/c;",
            ">;)",
            "Lcom/xiaomi/xmpush/thrift/p;"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/p;->b:Ljava/util/List;

    return-object p0
.end method

.method public b(Lktk;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->e()V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/xmpush/thrift/p;->f:Lkth;

    invoke-virtual {p1, v0}, Lktk;->a(Lkth;)V

    new-instance v0, Lkti;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/p;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lkti;-><init>(BI)V

    invoke-virtual {p1, v0}, Lktk;->a(Lkti;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/y;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/y;->b(Lktk;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/xmpush/thrift/p;->g:Lkth;

    invoke-virtual {p1, v0}, Lktk;->a(Lkth;)V

    new-instance v0, Lkti;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/p;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lkti;-><init>(BI)V

    invoke-virtual {p1, v0}, Lktk;->a(Lkti;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/c;->b(Lktk;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->c:Lcom/xiaomi/xmpush/thrift/l;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/xmpush/thrift/p;->h:Lkth;

    invoke-virtual {p1, v0}, Lktk;->a(Lkth;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->c:Lcom/xiaomi/xmpush/thrift/l;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/l;->b(Lktk;)V

    :cond_2
    invoke-virtual {p1}, Lktk;->a()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/xiaomi/xmpush/thrift/l;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->c:Lcom/xiaomi/xmpush/thrift/l;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/xmpush/thrift/p;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/p;->b(Lcom/xiaomi/xmpush/thrift/p;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->c:Lcom/xiaomi/xmpush/thrift/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/p;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/xmpush/thrift/p;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/p;->a(Lcom/xiaomi/xmpush/thrift/p;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "LocationInfo("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v0, "wifiList:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->a:Ljava/util/List;

    if-nez v0, :cond_4

    const-string/jumbo v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v0, :cond_1

    const-string/jumbo v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v0, "cellList:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->b:Ljava/util/List;

    if-nez v0, :cond_5

    const-string/jumbo v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/p;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    const-string/jumbo v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v0, "gps:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->c:Lcom/xiaomi/xmpush/thrift/l;

    if-nez v0, :cond_6

    const-string/jumbo v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    const-string/jumbo v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->a:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->b:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/p;->c:Lcom/xiaomi/xmpush/thrift/l;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    move v1, v0

    goto :goto_1
.end method
