.class final Leqy$1;
.super Ljava/lang/Object;
.source "ExternalContactOrgSearchPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leqy;->a()V
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
        "Lepr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Leqy;


# direct methods
.method constructor <init>(Leqy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Leqy;

    .prologue
    .line 61
    iput-object p1, p0, Leqy$1;->b:Leqy;

    iput-object p2, p0, Leqy$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x50

    const/4 v2, 0x0

    .line 61
    check-cast p1, Lepr;

    .line 2064
    iget-object v0, p0, Leqy$1;->b:Leqy;

    .line 3035
    iget-object v0, v0, Leqy;->n:Leqx$b;

    .line 2064
    invoke-interface {v0}, Leqx$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2068
    iget-object v0, p0, Leqy$1;->a:Ljava/lang/String;

    iget-object v1, p0, Leqy$1;->b:Leqy;

    iget-object v1, v1, Leqy;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2073
    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p1, Lepr;->e:Z

    if-nez v0, :cond_3

    .line 2074
    :cond_0
    iget-object v0, p0, Leqy$1;->b:Leqy;

    const-string/jumbo v1, "0"

    .line 4035
    iput-object v1, v0, Leqy;->m:Ljava/lang/String;

    .line 2075
    iget-object v0, p0, Leqy$1;->b:Leqy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Leqy;->f:Z

    .line 2080
    :goto_0
    iget-object v0, p0, Leqy$1;->b:Leqy;

    invoke-static {v0, p1}, Leqy;->a(Leqy;Lepr;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2085
    iget-object v0, p0, Leqy$1;->b:Leqy;

    iput-boolean v2, v0, Leqy;->j:Z

    .line 2086
    iget-object v0, p0, Leqy$1;->b:Leqy;

    iget-boolean v0, v0, Leqy;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Leqy$1;->b:Leqy;

    iget v0, v0, Leqy;->h:I

    if-le v0, v3, :cond_5

    .line 2087
    :cond_1
    iget-object v0, p0, Leqy$1;->b:Leqy;

    iput v2, v0, Leqy;->h:I

    .line 2088
    iget-object v0, p0, Leqy$1;->b:Leqy;

    invoke-virtual {v0}, Leqy;->o()V

    .line 2092
    :cond_2
    :goto_1
    return-void

    .line 2077
    :cond_3
    :try_start_1
    iget-object v0, p0, Leqy$1;->b:Leqy;

    iget-object v1, p1, Lepr;->d:Ljava/lang/String;

    .line 5035
    iput-object v1, v0, Leqy;->m:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2082
    :catch_0
    move-exception v0

    .line 2083
    :try_start_2
    const-string/jumbo v1, "searchExternalByOrg"

    invoke-static {v1, v0}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2085
    iget-object v0, p0, Leqy$1;->b:Leqy;

    iput-boolean v2, v0, Leqy;->j:Z

    .line 2086
    iget-object v0, p0, Leqy$1;->b:Leqy;

    iget-boolean v0, v0, Leqy;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Leqy$1;->b:Leqy;

    iget v0, v0, Leqy;->h:I

    if-le v0, v3, :cond_6

    .line 2087
    :cond_4
    iget-object v0, p0, Leqy$1;->b:Leqy;

    iput v2, v0, Leqy;->h:I

    .line 2088
    iget-object v0, p0, Leqy$1;->b:Leqy;

    invoke-virtual {v0}, Leqy;->o()V

    goto :goto_1

    .line 2090
    :cond_5
    iget-object v0, p0, Leqy$1;->b:Leqy;

    invoke-virtual {v0}, Leqy;->a()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Leqy$1;->b:Leqy;

    invoke-virtual {v0}, Leqy;->a()V

    goto :goto_1

    .line 2085
    :catchall_0
    move-exception v0

    iget-object v1, p0, Leqy$1;->b:Leqy;

    iput-boolean v2, v1, Leqy;->j:Z

    .line 2086
    iget-object v1, p0, Leqy$1;->b:Leqy;

    iget-boolean v1, v1, Leqy;->f:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Leqy$1;->b:Leqy;

    iget v1, v1, Leqy;->h:I

    if-le v1, v3, :cond_8

    .line 2087
    :cond_7
    iget-object v1, p0, Leqy$1;->b:Leqy;

    iput v2, v1, Leqy;->h:I

    .line 2088
    iget-object v1, p0, Leqy$1;->b:Leqy;

    invoke-virtual {v1}, Leqy;->o()V

    .line 2090
    :goto_2
    throw v0

    :cond_8
    iget-object v1, p0, Leqy$1;->b:Leqy;

    invoke-virtual {v1}, Leqy;->a()V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Leqy$1;->b:Leqy;

    .line 1035
    iget-object v0, v0, Leqy;->n:Leqx$b;

    .line 102
    invoke-interface {v0}, Leqx$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Leqy$1;->b:Leqy;

    invoke-virtual {v0}, Leqy;->o()V

    .line 107
    iget-object v0, p0, Leqy$1;->b:Leqy;

    .line 2035
    iget-object v0, v0, Leqy;->n:Leqx$b;

    .line 107
    invoke-interface {v0, p1, p2}, Leqx$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 98
    return-void
.end method
