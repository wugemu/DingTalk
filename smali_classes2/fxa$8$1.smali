.class final Lfxa$8$1;
.super Ljava/lang/Object;
.source "NameManager.java"

# interfaces
.implements Lfxa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxa$8;->a(Lckl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lckl;

.field final synthetic b:Lfxa$8;


# direct methods
.method constructor <init>(Lfxa$8;Lckl;)V
    .locals 0
    .param p1, "this$1"    # Lfxa$8;

    .prologue
    .line 371
    iput-object p1, p0, Lfxa$8$1;->b:Lfxa$8;

    iput-object p2, p0, Lfxa$8$1;->a:Lckl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lckl;)V
    .locals 7
    .param p1, "groupNick"    # Lckl;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 374
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lckl;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lfxa$8$1;->a:Lckl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfxa$8$1;->a:Lckl;

    invoke-virtual {v0}, Lckl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lfxa$8$1;->a:Lckl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfxa$8$1;->a:Lckl;

    .line 1039
    iget-object v2, v2, Lckl;->d:Ljava/lang/String;

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2039
    iget-object v2, p1, Lckl;->d:Ljava/lang/String;

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2043
    iput-object v1, v0, Lckl;->d:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lfxa$8$1;->a:Lckl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfxa$8$1;->a:Lckl;

    .line 2047
    iget-object v2, v2, Lckl;->e:Ljava/lang/String;

    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3047
    iget-object v2, p1, Lckl;->e:Ljava/lang/String;

    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3051
    iput-object v1, v0, Lckl;->e:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lfxa$8$1;->b:Lfxa$8;

    iget-object v0, v0, Lfxa$8;->e:Lfxa;

    iget-object v1, p0, Lfxa$8$1;->b:Lfxa$8;

    iget-object v1, v1, Lfxa$8;->d:Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lfxa$8$1;->a:Lckl;

    invoke-static {v0, v1, v2}, Lfxa;->a(Lfxa;Lcom/alibaba/wukong/Callback;Lckl;)V

    .line 402
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lfxa$8$1;->b:Lfxa$8;

    iget-object v0, v0, Lfxa$8;->e:Lfxa;

    iget-object v1, p0, Lfxa$8$1;->b:Lfxa$8;

    iget-object v1, v1, Lfxa$8;->d:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p1}, Lfxa;->a(Lfxa;Lcom/alibaba/wukong/Callback;Lckl;)V

    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lfxa$8$1;->b:Lfxa$8;

    iget-object v0, v0, Lfxa$8;->e:Lfxa;

    iget-object v1, p0, Lfxa$8$1;->b:Lfxa$8;

    iget-object v1, v1, Lfxa$8;->a:Ljava/lang/String;

    iget-object v2, p0, Lfxa$8$1;->b:Lfxa$8;

    iget-wide v2, v2, Lfxa$8;->b:J

    iget-object v4, p0, Lfxa$8$1;->b:Lfxa$8;

    iget-wide v4, v4, Lfxa$8;->c:J

    new-instance v6, Lfxa$8$1$1;

    invoke-direct {v6, p0}, Lfxa$8$1$1;-><init>(Lfxa$8$1;)V

    invoke-static/range {v0 .. v6}, Lfxa;->a(Lfxa;Ljava/lang/String;JJLfxa$a;)V

    goto :goto_0
.end method
