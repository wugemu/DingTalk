.class public final Lkbr;
.super Lkdf;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Ljava/util/Map;ILjava/lang/String;Lkdj;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lkbr;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v0, 0x1466

    invoke-direct {p0, v1, v0, p4, v1}, Lkdf;-><init>(Ljava/util/Map;ILjava/lang/String;Lkdj;)V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    new-instance v0, Lkac$b;

    invoke-direct {v0}, Lkac$b;-><init>()V

    invoke-static {}, Lkbd;->a()Lkbd;

    move-result-object v1

    invoke-virtual {v1}, Lkbd;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lkac$b;->a(I)Lkac$b;

    invoke-virtual {v0}, Lkac$b;->c()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getOBBString err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
