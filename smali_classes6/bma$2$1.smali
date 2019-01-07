.class final Lbma$2$1;
.super Ljava/lang/Object;
.source "FloatConnectWifiManager.java"

# interfaces
.implements Lblv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbma$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblv",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbma$2;


# direct methods
.method constructor <init>(Lbma$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lbma$2;

    .prologue
    .line 97
    iput-object p1, p0, Lbma$2$1;->c:Lbma$2;

    iput-object p2, p0, Lbma$2$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lbma$2$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 97
    check-cast p1, Ljava/lang/String;

    .line 1100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    const-string/jumbo v0, "FloatConnectWifiManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "psk is null in storage"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :goto_0
    iget-object v0, p0, Lbma$2$1;->c:Lbma$2;

    iget-object v0, v0, Lbma$2;->a:Lbma;

    invoke-virtual {v0}, Lbma;->c()V

    .line 97
    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Lbma$2$1;->c:Lbma$2;

    iget-object v0, v0, Lbma$2;->a:Lbma;

    iget-object v1, p0, Lbma$2$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lbma$2$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lbma;->a(Lbma;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
