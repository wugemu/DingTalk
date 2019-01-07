.class final Lkep;
.super Lkbd$a;


# instance fields
.field final synthetic a:Lkeo;


# direct methods
.method constructor <init>(Lkeo;)V
    .locals 0

    iput-object p1, p0, Lkep;->a:Lkeo;

    invoke-direct {p0}, Lkbd$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkac$b;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const v0, 0x240c8400

    .line 0
    .line 1000
    iget-boolean v1, p1, Lkac$b;->e:Z

    .line 0
    if-eqz v1, :cond_1

    .line 2000
    sget-object v2, Lkeo$a;->a:Lkeo;

    .line 3000
    iget v1, p1, Lkac$b;->f:I

    .line 4000
    if-lez v1, :cond_1

    mul-int/lit16 v1, v1, 0x3e8

    if-le v1, v0, :cond_2

    :goto_0
    iget v1, v2, Lkeo;->b:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, v2, Lkeo;->a:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v2, Lkeo;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lkeo;->c:J

    iput v0, v2, Lkeo;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "enable dot duration = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v2, Lkeo;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->c(Ljava/lang/String;)V

    .line 0
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
