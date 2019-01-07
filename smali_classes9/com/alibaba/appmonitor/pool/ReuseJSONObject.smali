.class public Lcom/alibaba/appmonitor/pool/ReuseJSONObject;
.super Lcom/alibaba/fastjson/JSONObject;
.source "ReuseJSONObject.java"

# interfaces
.implements Lfzc;


# static fields
.field private static final serialVersionUID:J = 0x14563300ad25b018L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/pool/ReuseJSONObject;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 22
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lfzc;

    if-eqz v2, :cond_0

    .line 23
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v2

    check-cast v1, Lfzc;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lfzb;->a(Lfzc;)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-super {p0}, Lcom/alibaba/fastjson/JSONObject;->clear()V

    .line 27
    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 0
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 31
    return-void
.end method
