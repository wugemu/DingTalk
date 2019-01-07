.class final Lbbj$2;
.super Ljava/lang/Object;
.source "ApiEventListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbj;->onProgress(Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Lbbj;


# direct methods
.method constructor <init>(Lbbj;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "this$0"    # Lbbj;

    .prologue
    .line 57
    .local p0, "this":Lbbj$2;, "Lbbj$2;"
    iput-object p1, p0, Lbbj$2;->c:Lbbj;

    iput-object p2, p0, Lbbj$2;->a:Ljava/lang/Object;

    iput p3, p0, Lbbj$2;->b:I

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
    .line 60
    .local p0, "this":Lbbj$2;, "Lbbj$2;"
    iget-object v0, p0, Lbbj$2;->c:Lbbj;

    invoke-static {v0}, Lbbj;->a(Lbbj;)Lcma;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lbbj$2;->c:Lbbj;

    invoke-static {v0}, Lbbj;->a(Lbbj;)Lcma;

    move-result-object v0

    iget-object v1, p0, Lbbj$2;->a:Ljava/lang/Object;

    iget v2, p0, Lbbj$2;->b:I

    invoke-interface {v0, v1, v2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 63
    :cond_0
    return-void
.end method
