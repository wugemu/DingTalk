.class public Lhdr;
.super Lcom/alibaba/lightapp/runtime/PluginManager;
.source "WebViewPluginManager.java"


# static fields
.field private static final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lhdr;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhdr;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V
    .locals 0
    .param p1, "appView"    # Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/PluginManager;-><init>(Lhde;)V

    .line 24
    return-void
.end method

.method private static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    const/16 v6, 0x27

    const/4 v4, 0x0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, ""

    .local v1, "argList":Ljava/lang/String;
    move v3, v4

    .line 98
    :goto_0
    const/4 v5, 0x3

    if-ge v3, v5, :cond_3

    aget-object v0, p0, v3

    .line 99
    .local v0, "arg":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 100
    const-string/jumbo v5, "null"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :goto_1
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_0
    instance-of v5, v0, Lorg/json/JSONArray;

    if-nez v5, :cond_1

    instance-of v5, v0, Lorg/json/JSONObject;

    if-nez v5, :cond_1

    instance-of v5, v0, Ljava/lang/Integer;

    if-nez v5, :cond_1

    instance-of v5, v0, Ljava/lang/Float;

    if-nez v5, :cond_1

    instance-of v5, v0, Ljava/lang/Double;

    if-eqz v5, :cond_2

    .line 104
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 111
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "if (window.nuva) {try{ window.nuva.__js_port__("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ");}catch(e) {console.log(e);}}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "callbackId"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "keep"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 78
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v1, "r":Lorg/json/JSONObject;
    if-nez p3, :cond_0

    .line 80
    new-instance p3, Lorg/json/JSONObject;

    .end local p3    # "result":Ljava/lang/Object;
    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 83
    :cond_0
    :try_start_0
    const-string/jumbo v2, "__keep__"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v2, "__status__"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v2, "__message__"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {v2}, Lhdr;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lhdr;->c(Ljava/lang/String;)V

    .line 90
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsStatement"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 119
    iget-object v0, p0, Lhdr;->b:Lhde;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdr;->b:Lhde;

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/NuvaWebView;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lhdr;->b:Lhde;

    check-cast v0, Lcom/alibaba/lightapp/runtime/NuvaWebView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->c(Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    sget-object v0, Lhdr;->j:Ljava/lang/String;

    const-string/jumbo v1, "===== mPluginManagerContext is null or mPluginManagerContext cannot be cast to NuvaWebView ====="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p1, v0, v3

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lhdr;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhdr;->c(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public final b(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getStatus()Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-result-object v2

    .line 30
    .local v2, "status":Lcom/alibaba/lightapp/runtime/ActionResponse$Status;
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getMessage()Ljava/lang/Object;

    move-result-object v1

    .line 31
    .local v1, "message":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getKeepCallback()Z

    move-result v0

    .line 32
    .local v0, "keep":Z
    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    if-ne v3, v2, :cond_1

    .line 1052
    const-string/jumbo v3, "1"

    invoke-direct {p0, v3, p2, v1, v0}, Lhdr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    if-ne v3, v2, :cond_2

    .line 1059
    const-string/jumbo v3, "2"

    invoke-direct {p0, v3, p2, v1, v4}, Lhdr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 38
    :cond_2
    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->NO_RESULT:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    if-ne v3, v2, :cond_0

    .line 1065
    const-string/jumbo v3, "0"

    invoke-direct {p0, v3, p2, v1, v4}, Lhdr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0
.end method
