.class public final Lgya;
.super Ljava/lang/Object;
.source "ParseContext.java"


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Lgya;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/reflect/Type;

.field private transient e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgya;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "parent"    # Lgya;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lgya;->b:Lgya;

    .line 15
    iput-object p2, p0, Lgya;->a:Ljava/lang/Object;

    .line 16
    iput-object p3, p0, Lgya;->c:Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 20
    iget-object v0, p0, Lgya;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lgya;->b:Lgya;

    if-nez v0, :cond_1

    .line 22
    const-string/jumbo v0, "$"

    iput-object v0, p0, Lgya;->e:Ljava/lang/String;

    .line 32
    :cond_0
    :goto_0
    iget-object v0, p0, Lgya;->e:Ljava/lang/String;

    return-object v0

    .line 24
    :cond_1
    iget-object v0, p0, Lgya;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgya;->b:Lgya;

    invoke-virtual {v1}, Lgya;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgya;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgya;->e:Ljava/lang/String;

    goto :goto_0

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgya;->b:Lgya;

    invoke-virtual {v1}, Lgya;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgya;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgya;->e:Ljava/lang/String;

    goto :goto_0
.end method
