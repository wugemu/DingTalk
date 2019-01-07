.class public final Lbbp$81;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Ljava/util/List;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 709
    iput-object p1, p0, Lbbp$81;->c:Lbbp;

    iput-object p2, p0, Lbbp$81;->a:Ljava/util/List;

    iput-object p3, p0, Lbbp$81;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 712
    iget-object v0, p0, Lbbp$81;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v1

    iget-object v2, p0, Lbbp$81;->a:Ljava/util/List;

    new-instance v3, Lbbp$81$1;

    invoke-direct {v3, p0}, Lbbp$81$1;-><init>(Lbbp$81;)V

    .line 3001
    if-nez v2, :cond_0

    .line 3002
    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 3017
    :goto_0
    return-void

    .line 3006
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3007
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3008
    if-eqz v0, :cond_1

    .line 3011
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3013
    :cond_2
    invoke-virtual {v1, v4}, Lbbo;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3015
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 3016
    invoke-virtual {v1, v3, v0}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    goto :goto_0

    .line 3020
    :cond_3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3021
    if-eqz v0, :cond_5

    .line 3022
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 3023
    if-eqz v0, :cond_4

    .line 3026
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    .line 3109
    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3026
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3030
    :cond_5
    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lbbo$13;

    invoke-direct {v5, v1, v3, v4}, Lbbo$13;-><init>(Lbbo;Lcma;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2, v5}, Lbbo;->a(ILjava/util/List;Lcma;)V

    goto :goto_0
.end method
