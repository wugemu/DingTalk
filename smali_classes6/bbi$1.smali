.class final Lbbi$1;
.super Ljava/lang/Object;
.source "DingQuotaManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbi;->a(Landroid/app/Activity;Lcma;)V
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
        "Lchh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbbi;


# direct methods
.method constructor <init>(Lbbi;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbi;

    .prologue
    .line 57
    iput-object p1, p0, Lbbi$1;->b:Lbbi;

    iput-object p2, p0, Lbbi$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 57
    check-cast p1, Lchh;

    .line 1060
    if-eqz p1, :cond_0

    .line 1061
    iget-object v0, p0, Lbbi$1;->b:Lbbi;

    invoke-static {v0}, Lbbi;->a(Lbbi;)Lazb;

    move-result-object v0

    iget v1, p1, Lchh;->f:I

    iput v1, v0, Lazb;->a:I

    .line 1062
    iget-object v0, p0, Lbbi$1;->b:Lbbi;

    invoke-static {v0}, Lbbi;->a(Lbbi;)Lazb;

    move-result-object v0

    iget v1, p1, Lchh;->h:I

    iput v1, v0, Lazb;->b:I

    .line 1063
    iget-object v0, p0, Lbbi$1;->b:Lbbi;

    invoke-static {v0}, Lbbi;->a(Lbbi;)Lazb;

    move-result-object v0

    iget v1, p1, Lchh;->e:I

    iput v1, v0, Lazb;->c:I

    .line 1064
    iget-object v0, p0, Lbbi$1;->b:Lbbi;

    invoke-static {v0}, Lbbi;->a(Lbbi;)Lazb;

    move-result-object v0

    iget v1, p1, Lchh;->g:I

    iput v1, v0, Lazb;->d:I

    .line 1065
    iget-object v0, p0, Lbbi$1;->b:Lbbi;

    invoke-static {v0}, Lbbi;->a(Lbbi;)Lazb;

    move-result-object v0

    iget v1, p1, Lchh;->i:I

    iput v1, v0, Lazb;->e:I

    .line 1066
    iget-object v0, p0, Lbbi$1;->b:Lbbi;

    invoke-static {v0}, Lbbi;->a(Lbbi;)Lazb;

    move-result-object v0

    iget-boolean v1, p1, Lchh;->j:Z

    iput-boolean v1, v0, Lazb;->f:Z

    .line 1067
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "remainNumByPerson:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lbbi$1;->b:Lbbi;

    invoke-static {v2}, Lbbi;->a(Lbbi;)Lazb;

    move-result-object v2

    iget v2, v2, Lazb;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", remainNumByOrg:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lbbi$1;->b:Lbbi;

    .line 1068
    invoke-static {v2}, Lbbi;->a(Lbbi;)Lazb;

    move-result-object v2

    iget v2, v2, Lazb;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", totalNumByPerson:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lbbi$1;->b:Lbbi;

    .line 1069
    invoke-static {v2}, Lbbi;->a(Lbbi;)Lazb;

    move-result-object v2

    iget v2, v2, Lazb;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, ", totalNumByOrg:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lbbi$1;->b:Lbbi;

    .line 1070
    invoke-static {v2}, Lbbi;->a(Lbbi;)Lazb;

    move-result-object v2

    iget v2, v2, Lazb;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, ", maxCountAtATime:"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lbbi$1;->b:Lbbi;

    .line 1071
    invoke-static {v2}, Lbbi;->a(Lbbi;)Lazb;

    move-result-object v2

    iget v2, v2, Lazb;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, ", onlyCanDingByApp:"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lbbi$1;->b:Lbbi;

    .line 1072
    invoke-static {v2}, Lbbi;->a(Lbbi;)Lazb;

    move-result-object v2

    iget-boolean v2, v2, Lazb;->f:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1067
    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lbbi$1;->b:Lbbi;

    invoke-static {v0}, Lbbi;->b(Lbbi;)V

    .line 1075
    :cond_0
    iget-object v0, p0, Lbbi$1;->a:Lcma;

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p0, Lbbi$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 57
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lbbi$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lbbi$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lbbi$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lbbi$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 85
    :cond_0
    return-void
.end method
