.class public abstract Ljrh;
.super Ljava/lang/Object;
.source "JSInvokeContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljrh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljrh$a;

.field protected b:Landroid/content/Context;

.field protected c:Ljava/lang/String;

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Ljrh;, "Ljrh<TT;>;"
    .local p1, "env":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Ljrh;->d:Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Ljrh;, "Ljrh<TT;>;"
    iget-object v0, p0, Ljrh;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljrh;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    .local p0, "this":Ljrh;, "Ljrh<TT;>;"
    iput-object p1, p0, Ljrh;->b:Landroid/content/Context;

    .line 22
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljrh;
    .locals 0
    .param p1, "refer"    # Ljava/lang/String;

    .prologue
    .line 26
    .local p0, "this":Ljrh;, "Ljrh<TT;>;"
    iput-object p1, p0, Ljrh;->c:Ljava/lang/String;

    .line 27
    return-object p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 56
    .local p0, "this":Ljrh;, "Ljrh<TT;>;"
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 57
    check-cast v0, Ljava/util/Map;

    .line 58
    .local v0, "dataMap":Ljava/util/Map;
    const-string/jumbo v2, "status"

    sget-object v3, Lcom/taobao/windmill/module/base/Status;->SUCCESS:Lcom/taobao/windmill/module/base/Status;

    invoke-virtual {v3}, Lcom/taobao/windmill/module/base/Status;->statusText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0, v0}, Ljrh;->a(Ljava/util/Map;)V

    .line 66
    .end local v0    # "dataMap":Ljava/util/Map;
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "status"

    sget-object v3, Lcom/taobao/windmill/module/base/Status;->SUCCESS:Lcom/taobao/windmill/module/base/Status;

    invoke-virtual {v3}, Lcom/taobao/windmill/module/base/Status;->statusText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v2, "data"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0, v1}, Ljrh;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Ljrh;, "Ljrh<TT;>;"
    .local p2, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Ljrh;->a:Ljrh$a;

    if-eqz v0, :cond_0

    .line 87
    const-string/jumbo v0, "globalEvetName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Ljrh;->a:Ljrh$a;

    invoke-interface {v0, p1, v1}, Ljrh$a;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Ljrh;->a:Ljrh$a;

    invoke-interface {v0, p1, v1}, Ljrh$a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public abstract a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Ljrh;, "Ljrh<TT;>;"
    iget-object v0, p0, Ljrh;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    .local p0, "this":Ljrh;, "Ljrh<TT;>;"
    sget-object v0, Lcom/taobao/windmill/module/base/Status;->FAILED:Lcom/taobao/windmill/module/base/Status;

    .line 1073
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1074
    check-cast p1, Ljava/util/Map;

    .line 1075
    .end local p1    # "data":Ljava/lang/Object;
    const-string/jumbo v1, "status"

    invoke-virtual {v0}, Lcom/taobao/windmill/module/base/Status;->statusText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    invoke-virtual {p0, p1}, Ljrh;->a(Ljava/util/Map;)V

    .line 1077
    :goto_0
    return-void

    .line 1078
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1079
    const-string/jumbo v2, "status"

    invoke-virtual {v0}, Lcom/taobao/windmill/module/base/Status;->statusText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    const-string/jumbo v0, "data"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    invoke-virtual {p0, v1}, Ljrh;->a(Ljava/util/Map;)V

    goto :goto_0
.end method
