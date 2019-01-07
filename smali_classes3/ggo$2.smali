.class public final Lggo$2;
.super Ljava/lang/Object;
.source "SearchHistorySource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lggo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lggo;


# direct methods
.method public constructor <init>(Lggo;)V
    .locals 0
    .param p1, "this$0"    # Lggo;

    .prologue
    .line 103
    iput-object p1, p0, Lggo$2;->a:Lggo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 106
    iget-object v2, p0, Lggo$2;->a:Lggo;

    .line 1119
    iget-object v0, v2, Lggo;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 1120
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1121
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1123
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1125
    new-instance v5, Lggn;

    invoke-direct {v5}, Lggn;-><init>()V

    .line 1126
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lggn;->b:J

    .line 1127
    iput-object v0, v5, Lggn;->a:Ljava/lang/String;

    .line 1128
    iget-object v0, v2, Lggo;->c:Ljava/util/HashMap;

    iget-object v1, v5, Lggn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    iget-object v0, v2, Lggo;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1135
    :cond_1
    iget-object v0, v2, Lggo;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1136
    iget-object v0, v2, Lggo;->d:Ljava/util/ArrayList;

    iget-object v1, v2, Lggo;->e:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 108
    :cond_2
    iget-object v0, p0, Lggo$2;->a:Lggo;

    .line 2038
    iget-object v0, v0, Lggo;->a:Lggp;

    .line 108
    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lggo$2;->a:Lggo;

    .line 3038
    iget-object v0, v0, Lggo;->a:Lggp;

    .line 109
    iget-object v1, p0, Lggo$2;->a:Lggo;

    .line 4038
    iget-object v1, v1, Lggo;->d:Ljava/util/ArrayList;

    .line 109
    invoke-interface {v0, v1}, Lggp;->a(Ljava/util/List;)V

    .line 111
    :cond_3
    return-void
.end method
