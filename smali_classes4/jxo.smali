.class public final Ljxo;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljxo;

.field private static c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljxo;->a:Ljxo;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljxo;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljxo;->b:Landroid/content/Context;

    iget-object v0, p0, Ljxo;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Ljxo;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "notify_effect"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v0, "notify_effect"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lkav;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cause: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    sget-object v2, Lkav;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v0, "intent_uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "intent_uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    :try_start_2
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    :try_start_3
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cause: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "class_name"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "class_name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_4
    const-string/jumbo v0, "intent_flag"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "intent_flag"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    move-object v0, v2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cause by intent_flag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_5
    sget-object v2, Lkav;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "web_uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_3
    :try_start_5
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "http"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "https"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cause: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cause: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto/16 :goto_2

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    :cond_8
    move-object v2, v0

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto/16 :goto_1

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/af;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Ljxm;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/af;)Lorg/apache/thrift/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "message arrived: receiving an un-recognized message. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/af;->a:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/mipush/sdk/m; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/thrift/f; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v0, "message arrived: receive a message but decrypt failed. report when click."

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v0, "message arrived: receive a message which action string is not valid. is the reg expired?"

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/af;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "message arrived: processing an arrived message, action="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljuw;->a(Ljava/lang/String;)V

    sget-object v3, Ljxp;->a:[I

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/a;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v0, Lcom/xiaomi/xmpush/thrift/an;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/an;->l()Lcom/xiaomi/xmpush/thrift/t;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v0, "message arrived: receive an empty message without push content, drop it"

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/xiaomi/xmpush/thrift/af;->h:Lcom/xiaomi/xmpush/thrift/u;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/xiaomi/xmpush/thrift/af;->h:Lcom/xiaomi/xmpush/thrift/u;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/u;->s()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/af;->h:Lcom/xiaomi/xmpush/thrift/u;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/u;->j:Ljava/util/Map;

    const-string/jumbo v3, "jobkey"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/af;->m()Lcom/xiaomi/xmpush/thrift/u;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Ljxj;->a(Lcom/xiaomi/xmpush/thrift/an;Lcom/xiaomi/xmpush/thrift/u;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setArrivedMessage(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "message arrived: receive a message, msgid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/t;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", jobkey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljuw;->a(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/af;Z[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .locals 18

    .prologue
    .line 0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Ljxm;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/af;)Lorg/apache/thrift/a;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "receiving an un-recognized message. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/xiaomi/xmpush/thrift/af;->a:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/mipush/sdk/m; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/thrift/f; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/Throwable;)V

    .line 9000
    const-string/jumbo v2, "receive a message but decrypt failed. report now."

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/xiaomi/xmpush/thrift/ai;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/af;->m()Lcom/xiaomi/xmpush/thrift/u;

    move-result-object v3

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/u;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/ai;-><init>(Ljava/lang/String;Z)V

    sget-object v3, Lcom/xiaomi/xmpush/thrift/r;->u:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/ai;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/af;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/ai;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/xiaomi/xmpush/thrift/af;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/ai;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/xiaomi/xmpush/thrift/ai;->h:Ljava/util/Map;

    iget-object v3, v2, Lcom/xiaomi/xmpush/thrift/ai;->h:Ljava/util/Map;

    const-string/jumbo v4, "regid"

    move-object/from16 v0, p0

    iget-object v5, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v5}, Ljxf;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v3}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Ljxq;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/u;)V

    .line 0
    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v2, "receive a message which action string is not valid. is the reg expired?"

    invoke-static {v2}, Ljuw;->d(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/af;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "processing a message, action="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljuw;->a(Ljava/lang/String;)V

    sget-object v4, Ljxp;->a:[I

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/a;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_0

    :pswitch_0
    move-object v6, v2

    check-cast v6, Lcom/xiaomi/xmpush/thrift/ak;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaomi/mipush/sdk/c;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/ak;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const-string/jumbo v2, "bad Registration result:"

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/xiaomi/mipush/sdk/c;->d:Ljava/lang/String;

    iget-wide v2, v6, Lcom/xiaomi/xmpush/thrift/ak;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v2

    iget-object v3, v6, Lcom/xiaomi/xmpush/thrift/ak;->h:Ljava/lang/String;

    iget-object v4, v6, Lcom/xiaomi/xmpush/thrift/ak;->i:Ljava/lang/String;

    .line 10000
    iget-object v2, v2, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    .line 11000
    iput-object v3, v2, Lcom/xiaomi/mipush/sdk/c$a;->c:Ljava/lang/String;

    iput-object v4, v2, Lcom/xiaomi/mipush/sdk/c$a;->d:Ljava/lang/String;

    iget-object v5, v2, Lcom/xiaomi/mipush/sdk/c$a;->k:Landroid/content/Context;

    invoke-static {v5}, Ljul;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/xiaomi/mipush/sdk/c$a;->f:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/c$a;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/xiaomi/mipush/sdk/c$a;->e:Ljava/lang/String;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/xiaomi/mipush/sdk/c$a;->h:Z

    iget-object v5, v2, Lcom/xiaomi/mipush/sdk/c$a;->k:Landroid/content/Context;

    .line 12000
    const-string/jumbo v7, "mipush"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 11000
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v7, "regId"

    invoke-interface {v5, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "regSec"

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "devId"

    iget-object v4, v2, Lcom/xiaomi/mipush/sdk/c$a;->f:Ljava/lang/String;

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "vName"

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/c$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "valid"

    const/4 v3, 0x1

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 0
    :cond_5
    const/4 v3, 0x0

    iget-object v2, v6, Lcom/xiaomi/xmpush/thrift/ak;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v6, Lcom/xiaomi/xmpush/thrift/ak;->h:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string/jumbo v2, "register"

    iget-wide v4, v6, Lcom/xiaomi/xmpush/thrift/ak;->f:J

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/ak;->g:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ljxj;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v2

    invoke-virtual {v2}, Ljxq;->e()V

    goto/16 :goto_0

    :pswitch_1
    check-cast v2, Lcom/xiaomi/xmpush/thrift/ar;

    iget-wide v2, v2, Lcom/xiaomi/xmpush/thrift/ar;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/c;->b()V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxf;->e(Landroid/content/Context;)V

    :cond_7
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v3

    .line 13000
    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-boolean v3, v3, Lcom/xiaomi/mipush/sdk/c$a;->i:Z

    .line 0
    if-eqz v3, :cond_8

    if-nez p2, :cond_8

    const-string/jumbo v2, "receive a message in pause state. drop it"

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    check-cast v2, Lcom/xiaomi/xmpush/thrift/an;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/an;->l()Lcom/xiaomi/xmpush/thrift/t;

    move-result-object v6

    if-nez v6, :cond_9

    const-string/jumbo v2, "receive an empty message without push content, drop it"

    invoke-static {v2}, Ljuw;->d(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_9
    if-eqz p2, :cond_a

    invoke-static/range {p1 .. p1}, Lkak;->b(Lcom/xiaomi/xmpush/thrift/af;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/t;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/af;->m()Lcom/xiaomi/xmpush/thrift/u;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/af;->f:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/t;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v4, v5, v7, v8}, Ljxf;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/u;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_2
    if-nez p2, :cond_b

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/an;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/an;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljxf;->h(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-gez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/an;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljxf;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    :goto_3
    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/xiaomi/xmpush/thrift/af;->h:Lcom/xiaomi/xmpush/thrift/u;

    if-eqz v5, :cond_c

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/xiaomi/xmpush/thrift/af;->h:Lcom/xiaomi/xmpush/thrift/u;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/u;->s()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_c

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/xiaomi/xmpush/thrift/af;->h:Lcom/xiaomi/xmpush/thrift/u;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/u;->j:Ljava/util/Map;

    const-string/jumbo v5, "jobkey"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/t;->b()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    :goto_4
    if-nez p2, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v3, v5}, Ljxo;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "drop a duplicate message, key="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljuw;->a(Ljava/lang/String;)V

    move-object v3, v4

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/af;->m()Lcom/xiaomi/xmpush/thrift/u;

    move-result-object v4

    if-nez v4, :cond_0

    if-nez p2, :cond_0

    .line 14000
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/af;->m()Lcom/xiaomi/xmpush/thrift/u;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/xmpush/thrift/z;

    invoke-direct {v5}, Lcom/xiaomi/xmpush/thrift/z;-><init>()V

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/an;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaomi/xmpush/thrift/z;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/z;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/an;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaomi/xmpush/thrift/z;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/z;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/an;->l()Lcom/xiaomi/xmpush/thrift/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/t;->h()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/xiaomi/xmpush/thrift/z;->a(J)Lcom/xiaomi/xmpush/thrift/z;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/an;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/an;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaomi/xmpush/thrift/z;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/z;

    :cond_e
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/an;->j()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/an;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/xiaomi/xmpush/thrift/z;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/z;

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lkev;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/af;)S

    move-result v2

    invoke-virtual {v5, v2}, Lcom/xiaomi/xmpush/thrift/z;->a(S)Lcom/xiaomi/xmpush/thrift/z;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v2

    sget-object v6, Lcom/xiaomi/xmpush/thrift/a;->f:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {v2, v5, v6, v4}, Ljxq;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;Lcom/xiaomi/xmpush/thrift/u;)V

    goto/16 :goto_0

    .line 0
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/t;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/af;->m()Lcom/xiaomi/xmpush/thrift/u;

    move-result-object v5

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/t;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v7}, Ljxf;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/u;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/an;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/an;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljxf;->g(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-gez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/an;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljxf;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/af;->m()Lcom/xiaomi/xmpush/thrift/u;

    move-result-object v3

    move/from16 v0, p2

    invoke-static {v2, v3, v0}, Ljxj;->a(Lcom/xiaomi/xmpush/thrift/an;Lcom/xiaomi/xmpush/thrift/u;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getPassThrough()I

    move-result v4

    if-nez v4, :cond_13

    if-nez p2, :cond_13

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lkak;->a(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1}, Lkak;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/af;[B)Lkak$b;

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "receive a message, msgid="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/t;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", jobkey="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljuw;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_d

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "notify_effect"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v2, "notify_effect"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkak;->b(Lcom/xiaomi/xmpush/thrift/af;)Z

    move-result v5

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/xiaomi/xmpush/thrift/af;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Ljxo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_14

    const-string/jumbo v2, "Getting Intent fail from ignore reg message. "

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/t;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string/jumbo v4, "payload"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_16
    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Ljxo;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljxo;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Ljxo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_16

    sget-object v5, Lkav;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string/jumbo v2, "key_message"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :pswitch_3
    move-object v7, v2

    check-cast v7, Lcom/xiaomi/xmpush/thrift/ap;

    iget-wide v2, v7, Lcom/xiaomi/xmpush/thrift/ap;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/ap;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljxf;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_19
    const/4 v3, 0x0

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/ap;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/ap;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    const-string/jumbo v2, "subscribe-topic"

    iget-wide v4, v7, Lcom/xiaomi/xmpush/thrift/ap;->f:J

    iget-object v6, v7, Lcom/xiaomi/xmpush/thrift/ap;->g:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/ap;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Ljxj;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_4
    move-object v7, v2

    check-cast v7, Lcom/xiaomi/xmpush/thrift/at;

    iget-wide v2, v7, Lcom/xiaomi/xmpush/thrift/at;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/at;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljxf;->f(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1b
    const/4 v3, 0x0

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/at;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/at;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    const-string/jumbo v2, "unsubscibe-topic"

    iget-wide v4, v7, Lcom/xiaomi/xmpush/thrift/at;->f:J

    iget-object v6, v7, Lcom/xiaomi/xmpush/thrift/at;->g:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/at;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Ljxj;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_5
    move-object v7, v2

    check-cast v7, Lcom/xiaomi/xmpush/thrift/ae;

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/ae;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/ae;->k()Ljava/util/List;

    move-result-object v5

    iget-wide v8, v7, Lcom/xiaomi/xmpush/thrift/ae;->g:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_23

    const-string/jumbo v3, "accept-time"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    if-eqz v5, :cond_1f

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v6, v0, Ljxo;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v3, v4}, Ljxf;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "00:00"

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string/jumbo v3, "00:00"

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/xiaomi/mipush/sdk/c;->a(Z)V

    :goto_6
    const-string/jumbo v3, "GMT+08"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 15000
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v3, v5

    .line 0
    :goto_7
    iget-wide v4, v7, Lcom/xiaomi/xmpush/thrift/ae;->g:J

    iget-object v6, v7, Lcom/xiaomi/xmpush/thrift/ae;->h:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/ae;->m()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Ljxj;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v3

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/xiaomi/mipush/sdk/c;->a(Z)V

    goto :goto_6

    .line 15000
    :cond_1e
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v3, v3, 0x3c

    int-to-long v8, v3

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v3, 0x1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const/4 v3, 0x1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v16, 0x3c

    mul-long v10, v10, v16

    add-long/2addr v10, v12

    sub-long/2addr v10, v8

    const-wide/16 v12, 0x5a0

    add-long/2addr v10, v12

    const-wide/16 v12, 0x5a0

    rem-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v14

    add-long/2addr v4, v12

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x5a0

    add-long/2addr v4, v8

    const-wide/16 v8, 0x5a0

    rem-long/2addr v4, v8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v6, "%1$02d:%2$02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v12, 0x3c

    div-long v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x1

    const-wide/16 v12, 0x3c

    rem-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "%1$02d:%2$02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v10, 0x3c

    div-long v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-wide/16 v10, 0x3c

    rem-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 0
    :cond_1f
    const-string/jumbo v3, "set-alias"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    if-eqz v5, :cond_20

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Ljxo;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Ljxf;->a(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, v5

    goto/16 :goto_7

    :cond_20
    const-string/jumbo v3, "unset-alias"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    if-eqz v5, :cond_21

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Ljxo;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Ljxf;->b(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, v5

    goto/16 :goto_7

    :cond_21
    const-string/jumbo v3, "set-account"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    if-eqz v5, :cond_22

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Ljxo;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Ljxf;->c(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, v5

    goto/16 :goto_7

    :cond_22
    const-string/jumbo v3, "unset-account"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    if-eqz v5, :cond_23

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Ljxo;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Ljxf;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_23
    move-object v3, v5

    goto/16 :goto_7

    :pswitch_6
    instance-of v3, v2, Lcom/xiaomi/xmpush/thrift/aa;

    if-eqz v3, :cond_33

    check-cast v2, Lcom/xiaomi/xmpush/thrift/aa;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/aa;->c()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/xmpush/thrift/r;->M:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v4, v4, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    iget-object v5, v2, Lcom/xiaomi/xmpush/thrift/aa;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    iget-wide v4, v2, Lcom/xiaomi/xmpush/thrift/aa;->g:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_25

    const-class v4, Ljxl;

    monitor-enter v4

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljxl;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljxl;->c(Ljava/lang/String;)V

    const-string/jumbo v2, "syncing"

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v3}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v3

    sget-object v5, Lcom/xiaomi/mipush/sdk/ao;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-virtual {v3, v5}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/mipush/sdk/ao;->a:Lcom/xiaomi/mipush/sdk/ao;

    const-string/jumbo v5, "synced"

    invoke-virtual {v2, v3, v5}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxf;->m(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxf;->f(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v2

    .line 16000
    invoke-virtual {v2}, Ljxq;->b()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "com.xiaomi.mipush.DISABLE_PUSH"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljxq;->b(Landroid/content/Intent;)V

    .line 0
    :cond_24
    monitor-exit v4

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_25
    const-string/jumbo v2, "syncing"

    move-object/from16 v0, p0

    iget-object v4, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v4}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/ao;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-virtual {v4, v5}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-class v4, Ljxl;

    monitor-enter v4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljxl;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljxl;->b(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0xa

    if-ge v2, v5, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljxl;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3}, Ljxq;->a(ZLjava/lang/String;)V

    :cond_26
    :goto_8
    monitor-exit v4

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_27
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljxl;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljxl;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_29
    sget-object v4, Lcom/xiaomi/xmpush/thrift/r;->N:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v4, v4, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    iget-object v5, v2, Lcom/xiaomi/xmpush/thrift/aa;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-wide v4, v2, Lcom/xiaomi/xmpush/thrift/aa;->g:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_2b

    const-class v4, Ljxl;

    monitor-enter v4

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljxl;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljxl;->c(Ljava/lang/String;)V

    const-string/jumbo v2, "syncing"

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v3}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v3

    sget-object v5, Lcom/xiaomi/mipush/sdk/ao;->b:Lcom/xiaomi/mipush/sdk/ao;

    invoke-virtual {v3, v5}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/mipush/sdk/ao;->b:Lcom/xiaomi/mipush/sdk/ao;

    const-string/jumbo v5, "synced"

    invoke-virtual {v2, v3, v5}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;Ljava/lang/String;)V

    :cond_2a
    monitor-exit v4

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    :cond_2b
    const-string/jumbo v2, "syncing"

    move-object/from16 v0, p0

    iget-object v4, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v4}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/ao;->b:Lcom/xiaomi/mipush/sdk/ao;

    invoke-virtual {v4, v5}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-class v4, Ljxl;

    monitor-enter v4

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljxl;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljxl;->b(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0xa

    if-ge v2, v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljxl;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljxq;->a(ZLjava/lang/String;)V

    :cond_2c
    :goto_9
    monitor-exit v4

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2

    :cond_2d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljxl;->c(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_9

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljxl;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2f
    sget-object v3, Lcom/xiaomi/xmpush/thrift/r;->U:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaomi/xmpush/thrift/aa;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17000
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/aa;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/aa;->j()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_32

    const-string/jumbo v5, "RegInfo"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "brand:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/xiaomi/mipush/sdk/ac;->c:Lcom/xiaomi/mipush/sdk/ac;

    invoke-virtual {v6}, Lcom/xiaomi/mipush/sdk/ac;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    const-string/jumbo v3, "receiver fcm token sync ack"

    invoke-static {v3}, Ljuw;->c(Ljava/lang/String;)V

    iget-wide v2, v2, Lcom/xiaomi/xmpush/thrift/aa;->g:J

    sget-object v5, Lcom/xiaomi/mipush/sdk/d;->b:Lcom/xiaomi/mipush/sdk/d;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3, v5}, Ljxo;->a(Ljava/lang/String;JLcom/xiaomi/mipush/sdk/d;)V

    goto/16 :goto_1

    :cond_30
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "brand:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/xiaomi/mipush/sdk/ac;->a:Lcom/xiaomi/mipush/sdk/ac;

    invoke-virtual {v6}, Lcom/xiaomi/mipush/sdk/ac;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    const-string/jumbo v3, "receiver hw token sync ack"

    invoke-static {v3}, Ljuw;->c(Ljava/lang/String;)V

    iget-wide v2, v2, Lcom/xiaomi/xmpush/thrift/aa;->g:J

    sget-object v5, Lcom/xiaomi/mipush/sdk/d;->a:Lcom/xiaomi/mipush/sdk/d;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3, v5}, Ljxo;->a(Ljava/lang/String;JLcom/xiaomi/mipush/sdk/d;)V

    goto/16 :goto_1

    :cond_31
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "brand:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/xiaomi/mipush/sdk/ac;->d:Lcom/xiaomi/mipush/sdk/ac;

    invoke-virtual {v6}, Lcom/xiaomi/mipush/sdk/ac;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "receiver COS token sync ack"

    invoke-static {v3}, Ljuw;->c(Ljava/lang/String;)V

    iget-wide v2, v2, Lcom/xiaomi/xmpush/thrift/aa;->g:J

    sget-object v5, Lcom/xiaomi/mipush/sdk/d;->c:Lcom/xiaomi/mipush/sdk/d;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3, v5}, Ljxo;->a(Ljava/lang/String;JLcom/xiaomi/mipush/sdk/d;)V

    goto/16 :goto_1

    :cond_32
    const-string/jumbo v3, "receiver hw token sync ack"

    invoke-static {v3}, Ljuw;->c(Ljava/lang/String;)V

    iget-wide v2, v2, Lcom/xiaomi/xmpush/thrift/aa;->g:J

    sget-object v5, Lcom/xiaomi/mipush/sdk/d;->a:Lcom/xiaomi/mipush/sdk/d;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3, v5}, Ljxo;->a(Ljava/lang/String;JLcom/xiaomi/mipush/sdk/d;)V

    goto/16 :goto_1

    .line 0
    :cond_33
    instance-of v3, v2, Lcom/xiaomi/xmpush/thrift/ai;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/xiaomi/xmpush/thrift/ai;

    const-string/jumbo v3, "registration id expired"

    iget-object v4, v2, Lcom/xiaomi/xmpush/thrift/ai;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxf;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v3}, Ljxf;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v4}, Ljxf;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v5}, Ljxf;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ljxo;->b:Landroid/content/Context;

    sget-object v7, Lcom/xiaomi/xmpush/thrift/w;->a:Lcom/xiaomi/xmpush/thrift/w;

    invoke-static {v6, v7}, Ljxf;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/w;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Ljxo;->b:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v2, v8}, Ljxf;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_34
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljxo;->b:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v2, v7}, Ljxf;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_35
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljxo;->b:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v2, v6}, Ljxf;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_36
    const-string/jumbo v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-static {v3, v4, v2}, Ljxf;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_37
    const-string/jumbo v3, "client_info_update_ok"

    iget-object v4, v2, Lcom/xiaomi/xmpush/thrift/ai;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "app_version"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "app_version"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v3

    .line 18000
    iget-object v4, v3, Lcom/xiaomi/mipush/sdk/c;->a:Landroid/content/Context;

    .line 19000
    const-string/jumbo v5, "mipush"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 18000
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "vName"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iput-object v2, v3, Lcom/xiaomi/mipush/sdk/c$a;->e:Ljava/lang/String;

    goto/16 :goto_1

    .line 0
    :cond_38
    const-string/jumbo v3, "awake_app"

    iget-object v4, v2, Lcom/xiaomi/xmpush/thrift/ai;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "packages"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "packages"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Ljxf;->a(Landroid/content/Context;[Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_39
    sget-object v3, Lcom/xiaomi/xmpush/thrift/r;->n:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaomi/xmpush/thrift/ai;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    new-instance v3, Lcom/xiaomi/xmpush/thrift/ah;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/ah;-><init>()V

    :try_start_7
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->m()[B

    move-result-object v2

    invoke-static {v3, v2}, Lkev;->a(Lorg/apache/thrift/a;[B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Lkaq;->a(Landroid/content/Context;)Lkaq;

    move-result-object v2

    invoke-static {v2, v3}, Lkar;->a(Lkaq;Lcom/xiaomi/xmpush/thrift/ah;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljyb;->a(Landroid/content/Context;)V
    :try_end_7
    .catch Lorg/apache/thrift/f; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_3a
    sget-object v3, Lcom/xiaomi/xmpush/thrift/r;->o:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaomi/xmpush/thrift/ai;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    new-instance v3, Lcom/xiaomi/xmpush/thrift/ag;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/ag;-><init>()V

    :try_start_8
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->m()[B

    move-result-object v2

    invoke-static {v3, v2}, Lkev;->a(Lorg/apache/thrift/a;[B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Lkaq;->a(Landroid/content/Context;)Lkaq;

    move-result-object v2

    .line 20000
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/ag;->a()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lkar;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkaq;->b(Ljava/util/List;)V

    .line 0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljyb;->a(Landroid/content/Context;)V
    :try_end_8
    .catch Lorg/apache/thrift/f; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_3b
    sget-object v3, Lcom/xiaomi/xmpush/thrift/r;->w:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaomi/xmpush/thrift/ai;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Ljxw;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ai;)V

    goto/16 :goto_1

    :cond_3c
    sget-object v3, Lcom/xiaomi/xmpush/thrift/r;->x:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaomi/xmpush/thrift/ai;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string/jumbo v2, "receive force sync notification"

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljxw;->a(Landroid/content/Context;Z)V

    goto/16 :goto_1

    :cond_3d
    sget-object v3, Lcom/xiaomi/xmpush/thrift/r;->D:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaomi/xmpush/thrift/ai;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v3}, Ljyi;->a(Landroid/content/Context;)Ljyi;

    move-result-object v14

    .line 21000
    invoke-virtual {v14, v2}, Ljyi;->a(Lcom/xiaomi/xmpush/thrift/ai;)Z

    move-result v3

    invoke-virtual {v14, v2, v3}, Ljyi;->a(Lcom/xiaomi/xmpush/thrift/ai;Z)Lcom/xiaomi/xmpush/thrift/m;

    move-result-object v15

    if-nez v15, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GeoFenceRegMessageProcessor. registration convert geofence object failed notification_id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3e
    iget-object v2, v14, Ljyi;->a:Landroid/content/Context;

    invoke-static {v2}, Lkcg;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3f

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v14, v15, v2, v3}, Ljyi;->a(Lcom/xiaomi/xmpush/thrift/m;ZZ)V

    goto/16 :goto_1

    :cond_3f
    iget-object v2, v14, Ljyi;->a:Landroid/content/Context;

    invoke-virtual {v15}, Lcom/xiaomi/xmpush/thrift/m;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/channel/commonutils/android/a;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    if-eqz v3, :cond_2

    invoke-virtual {v14, v15}, Ljyi;->a(Lcom/xiaomi/xmpush/thrift/m;)V

    goto/16 :goto_1

    :cond_40
    if-nez v3, :cond_41

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v14, v15, v2, v3}, Ljyi;->a(Lcom/xiaomi/xmpush/thrift/m;ZZ)V

    goto/16 :goto_1

    :cond_41
    iget-object v2, v14, Ljyi;->a:Landroid/content/Context;

    invoke-static {v2}, Lkce;->a(Landroid/content/Context;)Lkce;

    move-result-object v2

    invoke-virtual {v2, v15}, Lkce;->a(Lcom/xiaomi/xmpush/thrift/m;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_42

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GeoFenceRegMessageProcessor. insert a new geofence failed about geo_id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/xiaomi/xmpush/thrift/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    :cond_42
    new-instance v3, Lcom/xiaomi/mipush/sdk/q;

    iget-object v2, v14, Ljyi;->a:Landroid/content/Context;

    invoke-direct {v3, v2}, Lcom/xiaomi/mipush/sdk/q;-><init>(Landroid/content/Context;)V

    .line 22000
    if-nez v15, :cond_44

    .line 21000
    :cond_43
    :goto_d
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v14, v15, v2, v3}, Ljyi;->a(Lcom/xiaomi/xmpush/thrift/m;ZZ)V

    const-string/jumbo v2, "GeoFenceRegMessageProcessor. receive geo reg notification"

    invoke-static {v2}, Ljuw;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 22000
    :cond_44
    invoke-virtual {v15}, Lcom/xiaomi/xmpush/thrift/m;->m()Lcom/xiaomi/xmpush/thrift/o;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-virtual {v15}, Lcom/xiaomi/xmpush/thrift/m;->o()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_43

    invoke-virtual {v15}, Lcom/xiaomi/xmpush/thrift/m;->m()Lcom/xiaomi/xmpush/thrift/o;

    move-result-object v6

    iget-object v2, v3, Lcom/xiaomi/mipush/sdk/q;->a:Lcom/xiaomi/metoknlp/geofencing/a;

    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/o;->c()D

    move-result-wide v4

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/o;->a()D

    move-result-wide v6

    invoke-virtual {v15}, Lcom/xiaomi/xmpush/thrift/m;->o()D

    move-result-wide v8

    double-to-float v8, v8

    const-wide/16 v9, -0x1

    const-string/jumbo v11, "com.xiaomi.xmsf"

    invoke-virtual {v15}, Lcom/xiaomi/xmpush/thrift/m;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15}, Lcom/xiaomi/xmpush/thrift/m;->s()Lcom/xiaomi/xmpush/thrift/j;

    move-result-object v13

    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/j;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v2 .. v13}, Lcom/xiaomi/metoknlp/geofencing/a;->a(Landroid/content/Context;DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 0
    :cond_45
    sget-object v3, Lcom/xiaomi/xmpush/thrift/r;->F:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaomi/xmpush/thrift/ai;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v3}, Ljyi;->a(Landroid/content/Context;)Ljyi;

    move-result-object v3

    .line 23000
    invoke-virtual {v3, v2}, Ljyi;->a(Lcom/xiaomi/xmpush/thrift/ai;)Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljyi;->a(Lcom/xiaomi/xmpush/thrift/ai;Z)Lcom/xiaomi/xmpush/thrift/m;

    move-result-object v5

    if-nez v5, :cond_46

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GeoFenceRegMessageProcessor. unregistration convert geofence object failed notification_id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_46
    iget-object v2, v3, Ljyi;->a:Landroid/content/Context;

    invoke-static {v2}, Lkcg;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_47

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v2, v4}, Ljyi;->a(Lcom/xiaomi/xmpush/thrift/m;ZZ)V

    goto/16 :goto_1

    :cond_47
    iget-object v2, v3, Ljyi;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/m;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/xiaomi/channel/commonutils/android/a;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_48

    if-eqz v4, :cond_2

    invoke-virtual {v3, v5}, Ljyi;->a(Lcom/xiaomi/xmpush/thrift/m;)V

    goto/16 :goto_1

    :cond_48
    if-nez v4, :cond_49

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v2, v4}, Ljyi;->a(Lcom/xiaomi/xmpush/thrift/m;ZZ)V

    goto/16 :goto_1

    :cond_49
    iget-object v2, v3, Ljyi;->a:Landroid/content/Context;

    invoke-static {v2}, Lkce;->a(Landroid/content/Context;)Lkce;

    move-result-object v2

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lkce;->d(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GeoFenceRegMessageProcessor. delete a geofence about geo_id:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " falied"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    :cond_4a
    iget-object v2, v3, Ljyi;->a:Landroid/content/Context;

    invoke-static {v2}, Lkcf;->a(Landroid/content/Context;)Lkcf;

    move-result-object v2

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lkcf;->b(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GeoFenceRegMessageProcessor. delete all geofence messages about geo_id:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " failed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    :cond_4b
    new-instance v2, Lcom/xiaomi/mipush/sdk/q;

    iget-object v4, v3, Ljyi;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/xiaomi/mipush/sdk/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/m;->a()Ljava/lang/String;

    move-result-object v4

    .line 24000
    iget-object v6, v2, Lcom/xiaomi/mipush/sdk/q;->a:Lcom/xiaomi/metoknlp/geofencing/a;

    iget-object v2, v2, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    const-string/jumbo v7, "com.xiaomi.xmsf"

    invoke-virtual {v6, v2, v7, v4}, Lcom/xiaomi/metoknlp/geofencing/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 23000
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v2, v4}, Ljyi;->a(Lcom/xiaomi/xmpush/thrift/m;ZZ)V

    const-string/jumbo v2, "GeoFenceRegMessageProcessor. receive geo unreg notification"

    invoke-static {v2}, Ljuw;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 0
    :cond_4c
    sget-object v3, Lcom/xiaomi/xmpush/thrift/r;->H:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaomi/xmpush/thrift/ai;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    move-object/from16 v0, p0

    iget-object v3, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v3}, Ljyi;->a(Landroid/content/Context;)Ljyi;

    move-result-object v3

    .line 25000
    iget-object v4, v3, Ljyi;->a:Landroid/content/Context;

    invoke-static {v4}, Lkcg;->c(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v2}, Ljyi;->a(Lcom/xiaomi/xmpush/thrift/ai;)Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v5, v3, Ljyi;->a:Landroid/content/Context;

    invoke-static {v5}, Lkcg;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_4d
    if-eqz v4, :cond_4e

    iget-object v5, v3, Ljyi;->a:Landroid/content/Context;

    invoke-static {v5}, Lkcg;->b(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_4e
    iget-object v5, v3, Ljyi;->a:Landroid/content/Context;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/ai;->i:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/xiaomi/channel/commonutils/android/a;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3, v4}, Ljyi;->a(Z)Lcom/xiaomi/xmpush/thrift/v;

    move-result-object v2

    invoke-static {v2}, Lkev;->a(Lorg/apache/thrift/a;)[B

    move-result-object v4

    new-instance v5, Lcom/xiaomi/xmpush/thrift/ai;

    const-string/jumbo v6, "-1"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/xiaomi/xmpush/thrift/ai;-><init>(Ljava/lang/String;Z)V

    sget-object v6, Lcom/xiaomi/xmpush/thrift/r;->I:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/xiaomi/xmpush/thrift/ai;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    invoke-virtual {v5, v4}, Lcom/xiaomi/xmpush/thrift/ai;->a([B)Lcom/xiaomi/xmpush/thrift/ai;

    iget-object v3, v3, Ljyi;->a:Landroid/content/Context;

    invoke-static {v3}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v6, v7}, Ljxq;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/u;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GeoFenceRegMessageProcessor. sync_geo_data. geos size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/v;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 0
    :cond_4f
    sget-object v3, Lcom/xiaomi/xmpush/thrift/r;->L:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaomi/xmpush/thrift/ai;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    const/4 v4, -0x2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v3

    sget-object v5, Lkav;->I:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v3

    sget-object v5, Lkav;->I:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_55

    :try_start_9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4

    move-result v3

    :goto_e
    const/4 v4, -0x1

    if-lt v3, v4, :cond_50

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2, v3}, Ljxf;->a(Landroid/content/Context;I)V

    goto/16 :goto_1

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v3, -0x2

    goto :goto_e

    :cond_50
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v5

    sget-object v6, Lkav;->G:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v3

    sget-object v5, Lkav;->G:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_51
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v5

    sget-object v6, Lkav;->H:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v2

    sget-object v4, Lkav;->H:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v4, v3, v2}, Ljxf;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_52
    sget-object v3, Lcom/xiaomi/xmpush/thrift/r;->R:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaomi/xmpush/thrift/ai;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    :try_start_a
    new-instance v3, Lcom/xiaomi/xmpush/thrift/ak;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/ak;-><init>()V

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->m()[B

    move-result-object v2

    invoke-static {v3, v2}, Lkev;->a(Lorg/apache/thrift/a;[B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2, v3}, Ljxg;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ak;)V
    :try_end_a
    .catch Lorg/apache/thrift/f; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_53
    sget-object v3, Lcom/xiaomi/xmpush/thrift/r;->T:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaomi/xmpush/thrift/ai;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_b
    new-instance v3, Lcom/xiaomi/xmpush/thrift/ar;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/ar;-><init>()V

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ai;->m()[B

    move-result-object v2

    invoke-static {v3, v2}, Lkev;->a(Lorg/apache/thrift/a;[B)V

    invoke-static {v3}, Ljxg;->a(Lcom/xiaomi/xmpush/thrift/ar;)V
    :try_end_b
    .catch Lorg/apache/thrift/f; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_54
    move-object v2, v4

    goto :goto_f

    :cond_55
    move v3, v4

    goto/16 :goto_e

    :cond_56
    move-object v5, v3

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Ljxo;
    .locals 1

    sget-object v0, Ljxo;->a:Ljxo;

    if-nez v0, :cond_0

    new-instance v0, Ljxo;

    invoke-direct {v0, p0}, Ljxo;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljxo;->a:Ljxo;

    :cond_0
    sget-object v0, Ljxo;->a:Ljxo;

    return-object v0
.end method

.method private a(Ljava/lang/String;JLcom/xiaomi/mipush/sdk/d;)V
    .locals 4

    invoke-static {p4}, Ljyd;->a(Lcom/xiaomi/mipush/sdk/d;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-nez v1, :cond_2

    const-class v1, Ljxl;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljxl;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljxl;->c(Ljava/lang/String;)V

    const-string/jumbo v2, "syncing"

    iget-object v3, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v3}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    const-string/jumbo v3, "synced"

    invoke-virtual {v2, v0, v3}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;Ljava/lang/String;)V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const-string/jumbo v1, "syncing"

    iget-object v2, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-class v1, Ljxl;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljxl;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljxl;->b(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_4

    iget-object v2, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljxl;->a(Ljava/lang/String;)V

    iget-object v2, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p4}, Ljxq;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/ao;Lcom/xiaomi/mipush/sdk/d;)V

    :cond_3
    :goto_1
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    :try_start_2
    iget-object v0, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v0}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljxl;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v0}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljxl;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 0
    sget-object v2, Ljxo;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    .line 26000
    const-string/jumbo v1, "mipush"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 0
    sget-object v1, Ljxo;->c:Ljava/util/Queue;

    if-nez v1, :cond_0

    const-string/jumbo v1, "pref_msg_ids"

    const-string/jumbo v4, ""

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Ljxo;->c:Ljava/util/Queue;

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    sget-object v7, Ljxo;->c:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Ljxo;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    monitor-exit v2

    :goto_1
    return v0

    :cond_1
    sget-object v1, Ljxo;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljxo;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v4, 0x19

    if-le v1, v4, :cond_2

    sget-object v1, Ljxo;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_2
    sget-object v1, Ljxo;->c:Ljava/util/Queue;

    const-string/jumbo v4, ","

    invoke-static {v1, v4}, Ljvt;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "pref_msg_ids"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v3}, Ljxv;->a(Landroid/content/SharedPreferences$Editor;)V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "receive an intent from server, action="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "mrt"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v5, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string/jumbo v4, "mipush_payload"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    const-string/jumbo v5, "mipush_notified"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v4, :cond_1

    const-string/jumbo v0, "receiving an empty message, drop"

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v6, Lcom/xiaomi/xmpush/thrift/af;

    invoke-direct {v6}, Lcom/xiaomi/xmpush/thrift/af;-><init>()V

    :try_start_0
    invoke-static {v6, v4}, Lkev;->a(Lorg/apache/thrift/a;[B)V

    iget-object v7, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v7

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/af;->m()Lcom/xiaomi/xmpush/thrift/u;

    move-result-object v8

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/af;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v9

    sget-object v10, Lcom/xiaomi/xmpush/thrift/a;->e:Lcom/xiaomi/xmpush/thrift/a;

    if-ne v9, v10, :cond_3

    if-eqz v8, :cond_3

    .line 1000
    iget-object v9, v7, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-boolean v9, v9, Lcom/xiaomi/mipush/sdk/c$a;->i:Z

    .line 0
    if-nez v9, :cond_3

    if-nez v5, :cond_3

    const-string/jumbo v9, "mrt"

    invoke-virtual {v8, v9, v0}, Lcom/xiaomi/xmpush/thrift/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mat"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Lcom/xiaomi/xmpush/thrift/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    const-string/jumbo v0, "com.miui.hybrid"

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/af;->j()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/af;->m()Lcom/xiaomi/xmpush/thrift/u;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/af;->m()Lcom/xiaomi/xmpush/thrift/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/u;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v9, "1"

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/af;->m()Lcom/xiaomi/xmpush/thrift/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/u;->s()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v10, "hybrid_pt"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 0
    :goto_1
    if-nez v0, :cond_5

    .line 3000
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/af;->m()Lcom/xiaomi/xmpush/thrift/u;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/xmpush/thrift/z;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/z;-><init>()V

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/af;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/z;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/z;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/u;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/z;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/z;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/u;->d()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/xiaomi/xmpush/thrift/z;->a(J)Lcom/xiaomi/xmpush/thrift/z;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/u;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/u;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/z;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/z;

    :cond_2
    iget-object v0, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v0, v6}, Lkev;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/af;)S

    move-result v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/z;->a(S)Lcom/xiaomi/xmpush/thrift/z;

    iget-object v0, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    sget-object v3, Lcom/xiaomi/xmpush/thrift/a;->f:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v9, 0x0

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/af;->m()Lcom/xiaomi/xmpush/thrift/u;

    move-result-object v10

    invoke-virtual {v0, v2, v3, v9, v10}, Ljxq;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/u;)V

    .line 0
    :cond_3
    :goto_2
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/af;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->e:Lcom/xiaomi/xmpush/thrift/a;

    if-ne v0, v2, :cond_a

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/af;->c()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v6}, Lkak;->b(Lcom/xiaomi/xmpush/thrift/af;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v2, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/af;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/u;->b()Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v3

    .line 2000
    goto :goto_1

    .line 0
    :cond_5
    const-string/jumbo v0, "this is a mina\'s pass through message, ack later"

    invoke-static {v0}, Ljuw;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "__mina_message_ts"

    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/u;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/xiaomi/xmpush/thrift/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "__mina_device_status"

    iget-object v2, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v2, v6}, Lkev;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/af;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/xiaomi/xmpush/thrift/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "__mina_appid"

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/af;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/xiaomi/xmpush/thrift/u;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/thrift/f; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    :try_start_1
    const-string/jumbo v0, ""

    goto :goto_3

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/u;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/u;->s()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "notify_effect"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    const-string/jumbo v0, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/af;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/u;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 4000
    :cond_a
    iget-object v0, v7, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c$a;->a()Z

    move-result v0

    .line 0
    if-nez v0, :cond_c

    iget-object v0, v6, Lcom/xiaomi/xmpush/thrift/af;->a:Lcom/xiaomi/xmpush/thrift/a;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->a:Lcom/xiaomi/xmpush/thrift/a;

    if-eq v0, v2, :cond_c

    invoke-static {v6}, Lkak;->b(Lcom/xiaomi/xmpush/thrift/af;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v6, v5, v4}, Ljxo;->a(Lcom/xiaomi/xmpush/thrift/af;Z[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "receive message without registration. need re-register!"

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    .line 5000
    iget-object v0, p0, Ljxo;->b:Landroid/content/Context;

    const-string/jumbo v2, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "last_reinitialize"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    iget-object v4, p0, Ljxo;->b:Landroid/content/Context;

    sget-object v5, Lcom/xiaomi/xmpush/thrift/w;->b:Lcom/xiaomi/xmpush/thrift/w;

    invoke-static {v4, v5}, Ljxf;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/w;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v4, "last_reinitialize"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lorg/apache/thrift/f; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 0
    :catch_1
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 6000
    :cond_c
    :try_start_2
    iget-object v0, v7, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c$a;->a()Z

    move-result v0

    .line 0
    if-eqz v0, :cond_e

    invoke-virtual {v7}, Lcom/xiaomi/mipush/sdk/c;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v6, Lcom/xiaomi/xmpush/thrift/af;->a:Lcom/xiaomi/xmpush/thrift/a;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->b:Lcom/xiaomi/xmpush/thrift/a;

    if-ne v0, v2, :cond_d

    invoke-virtual {v7}, Lcom/xiaomi/mipush/sdk/c;->b()V

    iget-object v0, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v0}, Ljxf;->e(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v0}, Ljxf;->g(Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_e
    invoke-direct {p0, v6, v5, v4}, Ljxo;->a(Lcom/xiaomi/xmpush/thrift/af;Z[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    :try_end_2
    .catch Lorg/apache/thrift/f; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v0, "com.xiaomi.mipush.ERROR"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;-><init>()V

    new-instance v1, Lcom/xiaomi/xmpush/thrift/af;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/af;-><init>()V

    :try_start_3
    const-string/jumbo v2, "mipush_payload"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-static {v1, v2}, Lkev;->a(Lorg/apache/thrift/a;[B)V
    :try_end_3
    .catch Lorg/apache/thrift/f; {:try_start_3 .. :try_end_3} :catch_4

    :cond_10
    :goto_5
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/af;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setCommand(Ljava/lang/String;)V

    const-string/jumbo v1, "mipush_error_code"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setResultCode(J)V

    const-string/jumbo v1, "mipush_error_msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setReason(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "receive a error message. code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "mipush_error_code"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", msg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mipush_error_msg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljuw;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v0, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "message arrived: receiving an empty message, drop"

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_12
    new-instance v2, Lcom/xiaomi/xmpush/thrift/af;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/af;-><init>()V

    :try_start_4
    invoke-static {v2, v0}, Lkev;->a(Lorg/apache/thrift/a;[B)V

    iget-object v0, p0, Ljxo;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    invoke-static {v2}, Lkak;->b(Lcom/xiaomi/xmpush/thrift/af;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string/jumbo v0, "message arrived: receive ignore reg message, ignore!"

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/thrift/f; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_4

    :catch_2
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 7000
    :cond_13
    :try_start_5
    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/c$a;->a()Z

    move-result v3

    .line 0
    if-nez v3, :cond_14

    const-string/jumbo v0, "message arrived: receive message without registration. need unregister or re-register!"

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/apache/thrift/f; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 8000
    :cond_14
    :try_start_6
    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/c$a;->a()Z

    move-result v3

    .line 0
    if-eqz v3, :cond_15

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->c()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "message arrived: app info is invalidated"

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_15
    invoke-direct {p0, v2}, Ljxo;->a(Lcom/xiaomi/xmpush/thrift/af;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    :try_end_6
    .catch Lorg/apache/thrift/f; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v0

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto/16 :goto_5
.end method
