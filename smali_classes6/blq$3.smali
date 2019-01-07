.class final Lblq$3;
.super Ljava/lang/Object;
.source "AlphaHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lblq;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lblq;


# direct methods
.method constructor <init>(Lblq;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lblq;

    .prologue
    .line 235
    iput-object p1, p0, Lblq$3;->c:Lblq;

    iput p2, p0, Lblq$3;->a:I

    iput-object p3, p0, Lblq$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 238
    iget-object v0, p0, Lblq$3;->c:Lblq;

    invoke-static {v0}, Lblq;->a(Lblq;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblq$3;->c:Lblq;

    invoke-static {v0}, Lblq;->b(Lblq;)Lblr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lblq$3;->c:Lblq;

    invoke-static {v0}, Lblq;->b(Lblq;)Lblr;

    move-result-object v0

    iget v1, p0, Lblq$3;->a:I

    invoke-interface {v0, v1}, Lblr;->a(I)V

    .line 241
    :cond_0
    iget-object v0, p0, Lblq$3;->c:Lblq;

    invoke-static {v0}, Lblq;->a(Lblq;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lblq$3;->c:Lblq;

    invoke-static {v0}, Lblq;->c(Lblq;)Lblp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lblq$3;->c:Lblq;

    invoke-static {v0}, Lblq;->c(Lblq;)Lblp;

    move-result-object v0

    iget v1, p0, Lblq$3;->a:I

    iget-object v2, p0, Lblq$3;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lblp;->a(ILjava/lang/String;)V

    .line 244
    :cond_1
    return-void
.end method
