.class Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$EnvironmentUtil;
.super Ljava/lang/Object;
.source "EnvironmentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EnvironmentUtil"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExistedComponents()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/IFComponentHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    :try_start_0
    const-class v2, Lcom/taobao/weex/ui/WXComponentRegistry;

    const-string/jumbo v3, "sTypeComponentMap"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 205
    .local v0, "sComponentsField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 206
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-object v2

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public static getExistedModules(Z)Ljava/util/Map;
    .locals 9
    .param p0, "global"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/TypeModuleFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v3, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/TypeModuleFactory;>;"
    if-eqz p0, :cond_2

    .line 173
    :try_start_0
    const-class v7, Lcom/taobao/weex/bridge/WXModuleManager;

    const-string/jumbo v8, "sGlobalModuleMap"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 174
    .local v4, "sGlobalField":Ljava/lang/reflect/Field;
    if-eqz v4, :cond_1

    .line 175
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 176
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 177
    .local v2, "map":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 178
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 179
    .local v6, "value":Ljava/lang/Object;
    instance-of v8, v6, Lcom/taobao/weex/common/WXModule;

    if-eqz v8, :cond_0

    .line 180
    new-instance v0, Lcom/taobao/weex/common/TypeModuleFactory;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/taobao/weex/common/TypeModuleFactory;-><init>(Ljava/lang/Class;)V

    .line 181
    .local v0, "factory":Lcom/taobao/weex/common/TypeModuleFactory;
    check-cast v1, Ljava/lang/String;

    .end local v1    # "key":Ljava/lang/Object;
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v0    # "factory":Lcom/taobao/weex/common/TypeModuleFactory;
    .end local v2    # "map":Ljava/util/Map;
    .end local v4    # "sGlobalField":Ljava/lang/reflect/Field;
    .end local v6    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v7

    :cond_1
    :goto_1
    move-object v7, v3

    .line 199
    :goto_2
    return-object v7

    .line 190
    :cond_2
    :try_start_1
    const-class v7, Lcom/taobao/weex/bridge/WXModuleManager;

    const-string/jumbo v8, "sModuleFactoryMap"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 191
    .local v5, "sModuleField":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_1

    .line 192
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 193
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .end local v5    # "sModuleField":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v7

    goto :goto_1
.end method
