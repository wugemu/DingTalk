.class public Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    .line 1057
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1058
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
    .param p2, "x1"    # Ljava/io/OutputStream;
    .param p3, "x2"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache$1;

    .prologue
    .line 1055
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1084
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :goto_0
    return-void

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->access$2502(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;Z)Z

    .line 1087
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1094
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 1095
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    :cond_0
    :goto_0
    return-void

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->access$2502(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;Z)Z

    .line 1099
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1063
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :goto_0
    return-void

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->access$2502(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;Z)Z

    .line 1066
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1074
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    :goto_0
    return-void

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->access$2502(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;Z)Z

    .line 1077
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
