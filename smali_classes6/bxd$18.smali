.class final Lbxd$18;
.super Lhzy;
.source "LvRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lbvd;",
        "Lbxh;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 450
    .local p1, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lbxh;>;"
    invoke-direct {p0, p1}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 450
    check-cast p1, Lbvd;

    .line 2016
    if-nez p1, :cond_0

    .line 2017
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2020
    :cond_0
    new-instance v1, Lbxh;

    invoke-direct {v1}, Lbxh;-><init>()V

    .line 2021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lbxh;->a:Ljava/util/List;

    .line 2022
    iget-object v0, p1, Lbvd;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2023
    iget-object v0, p1, Lbvd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2024
    if-eqz v0, :cond_1

    iget-object v3, v1, Lbxh;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2025
    iget-object v3, v1, Lbxh;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 450
    goto :goto_0
.end method
