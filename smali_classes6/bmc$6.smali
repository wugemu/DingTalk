.class final Lbmc$6;
.super Ljava/lang/Object;
.source "QuickConnectWifiManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmc;->a(Landroid/net/wifi/ScanResult;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lbmc;


# direct methods
.method constructor <init>(Lbmc;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lbmc;

    .prologue
    .line 244
    iput-object p1, p0, Lbmc$6;->d:Lbmc;

    iput-object p2, p0, Lbmc$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lbmc$6;->b:Ljava/lang/String;

    iput-wide p4, p0, Lbmc$6;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    const-string/jumbo v0, "QuickConnectWifiManager"

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "noticeOneKeyConnect success"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lbmc$6;->d:Lbmc;

    invoke-static {v0}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v0

    if-nez v0, :cond_0

    .line 249
    const-string/jumbo v0, "QuickConnectWifiManager"

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "mRequest is null"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lbmc$6;->d:Lbmc;

    iget-object v1, p0, Lbmc$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lbmc$6;->b:Ljava/lang/String;

    iget-wide v4, p0, Lbmc$6;->c:J

    invoke-static {v0, v1, v2, v4, v5}, Lbmc;->a(Lbmc;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    const-string/jumbo v0, "QuickConnectWifiManager"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "noticeOneKeyConnect exp code = "

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lbmc$6;->d:Lbmc;

    invoke-static {v0}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v0

    if-nez v0, :cond_0

    .line 264
    const-string/jumbo v0, "QuickConnectWifiManager"

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "mRequest is null"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lbmc$6;->d:Lbmc;

    iget-object v1, p0, Lbmc$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lbmc$6;->b:Ljava/lang/String;

    iget-wide v4, p0, Lbmc$6;->c:J

    invoke-static {v0, v1, v2, v4, v5}, Lbmc;->a(Lbmc;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 258
    return-void
.end method
