.class final Lacr$9;
.super Ljava/lang/Object;
.source "MultiMailManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacr;->a(Ljava/lang/String;ZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Labr;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lacr;


# direct methods
.method constructor <init>(Lacr;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lacr;

    .prologue
    .line 1147
    iput-object p1, p0, Lacr$9;->c:Lacr;

    iput-object p2, p0, Lacr$9;->a:Lcma;

    iput-object p3, p0, Lacr$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 1147
    check-cast p1, Ljava/util/List;

    .line 2150
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2151
    :cond_0
    iget-object v0, p0, Lacr$9;->a:Lcma;

    if-eqz v0, :cond_1

    .line 2152
    iget-object v0, p0, Lacr$9;->a:Lcma;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2200
    :cond_1
    :goto_0
    return-void

    .line 2157
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labr;

    .line 2158
    if-eqz v0, :cond_3

    .line 2160
    iget-object v3, p0, Lacr$9;->b:Ljava/lang/String;

    iput-object v3, v0, Labr;->d:Ljava/lang/String;

    goto :goto_1

    .line 2163
    :cond_4
    invoke-static {p1}, Laca;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2164
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2165
    :cond_5
    iget-object v0, p0, Lacr$9;->a:Lcma;

    if-eqz v0, :cond_1

    .line 2166
    iget-object v0, p0, Lacr$9;->a:Lcma;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 2170
    :cond_6
    iget-object v2, p0, Lacr$9;->a:Lcma;

    if-eqz v2, :cond_7

    .line 2171
    iget-object v2, p0, Lacr$9;->a:Lcma;

    invoke-interface {v2, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2173
    :cond_7
    iget-object v2, p0, Lacr$9;->c:Lacr;

    invoke-static {v2}, Lacr;->c(Lacr;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lacr$9;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2174
    iget-object v2, p0, Lacr$9;->c:Lacr;

    invoke-static {v2}, Lacr;->d(Lacr;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lacr$9;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    .line 2179
    if-eqz v0, :cond_8

    .line 2184
    invoke-virtual {v0}, Laca;->c()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2185
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2186
    invoke-virtual {v0}, Laca;->b()Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_3
    move-object v1, v0

    .line 2190
    goto :goto_2

    .line 2192
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2193
    if-eqz v1, :cond_c

    .line 2195
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    .line 2196
    if-eqz v0, :cond_a

    iget-wide v4, v0, Laca;->b:J

    iget-wide v6, v1, Laca;->b:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_a

    .line 2197
    invoke-virtual {v0, v8}, Laca;->a(Z)V

    goto :goto_4

    .line 2200
    :cond_b
    iget-object v0, p0, Lacr$9;->c:Lacr;

    invoke-static {v0}, Lacr;->c(Lacr;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lacr$9;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2202
    :cond_c
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    .line 2204
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laca;

    .line 2205
    if-eqz v1, :cond_d

    iget-wide v4, v1, Laca;->b:J

    iget-wide v6, v0, Laca;->b:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_d

    .line 2206
    invoke-virtual {v1, v8}, Laca;->a(Z)V

    goto :goto_5

    .line 2209
    :cond_e
    iget-object v1, p0, Lacr$9;->c:Lacr;

    invoke-static {v1}, Lacr;->c(Lacr;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lacr$9;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_f
    move-object v0, v1

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1220
    const-string/jumbo v0, "MultiMailManager"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lacr$9;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lacr$9;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1216
    return-void
.end method
