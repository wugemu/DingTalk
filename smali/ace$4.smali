.class public final Lace$4;
.super Ljava/lang/Object;
.source "MailBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Z

.field final synthetic c:Laci;

.field final synthetic d:I

.field final synthetic e:I


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/Message;ZLaci;II)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lace$4;->a:Lcom/alibaba/wukong/im/Message;

    iput-boolean p2, p0, Lace$4;->b:Z

    iput-object p3, p0, Lace$4;->c:Laci;

    iput p4, p0, Lace$4;->d:I

    iput p5, p0, Lace$4;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 224
    iget-object v8, p0, Lace$4;->a:Lcom/alibaba/wukong/im/Message;

    const-string/jumbo v9, "recverEmail"

    invoke-interface {v8, v9}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, "receiverMail":Ljava/lang/String;
    iget-object v8, p0, Lace$4;->a:Lcom/alibaba/wukong/im/Message;

    const-string/jumbo v9, "alimeiSdkData"

    invoke-interface {v8, v9}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "mailData":Ljava/lang/String;
    const-string/jumbo v8, "MailBridge"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "push (receiver email:"

    aput-object v10, v9, v11

    aput-object v7, v9, v12

    const-string/jumbo v10, ") --> handleMailMsg: "

    aput-object v10, v9, v13

    const/4 v10, 0x3

    aput-object v3, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v4, 0x0

    .line 231
    .local v4, "masterEmail":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 233
    :try_start_0
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    .line 234
    .local v6, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v6, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 235
    .local v1, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 238
    .local v5, "object":Lcom/google/gson/JsonObject;
    const-string/jumbo v8, "email"

    invoke-virtual {v5, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 239
    .local v2, "emailData":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 246
    .end local v1    # "element":Lcom/google/gson/JsonElement;
    .end local v2    # "emailData":Lcom/google/gson/JsonElement;
    .end local v5    # "object":Lcom/google/gson/JsonObject;
    .end local v6    # "parser":Lcom/google/gson/JsonParser;
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lace$4;->b:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lace$4;->c:Laci;

    if-eqz v8, :cond_1

    .line 248
    new-instance v8, Lace$4$1;

    invoke-direct {v8, p0}, Lace$4$1;-><init>(Lace$4;)V

    .line 1246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v9

    .line 1095
    new-instance v10, Lace$3;

    invoke-direct {v10, v7, v8, v4}, Lace$3;-><init>(Ljava/lang/String;Lxv;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Lcom/alibaba/alimei/framework/account/AccountApi;->queryAllAccounts(Lxv;)V

    .line 266
    :cond_1
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "MailBridge"

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "parse mail data error"

    aput-object v10, v9, v11

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
