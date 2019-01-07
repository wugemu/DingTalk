.class final Lfoa$5;
.super Ljava/lang/Object;
.source "ScreenShotFeedBackDialog.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfoa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfoa;


# direct methods
.method constructor <init>(Lfoa;)V
    .locals 0
    .param p1, "this$0"    # Lfoa;

    .prologue
    .line 160
    iput-object p1, p0, Lfoa$5;->a:Lfoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v0, p0, Lfoa$5;->a:Lfoa;

    invoke-static {v0}, Lfoa;->c(Lfoa;)V

    .line 185
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "uploadScreenShotAnd2FeedbackPage failed and errorCode : "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " and errorMsg: "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public final onProgress(JJI)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "i"    # I

    .prologue
    .line 164
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 160
    check-cast p1, Lifx;

    .line 1168
    iget-object v0, p0, Lfoa$5;->a:Lfoa;

    invoke-static {v0}, Lfoa;->c(Lfoa;)V

    .line 1169
    const-string/jumbo v0, "upload screenshot success"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1172
    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v0, ""

    .line 1173
    :goto_0
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1174
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "https://h5.dingtalk.com/feedback/index.html?lwfrom=20170808152022530&id=945&autoFillImg="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    iget-object v2, p0, Lfoa$5;->a:Lfoa;

    invoke-static {v2}, Lfoa;->d(Lfoa;)Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    :goto_1
    return-void

    .line 2026
    :cond_0
    iget-object v0, p1, Lifx;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "uploadScreenShotAnd2FeedbackPage failed and errorMsg : "

    aput-object v2, v1, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
