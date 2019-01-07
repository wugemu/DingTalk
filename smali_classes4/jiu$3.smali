.class final Ljiu$3;
.super Ljava/lang/Object;
.source "BaseConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiu;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljiu;


# direct methods
.method constructor <init>(Ljiu;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Ljiu$3;->a:Ljiu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Ljiu$3;->a:Ljiu;

    iget-object v0, v0, Ljiu;->c:Ljip;

    .line 1666
    iget-boolean v0, v0, Ljip;->c:Z

    .line 278
    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Ljiu$3;->a:Ljiu;

    invoke-virtual {v0}, Ljiu;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljiu$3;->a:Ljiu;

    iget v3, v3, Ljiu;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "receive ping time out! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Ljiu$3;->a:Ljiu;

    iget-object v0, v0, Ljiu;->b:Landroid/content/Context;

    invoke-static {v0}, Ljiv;->a(Landroid/content/Context;)Ljiv;

    move-result-object v2

    .line 2108
    const-wide/16 v4, -0x1

    iput-wide v4, v2, Ljiv;->b:J

    .line 2109
    iget-boolean v0, v2, Ljiv;->c:Z

    if-eqz v0, :cond_0

    .line 2110
    iget-object v0, v2, Ljiv;->d:[I

    iget v3, v2, Ljiv;->a:I

    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    .line 2112
    :cond_0
    iget v0, v2, Ljiv;->a:I

    if-lez v0, :cond_2

    iget v0, v2, Ljiv;->a:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, v2, Ljiv;->a:I

    .line 2113
    const-string/jumbo v0, "HeartbeatManager"

    const-string/jumbo v2, "onNetworkTimeout"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Ljiu$3;->a:Ljiu;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "receive ping timeout"

    invoke-virtual {v0, v1, v2}, Ljiu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Ljiu$3;->a:Ljiu;

    iget-object v0, v0, Ljiu;->c:Ljip;

    const/16 v1, -0xc

    invoke-virtual {v0, v1}, Ljip;->a(I)V

    .line 284
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 2112
    goto :goto_0
.end method
