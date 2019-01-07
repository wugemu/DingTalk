.class public Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;
.super Ljava/lang/Object;
.source "PushDispatcher.java"


# static fields
.field private static final handlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/push/handler/PushHandler",
            "<+",
            "Lcom/alibaba/alimei/sdk/push/data/PushData;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/push/handler/OnFolderChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 34
    sput-object v0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->handlers:Ljava/util/HashMap;

    const-string/jumbo v1, "800"

    new-instance v2, Lcom/alibaba/alimei/sdk/push/handler/ChangedFolderHandler;

    invoke-direct {v2}, Lcom/alibaba/alimei/sdk/push/handler/ChangedFolderHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->handlers:Ljava/util/HashMap;

    const-string/jumbo v1, "700"

    new-instance v2, Lcom/alibaba/alimei/sdk/push/handler/MailSendStatusHandler;

    invoke-direct {v2}, Lcom/alibaba/alimei/sdk/push/handler/MailSendStatusHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->sListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->dispatchFromAccountEmail(Landroid/content/Context;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public static final addPushHandler(Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/handler/PushHandler;)V
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/alibaba/alimei/sdk/push/handler/PushHandler;

    .prologue
    .line 165
    sget-object v0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    return-void
.end method

.method private static final dispatchFromAccountEmail(Landroid/content/Context;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "object"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 125
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 126
    .local v0, "accountApi":Lcom/alibaba/alimei/framework/account/AccountApi;
    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 132
    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object p1

    .line 136
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 140
    :cond_3
    const-string/jumbo v7, "type"

    invoke-virtual {p2, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 141
    const-string/jumbo v7, "type"

    invoke-virtual {p2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 142
    .local v5, "jsonType":Lcom/google/gson/JsonElement;
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "dataType":Ljava/lang/String;
    sget-object v7, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->handlers:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/push/handler/PushHandler;

    .line 145
    .local v3, "handler":Lcom/alibaba/alimei/sdk/push/handler/PushHandler;
    if-eqz v3, :cond_0

    .line 147
    :try_start_0
    const-string/jumbo v7, "data"

    invoke-virtual {p2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 148
    .local v4, "jsonData":Lcom/google/gson/JsonElement;
    invoke-static {v1, v4}, Lcom/alibaba/alimei/sdk/push/data/PushData;->parsePushData(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/sdk/push/data/PushData;

    move-result-object v6

    .line 149
    .local v6, "pushData":Lcom/alibaba/alimei/sdk/push/data/PushData;
    if-eqz v6, :cond_0

    .line 150
    invoke-interface {v3, p0, p1, v6}, Lcom/alibaba/alimei/sdk/push/handler/PushHandler;->handlePushResult(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/PushData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v4    # "jsonData":Lcom/google/gson/JsonElement;
    .end local v6    # "pushData":Lcom/alibaba/alimei/sdk/push/data/PushData;
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v7, Lzb;->b:Z

    if-eqz v7, :cond_4

    .line 155
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    :cond_4
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "dispatchFromAccountEmail parse data error:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lyx;->a(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final dispatchFromArbitraryEmail(Landroid/content/Context;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "object"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 83
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 84
    .local v0, "accountApi":Lcom/alibaba/alimei/framework/account/AccountApi;
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/gson/JsonObject;)V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->queryAllAccounts(Lxv;)V

    goto :goto_0
.end method

.method public static final dispatcher(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageContent"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->dispatcher(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static final dispatcher(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "messageContent"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 48
    .local v0, "accountApi":Lcom/alibaba/alimei/framework/account/AccountApi;
    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->hasAccountLogin()Z

    move-result v4

    .line 53
    .local v4, "hasAccountLogin":Z
    const-string/jumbo v7, "PushDispatch---->>>"

    invoke-static {v7}, Lzb;->i(Ljava/lang/String;)I

    .line 54
    invoke-static {p2}, Lzb;->i(Ljava/lang/String;)I

    .line 55
    if-nez v4, :cond_1

    .line 56
    const-string/jumbo v7, "No account login when push message arrived!!"

    invoke-static {v7}, Lzb;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_1
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    .line 61
    .local v6, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v6, p2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 62
    .local v1, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 65
    .local v5, "object":Lcom/google/gson/JsonObject;
    const-string/jumbo v7, "email"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 66
    .local v3, "emailData":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "email":Ljava/lang/String;
    if-nez p1, :cond_2

    if-eqz v2, :cond_2

    .line 71
    invoke-static {p0, v2, v5}, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->dispatchFromArbitraryEmail(Landroid/content/Context;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-static {p0, p1, v5}, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->dispatchFromAccountEmail(Landroid/content/Context;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    goto :goto_0
.end method

.method public static getFolderChangeListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/push/handler/OnFolderChangeListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->sListeners:Ljava/util/List;

    return-object v0
.end method

.method public static final registerFolderChangeListener(Lcom/alibaba/alimei/sdk/push/handler/OnFolderChangeListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/alibaba/alimei/sdk/push/handler/OnFolderChangeListener;

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 175
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->sListeners:Ljava/util/List;

    if-nez v0, :cond_2

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->sListeners:Ljava/util/List;

    .line 182
    :cond_1
    sget-object v0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_2
    sget-object v0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public static final unregisterFolderChangeListener(Lcom/alibaba/alimei/sdk/push/handler/OnFolderChangeListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/alibaba/alimei/sdk/push/handler/OnFolderChangeListener;

    .prologue
    .line 186
    if-eqz p0, :cond_0

    sget-object v0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->sListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    sget-object v0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
