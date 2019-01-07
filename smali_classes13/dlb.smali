.class public final Ldlb;
.super Ljava/lang/Object;
.source "EncryptKeyObjectMap.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldla;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ldtf;)Ldlb;
    .locals 8
    .param p0, "model"    # Ldtf;

    .prologue
    .line 27
    new-instance v1, Ldlb;

    invoke-direct {v1}, Ldlb;-><init>()V

    .line 28
    .local v1, "encryptKeyObjectMap":Ldlb;
    if-eqz p0, :cond_1

    .line 29
    iget-object v3, p0, Ldtf;->a:Ljava/lang/String;

    iput-object v3, v1, Ldlb;->a:Ljava/lang/String;

    .line 30
    iget-object v3, p0, Ldtf;->b:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Ldlb;->b:Ljava/util/List;

    .line 32
    iget-object v3, p0, Ldtf;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldtw;

    .line 1072
    .local v2, "keyModel":Ldtw;
    new-instance v0, Ldla;

    invoke-direct {v0}, Ldla;-><init>()V

    .line 1073
    if-eqz v2, :cond_0

    .line 1074
    iget-object v4, v2, Ldtw;->b:Ljava/lang/String;

    iput-object v4, v0, Ldla;->b:Ljava/lang/String;

    .line 1075
    iget-object v4, v2, Ldtw;->a:Ljava/lang/Long;

    .line 2044
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1075
    iput-wide v4, v0, Ldla;->d:J

    .line 1076
    iget-object v4, v2, Ldtw;->c:Ljava/lang/String;

    iput-object v4, v0, Ldla;->e:Ljava/lang/String;

    .line 34
    .local v0, "encryptKeyObject":Ldla;
    :cond_0
    iget-object v4, p0, Ldtf;->a:Ljava/lang/String;

    iput-object v4, v0, Ldla;->a:Ljava/lang/String;

    .line 35
    iget-object v4, v1, Ldlb;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    .end local v0    # "encryptKeyObject":Ldla;
    .end local v2    # "keyModel":Ldtw;
    :cond_1
    return-object v1
.end method
