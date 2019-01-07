.class public Ljrn;
.super Ljava/lang/Object;
.source "CallbackDelegate.java"


# instance fields
.field protected a:Ljro;


# direct methods
.method public constructor <init>(Ljro;)V
    .locals 0
    .param p1, "promise"    # Ljro;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Ljrn;->a:Ljro;

    .line 20
    return-void
.end method

.method protected static a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .param p0, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 24
    check-cast p0, Ljava/util/Map;

    .line 28
    .end local p0    # "data":Ljava/lang/Object;
    .local v0, "wrapper":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-object p0

    .line 26
    .end local v0    # "wrapper":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p0    # "data":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .restart local v0    # "wrapper":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "data"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    .line 28
    goto :goto_0
.end method
