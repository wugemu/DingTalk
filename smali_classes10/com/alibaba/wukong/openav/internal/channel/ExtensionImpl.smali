.class public Lcom/alibaba/wukong/openav/internal/channel/ExtensionImpl;
.super Lcom/alibaba/wukong/auth/AuthExtension;
.source "ExtensionImpl.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/alibaba/wukong/auth/AuthExtension;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p1, p0, Lcom/alibaba/wukong/openav/internal/channel/ExtensionImpl;->a:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public fixedServerURI()Ljava/net/URI;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    iget-object v1, p0, Lcom/alibaba/wukong/openav/internal/channel/ExtensionImpl;->a:Landroid/content/Context;

    const-string/jumbo v2, "TEST_ADDR"

    invoke-static {v1, v2}, Lieh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "uri":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 26
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 28
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
