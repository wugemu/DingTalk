.class final Liaa$1$1$2;
.super Ljava/lang/Object;
.source "ThreadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaa$1$1;->onProgress(Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Liaa$1$1;


# direct methods
.method constructor <init>(Liaa$1$1;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "this$2"    # Liaa$1$1;

    .prologue
    .line 89
    .local p0, "this":Liaa$1$1$2;, "Liaa$1$1$2;"
    iput-object p1, p0, Liaa$1$1$2;->c:Liaa$1$1;

    iput-object p2, p0, Liaa$1$1$2;->a:Ljava/lang/Object;

    iput p3, p0, Liaa$1$1$2;->b:I

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
    .line 93
    .local p0, "this":Liaa$1$1$2;, "Liaa$1$1$2;"
    iget-object v0, p0, Liaa$1$1$2;->c:Liaa$1$1;

    iget-object v0, v0, Liaa$1$1;->a:Liaa$1;

    iget-object v0, v0, Liaa$1;->a:Liaa;

    invoke-static {v0}, Liaa;->access$500(Liaa;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Liaa$1$1$2;->c:Liaa$1$1;

    iget-object v0, v0, Liaa$1$1;->a:Liaa$1;

    iget-object v0, v0, Liaa$1;->a:Liaa;

    invoke-static {v0}, Liaa;->access$500(Liaa;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    iget-object v1, p0, Liaa$1$1$2;->a:Ljava/lang/Object;

    iget v2, p0, Liaa$1$1$2;->b:I

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 95
    :cond_0
    return-void
.end method
