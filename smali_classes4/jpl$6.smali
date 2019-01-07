.class public final Ljpl$6;
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

.field final synthetic c:Ljpl;


# direct methods
.method public constructor <init>(Ljpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljpl;

    .prologue
    .line 181
    iput-object p1, p0, Ljpl$6;->c:Ljpl;

    iput-object p2, p0, Ljpl$6;->a:Ljava/lang/String;

    iput-object p3, p0, Ljpl$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 184
    iget-object v0, p0, Ljpl$6;->c:Ljpl;

    invoke-static {v0}, Ljpl;->b(Ljpl;)Ljpj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Ljpl$6;->c:Ljpl;

    invoke-static {v0}, Ljpl;->b(Ljpl;)Ljpj;

    move-result-object v0

    iget-object v1, p0, Ljpl$6;->a:Ljava/lang/String;

    iget-object v2, p0, Ljpl$6;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljpj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "postMessage: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljpl$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljpl$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_0
    return-void
.end method
