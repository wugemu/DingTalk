.class final Lddq$6;
.super Ljava/lang/Object;
.source "ChatUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ldux;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1127
    iput-object p1, p0, Lddq$6;->a:Lcma;

    iput-object p2, p0, Lddq$6;->b:Ljava/lang/String;

    iput-object p3, p0, Lddq$6;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1127
    check-cast p1, Ldux;

    .line 2131
    iget-object v0, p0, Lddq$6;->a:Lcma;

    if-eqz v0, :cond_0

    .line 2132
    iget-object v0, p0, Lddq$6;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1127
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1148
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "translate fail src:"

    aput-object v3, v2, v5

    iget-object v3, p0, Lddq$6;->b:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string/jumbo v3, " target:"

    aput-object v3, v2, v7

    iget-object v3, p0, Lddq$6;->c:Ljava/lang/String;

    aput-object v3, v2, v8

    const-string/jumbo v3, " code:"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    aput-object p1, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, " reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string/jumbo v0, "translate"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "translate fail src:"

    aput-object v2, v1, v5

    iget-object v2, p0, Lddq$6;->b:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string/jumbo v2, " target:"

    aput-object v2, v1, v7

    iget-object v2, p0, Lddq$6;->c:Ljava/lang/String;

    aput-object v2, v1, v8

    const-string/jumbo v2, " code:"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    aput-object p1, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, " reason:"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v0, p0, Lddq$6;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lddq$6;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1139
    return-void
.end method
