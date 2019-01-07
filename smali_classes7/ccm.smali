.class public final Lccm;
.super Ljava/lang/Object;
.source "SearchOrgResultObject.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lccl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lccf;)Lccm;
    .locals 10
    .param p0, "model"    # Lccf;

    .prologue
    const/4 v2, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 20
    :goto_0
    return-object v2

    .line 17
    :cond_0
    new-instance v0, Lccm;

    invoke-direct {v0}, Lccm;-><init>()V

    .line 18
    .local v0, "object":Lccm;
    iget-object v1, p0, Lccf;->a:Ljava/util/List;

    .line 1033
    if-nez v1, :cond_1

    .line 18
    :goto_1
    iput-object v2, v0, Lccm;->a:Ljava/util/List;

    move-object v2, v0

    .line 20
    goto :goto_0

    .line 1037
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcce;

    .line 1039
    if-eqz v1, :cond_2

    .line 2019
    if-nez v1, :cond_3

    move-object v1, v2

    .line 1042
    :goto_3
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2023
    :cond_3
    new-instance v3, Lccl;

    invoke-direct {v3}, Lccl;-><init>()V

    .line 2024
    iget-object v6, v1, Lcce;->a:Ljava/lang/Long;

    .line 2044
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 2024
    iput-wide v6, v3, Lccl;->a:J

    .line 2025
    iget-object v6, v1, Lcce;->b:Ljava/lang/String;

    iput-object v6, v3, Lccl;->b:Ljava/lang/String;

    .line 2026
    iget-object v1, v1, Lcce;->c:Ljava/lang/String;

    iput-object v1, v3, Lccl;->c:Ljava/lang/String;

    move-object v1, v3

    .line 2028
    goto :goto_3

    :cond_4
    move-object v2, v4

    .line 1045
    goto :goto_1
.end method
