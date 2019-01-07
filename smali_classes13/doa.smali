.class public final Ldoa;
.super Llcm;
.source "DtImageRender.java"

# interfaces
.implements Lldy;


# instance fields
.field private a:Ldob;


# direct methods
.method public constructor <init>(Ldob;)V
    .locals 0
    .param p1, "context"    # Ldob;

    .prologue
    .line 46
    invoke-direct {p0}, Llcm;-><init>()V

    .line 47
    iput-object p1, p0, Ldoa;->a:Ldob;

    .line 48
    return-void
.end method

.method private a(Llcy;Ljava/lang/String;)V
    .locals 2
    .param p1, "image"    # Llcy;
    .param p2, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    iget-object v1, p0, Ldoa;->a:Ldob;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldoa;->a:Ldob;

    invoke-interface {v1}, Ldob;->a()Ldne;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-static {p2}, Ldoe;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;

    move-result-object v0

    .line 100
    .local v0, "imageFormat":Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;
    iget-object v1, p0, Ldoa;->a:Ldob;

    invoke-interface {v1}, Ldob;->a()Ldne;

    move-result-object v1

    .line 3081
    if-eqz p1, :cond_0

    .line 3084
    iget-object v1, v1, Ldne;->d:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lldd;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Llcr;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Llcv;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lldf;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Llco;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Llcp;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Llct;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Llcw;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lldj;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Llcz;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Llda;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lldc;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Llde;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Llcy;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Llcs;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-class v3, Lldh;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-class v3, Lldi;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-class v3, Llcq;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-class v3, Llcx;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-class v3, Lldg;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-class v3, Llcu;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final a(Llcy;)V
    .locals 1
    .param p1, "image"    # Llcy;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 1022
    iget-object v0, p1, Lldd;->g:Lldd;

    .line 86
    instance-of v0, v0, Lldi;

    if-eqz v0, :cond_1

    .line 2022
    iget-object v0, p1, Lldd;->g:Lldd;

    .line 87
    check-cast v0, Lldi;

    check-cast v0, Lldi;

    .line 3020
    iget-object v0, v0, Lldi;->a:Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1, v0}, Ldoa;->a(Llcy;Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Llcm;->a(Llcy;)V

    .line 93
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldoa;->a(Llcy;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lldd;)V
    .locals 0
    .param p1, "node"    # Lldd;

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1, p0}, Lldd;->a(Lldk;)V

    .line 81
    :cond_0
    return-void
.end method
