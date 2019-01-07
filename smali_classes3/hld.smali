.class public abstract Lhld;
.super Ljava/lang/Object;
.source "MapApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Ljava/util/List;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lhld;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    if-nez p0, :cond_1

    .line 20
    const/4 v0, 0x0

    .line 42
    :cond_0
    :goto_0
    return-object v0

    .line 23
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lhld;>;"
    new-instance v1, Lhlb;

    invoke-direct {v1, p0}, Lhlb;-><init>(Landroid/app/Activity;)V

    .line 25
    .local v1, "t":Lhld;
    invoke-virtual {v1}, Lhld;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_2
    new-instance v1, Lhla;

    .end local v1    # "t":Lhld;
    invoke-direct {v1, p0}, Lhla;-><init>(Landroid/app/Activity;)V

    .line 29
    .restart local v1    # "t":Lhld;
    invoke-virtual {v1}, Lhld;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_3
    new-instance v1, Lhle;

    .end local v1    # "t":Lhld;
    invoke-direct {v1, p0}, Lhle;-><init>(Landroid/app/Activity;)V

    .line 33
    .restart local v1    # "t":Lhld;
    invoke-virtual {v1}, Lhld;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_4
    new-instance v1, Lhlc;

    .end local v1    # "t":Lhld;
    invoke-direct {v1, p0}, Lhlc;-><init>(Landroid/app/Activity;)V

    .line 38
    .restart local v1    # "t":Lhld;
    invoke-virtual {v1}, Lhld;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract a(DDDDLjava/lang/String;)Z
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method
