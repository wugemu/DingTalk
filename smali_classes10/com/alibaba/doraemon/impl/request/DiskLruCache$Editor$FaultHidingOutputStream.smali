.class Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 900
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    .line 901
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 902
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/alibaba/doraemon/impl/request/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;
    .param p2, "x1"    # Ljava/io/OutputStream;
    .param p3, "x2"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache$1;

    .prologue
    .line 899
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    :goto_0
    return-void

    .line 924
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->access$2302(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :goto_0
    return-void

    .line 932
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->access$2302(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2
    .param p1, "oneByte"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 906
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :goto_0
    return-void

    .line 908
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->access$2302(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->access$2302(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
