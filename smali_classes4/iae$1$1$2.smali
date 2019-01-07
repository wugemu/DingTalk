.class final Liae$1$1$2;
.super Ljava/lang/Object;
.source "IMTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liae$1$1;->onProgress(Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Liae$1$1;


# direct methods
.method constructor <init>(Liae$1$1;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "this$2"    # Liae$1$1;

    .prologue
    .line 85
    .local p0, "this":Liae$1$1$2;, "Liae$1$1$2;"
    iput-object p1, p0, Liae$1$1$2;->c:Liae$1$1;

    iput-object p2, p0, Liae$1$1$2;->a:Ljava/lang/Object;

    iput p3, p0, Liae$1$1$2;->b:I

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
    .line 89
    .local p0, "this":Liae$1$1$2;, "Liae$1$1$2;"
    iget-object v0, p0, Liae$1$1$2;->c:Liae$1$1;

    iget-object v0, v0, Liae$1$1;->a:Liae$1;

    iget-object v0, v0, Liae$1;->a:Liae;

    invoke-static {v0}, Liae;->access$400(Liae;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Liae$1$1$2;->c:Liae$1$1;

    iget-object v0, v0, Liae$1$1;->a:Liae$1;

    iget-object v0, v0, Liae$1;->a:Liae;

    invoke-static {v0}, Liae;->access$400(Liae;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    iget-object v1, p0, Liae$1$1$2;->a:Ljava/lang/Object;

    iget v2, p0, Liae$1$1$2;->b:I

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 91
    :cond_0
    return-void
.end method
