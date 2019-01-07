.class final Lgpq$2;
.super Ljava/lang/Object;
.source "CSpaceUserBaseInfoFetchUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpq;->b(Landroid/content/Context;JJLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcgc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcma;

.field final synthetic c:Lgpq;


# direct methods
.method constructor <init>(Lgpq;JLcma;)V
    .locals 0
    .param p1, "this$0"    # Lgpq;

    .prologue
    .line 193
    iput-object p1, p0, Lgpq$2;->c:Lgpq;

    iput-wide p2, p0, Lgpq$2;->a:J

    iput-object p4, p0, Lgpq$2;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 193
    check-cast p1, Lcgc;

    .line 1196
    iget-object v0, p0, Lgpq$2;->c:Lgpq;

    invoke-static {v0}, Lgpq;->a(Lgpq;)Lfp;

    move-result-object v0

    iget-wide v2, p0, Lgpq$2;->a:J

    .line 2096
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1196
    check-cast v0, Lgoh;

    .line 1198
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcgc;->b:Lcet;

    if-nez v1, :cond_1

    .line 1199
    :cond_0
    iget-object v1, p0, Lgpq$2;->c:Lgpq;

    const-string/jumbo v2, "500"

    invoke-static {}, Lgpq;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgpq$2;->b:Lcma;

    invoke-static {v1, v0, v2, v3, v4}, Lgpq;->a(Lgpq;Lgoh;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1200
    :goto_0
    return-void

    .line 1203
    :cond_1
    if-nez v0, :cond_2

    .line 1204
    new-instance v0, Lgoh;

    invoke-direct {v0}, Lgoh;-><init>()V

    .line 1207
    :cond_2
    iget-object v1, p1, Lcgc;->b:Lcet;

    iget-object v1, v1, Lcet;->c:Ljava/lang/String;

    iput-object v1, v0, Lgoh;->d:Ljava/lang/String;

    .line 1208
    iget-object v1, p0, Lgpq$2;->c:Lgpq;

    invoke-static {v1}, Lgpq;->a(Lgpq;)Lfp;

    move-result-object v1

    iget-wide v2, p0, Lgpq$2;->a:J

    invoke-virtual {v1, v2, v3, v0}, Lfp;->b(JLjava/lang/Object;)V

    .line 1210
    iget-object v1, p0, Lgpq$2;->c:Lgpq;

    iget-object v2, p0, Lgpq$2;->b:Lcma;

    invoke-virtual {v1, v0, v2}, Lgpq;->a(Lgoh;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 220
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceUserBaseInfoFetchUtil"

    const-string/jumbo v3, "getUserBaseInfoFromEmploy"

    .line 221
    invoke-static {v3, p1, p2, v4}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lgpq$2;->c:Lgpq;

    invoke-static {v1}, Lgpq;->a(Lgpq;)Lfp;

    move-result-object v1

    iget-wide v2, p0, Lgpq$2;->a:J

    .line 1096
    invoke-virtual {v1, v2, v3, v4}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 223
    check-cast v0, Lgoh;

    .line 225
    .local v0, "model":Lgoh;
    iget-object v1, p0, Lgpq$2;->c:Lgpq;

    iget-object v2, p0, Lgpq$2;->b:Lcma;

    invoke-static {v1, v0, p1, p2, v2}, Lgpq;->a(Lgpq;Lgoh;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 226
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 216
    return-void
.end method
