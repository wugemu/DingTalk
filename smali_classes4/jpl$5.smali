.class public final Ljpl$5;
.super Ljava/lang/Object;
.source "WMLBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljpl;


# direct methods
.method public constructor <init>(Ljpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljpl;

    .prologue
    .line 169
    iput-object p1, p0, Ljpl$5;->e:Ljpl;

    iput-object p2, p0, Ljpl$5;->a:Ljava/lang/String;

    iput-object p3, p0, Ljpl$5;->b:Ljava/lang/String;

    iput-object p4, p0, Ljpl$5;->c:Ljava/lang/String;

    iput-object p5, p0, Ljpl$5;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 172
    iget-object v0, p0, Ljpl$5;->e:Ljpl;

    invoke-static {v0}, Ljpl;->b(Ljpl;)Ljpj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Ljpl$5;->e:Ljpl;

    invoke-static {v0}, Ljpl;->b(Ljpl;)Ljpj;

    move-result-object v0

    iget-object v1, p0, Ljpl$5;->a:Ljava/lang/String;

    iget-object v2, p0, Ljpl$5;->b:Ljava/lang/String;

    iget-object v3, p0, Ljpl$5;->c:Ljava/lang/String;

    iget-object v4, p0, Ljpl$5;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Ljpj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "dispatchMessage: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljpl$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljpl$5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljpl$5;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljpl$5;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    return-void
.end method
