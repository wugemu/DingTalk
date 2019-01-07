.class public abstract Ljrp;
.super Ljava/lang/Object;
.source "ValidityBridgeInvokerManager.java"

# interfaces
.implements Ljrl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljrz;",
        ">",
        "Ljava/lang/Object;",
        "Ljrl;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Ljrp;, "Ljrp<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Ljrp;, "Ljrp<TT;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 23
    invoke-static {p1}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 24
    .local v6, "paramsObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v0, "method"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 25
    .local v8, "target":Ljava/lang/String;
    const-string/jumbo v0, "params"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, "arguments":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v10

    .line 48
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "\\."

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 30
    .local v9, "temp":[Ljava/lang/String;
    array-length v0, v9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    move-object v0, v10

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Ljrp;->g()Ljrz;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljrp;->g()Ljrz;

    move-result-object v0

    invoke-interface {v0}, Ljrz;->a()Ljpk;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 35
    invoke-virtual {p0}, Ljrp;->g()Ljrz;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljrz;->a()Ljpk;

    move-result-object v0

    invoke-virtual {p0}, Ljrp;->g()Ljrz;

    move-result-object v1

    invoke-interface {v1}, Ljrz;->b()Landroid/content/Context;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Ljrp;->g()Ljrz;

    move-result-object v2

    invoke-interface {v2}, Ljrz;->c()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v9, v11

    aget-object v4, v9, v12

    .line 36
    invoke-interface/range {v0 .. v5}, Ljpk;->onValidate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpk$a;

    move-result-object v7

    .line 39
    .local v7, "result":Ljpk$a;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    const/4 v5, 0x0

    .line 42
    :cond_2
    if-eqz v7, :cond_4

    iget-boolean v0, v7, Ljpk$a;->a:Z

    if-nez v0, :cond_4

    .line 43
    invoke-virtual {p0}, Ljrp;->g()Ljrz;

    move-result-object v0

    invoke-interface {v0}, Ljrz;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljrp;->h()Ljava/lang/String;

    move-result-object v1

    .line 1011
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1012
    const-string/jumbo v3, "action"

    const-string/jumbo v4, "CALLBACK"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    const-string/jumbo v3, "callbackId"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1016
    const-string/jumbo v4, "status"

    const-string/jumbo v11, "FAILED"

    invoke-interface {v3, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    if-eqz v10, :cond_3

    .line 1018
    invoke-interface {v3, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1021
    :cond_3
    const-string/jumbo v4, "result"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    invoke-static {}, Ljpl;->a()Ljpl;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Ljpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, v10

    .line 45
    goto/16 :goto_0

    .line 48
    .end local v7    # "result":Ljpk$a;
    :cond_4
    aget-object v0, v9, v11

    aget-object v1, v9, v12

    invoke-virtual {p0, v0, v1, v5, p2}, Ljrp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract g()Ljrz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract h()Ljava/lang/String;
.end method
