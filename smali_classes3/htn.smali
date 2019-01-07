.class public final Lhtn;
.super Ljava/lang/Object;
.source "ReporterContext.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Lhtl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lhtn;->a:Landroid/content/Context;

    .line 16
    new-instance v0, Lhtl;

    invoke-direct {v0}, Lhtl;-><init>()V

    iput-object v0, p0, Lhtn;->b:Lhtl;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 24
    iget-object v0, p0, Lhtn;->b:Lhtl;

    const-string/jumbo v1, ""

    invoke-virtual {v0, p1, v1}, Lhtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lhtn;->b:Lhtl;

    invoke-virtual {v0, p1, p2}, Lhtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lhtl$a;)V
    .locals 1
    .param p1, "property"    # Lhtl$a;

    .prologue
    .line 20
    iget-object v0, p0, Lhtn;->b:Lhtl;

    invoke-virtual {v0, p1}, Lhtl;->a(Lhtk$a;)V

    .line 21
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 32
    iget-object v5, p0, Lhtn;->b:Lhtl;

    invoke-virtual {v5, p1}, Lhtl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 34
    const-string/jumbo v5, "UTDID"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "IMEI"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "IMSI"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "DEVICE_ID"

    .line 35
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 38
    :cond_0
    iget-object v5, p0, Lhtn;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "utdid":Ljava/lang/String;
    invoke-static {}, Lhtr;->a()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "imei":Ljava/lang/String;
    iget-object v5, p0, Lhtn;->a:Landroid/content/Context;

    invoke-static {v5}, Lhtr;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "imsi":Ljava/lang/String;
    move-object v0, v1

    .line 43
    .local v0, "deviceId":Ljava/lang/String;
    iget-object v5, p0, Lhtn;->b:Lhtl;

    new-instance v6, Lhtl$a;

    const-string/jumbo v7, "UTDID"

    invoke-direct {v6, v7, v3, v8}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Lhtl;->a(Lhtk$a;)V

    .line 44
    iget-object v5, p0, Lhtn;->b:Lhtl;

    new-instance v6, Lhtl$a;

    const-string/jumbo v7, "IMEI"

    invoke-direct {v6, v7, v1, v8}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Lhtl;->a(Lhtk$a;)V

    .line 45
    iget-object v5, p0, Lhtn;->b:Lhtl;

    new-instance v6, Lhtl$a;

    const-string/jumbo v7, "IMSI"

    invoke-direct {v6, v7, v2, v8}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Lhtl;->a(Lhtk$a;)V

    .line 46
    iget-object v5, p0, Lhtn;->b:Lhtl;

    new-instance v6, Lhtl$a;

    const-string/jumbo v7, "DEVICE_ID"

    invoke-direct {v6, v7, v0, v8}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Lhtl;->a(Lhtk$a;)V

    .line 49
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v1    # "imei":Ljava/lang/String;
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v3    # "utdid":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lhtn;->b:Lhtl;

    invoke-virtual {v5, p1}, Lhtl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
