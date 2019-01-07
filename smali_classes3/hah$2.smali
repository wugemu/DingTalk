.class final Lhah$2;
.super Ljava/lang/Object;
.source "Compressor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhah;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lhah;


# direct methods
.method constructor <init>(Lhah;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhah;

    .prologue
    .line 222
    iput-object p1, p0, Lhah$2;->d:Lhah;

    iput-object p2, p0, Lhah$2;->a:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    iput-object p3, p0, Lhah$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lhah$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 225
    invoke-static {}, Lhah;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Post event type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhah$2;->a:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lhah$2;->b:Ljava/lang/String;

    invoke-static {v3}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lhah$2;->c:Ljava/lang/String;

    invoke-static {v3}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lhag;

    iget-object v1, p0, Lhah$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lhah$2;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lhag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .local v0, "source":Lhag;
    new-instance v1, Lhac;

    iget-object v2, p0, Lhah$2;->a:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-direct {v1, v0, v2}, Lhac;-><init>(Lhag;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    .line 228
    return-void
.end method
