.class public Ljrv;
.super Ljava/lang/Object;
.source "TypedBridgeFactory.java"

# interfaces
.implements Ljrr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/taobao/windmill/module/base/JSBridge;",
        ">",
        "Ljava/lang/Object;",
        "Ljrr",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljru;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Ljrv;, "Ljrv<TT;>;"
    .local p1, "bridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Ljrv;->a:Ljava/lang/Class;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Lcom/taobao/windmill/module/base/JSBridge;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Ljrv;, "Ljrv<TT;>;"
    iget-object v0, p0, Ljrv;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/module/base/JSBridge;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljru;
    .locals 11
    .param p1, "methodName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Ljrv;, "Ljrv<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    iget-object v0, p0, Ljrv;->b:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 1046
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljrv;->b:Ljava/util/Map;

    .line 1047
    iget-object v0, p0, Ljrv;->a:Ljava/lang/Class;

    if-eqz v0, :cond_5

    .line 1051
    iget-object v0, p0, Ljrv;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_5

    aget-object v7, v5, v4

    .line 1052
    const-class v0, Lcom/taobao/windmill/module/base/JSBridgeMethod;

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    const-class v0, Lcom/taobao/windmill/module/base/JSBridgeMethod;

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/module/base/JSBridgeMethod;

    .line 1054
    const-string/jumbo v1, "__"

    invoke-interface {v0}, Lcom/taobao/windmill/module/base/JSBridgeMethod;->alias()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1055
    :goto_1
    invoke-interface {v0}, Lcom/taobao/windmill/module/base/JSBridgeMethod;->uiThread()Z

    move-result v8

    .line 1066
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1067
    array-length v9, v0

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 1068
    aget-object v9, v0, v3

    .line 1069
    aget-object v0, v0, v2

    .line 1070
    const-class v10, Ljava/util/Map;

    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-class v9, Ljrh;

    if-ne v0, v9, :cond_2

    move v0, v2

    .line 1056
    :goto_2
    if-eqz v0, :cond_4

    .line 1057
    iget-object v0, p0, Ljrv;->b:Ljava/util/Map;

    new-instance v9, Ljru;

    invoke-direct {v9, v7, v8}, Ljru;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    :cond_0
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 1054
    :cond_1
    invoke-interface {v0}, Lcom/taobao/windmill/module/base/JSBridgeMethod;->alias()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move v0, v3

    .line 1070
    goto :goto_2

    :cond_3
    move v0, v3

    .line 1072
    goto :goto_2

    .line 1059
    :cond_4
    const-string/jumbo v0, "TypedBridgeFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "method params not match: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 42
    :cond_5
    iget-object v0, p0, Ljrv;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljru;

    return-object v0
.end method
