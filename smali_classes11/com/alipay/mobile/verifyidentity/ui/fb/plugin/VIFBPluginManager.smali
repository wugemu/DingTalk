.class public Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;
.super Ljava/lang/Object;
.source "VIFBPluginManager.java"


# static fields
.field public static final KEY_IS_PLUGIN_MODE:Ljava/lang/String; = "isPluginMode"

.field public static final KEY_PLUGIN_NAME:Ljava/lang/String; = "PluginName"

.field public static final KEY_SOURCE_PLUGIN_NAME:Ljava/lang/String; = "sourcePluginName"

.field private static final a:Ljava/lang/String;

.field static plugins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->a:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->plugins:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static addPlugin(Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 31
    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public static clean()V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->plugins:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->cleanByVerifyId(Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public static cleanByVerifyId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 72
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->plugins:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    .line 76
    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->clear()V

    goto :goto_1

    .line 80
    :cond_3
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static cleanByVidAndPluginName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 88
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 89
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->plugins:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 94
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    .line 96
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 98
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[verifyId]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", [pluginName]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " DELETED! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;
    .locals 5

    .prologue
    .line 42
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    .line 45
    sget-object v2, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[pluginName]: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , [plugin.getPluginName()]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
