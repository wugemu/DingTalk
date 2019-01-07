.class final Ldiz$4$6;
.super Ljava/lang/Object;
.source "ChatMessageSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldiz$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/cache/Cache;

.field final synthetic b:Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

.field final synthetic c:Lcom/alibaba/wukong/im/Message;

.field final synthetic d:Ldiz$4;


# direct methods
.method constructor <init>(Ldiz$4;Lcom/alibaba/doraemon/cache/Cache;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$1"    # Ldiz$4;

    .prologue
    .line 1863
    iput-object p1, p0, Ldiz$4$6;->d:Ldiz$4;

    iput-object p2, p0, Ldiz$4$6;->a:Lcom/alibaba/doraemon/cache/Cache;

    iput-object p3, p0, Ldiz$4$6;->b:Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    iput-object p4, p0, Ldiz$4$6;->c:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1866
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Ldiz$4$6;->d:Ldiz$4;

    iget-object v4, v4, Ldiz$4;->a:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1867
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 1869
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 1873
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    if-eqz v2, :cond_0

    .line 1875
    :try_start_1
    iget-object v4, p0, Ldiz$4$6;->a:Lcom/alibaba/doraemon/cache/Cache;

    iget-object v5, p0, Ldiz$4$6;->b:Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    iget-object v6, p0, Ldiz$4$6;->c:Lcom/alibaba/wukong/im/Message;

    invoke-static {v5, v6}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v6}, Lcom/alibaba/doraemon/cache/Cache;->wirteHuge(Ljava/lang/String;Ljava/io/InputStream;[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1878
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1884
    :cond_0
    :goto_1
    iget-object v4, p0, Ldiz$4$6;->d:Ldiz$4;

    iget-boolean v4, v4, Ldiz$4;->f:Z

    if-eqz v4, :cond_1

    .line 1886
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1891
    :cond_1
    :goto_2
    return-void

    .line 1870
    :catch_0
    move-exception v0

    .line 1871
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1879
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1880
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1877
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1878
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1881
    :goto_3
    throw v4

    .line 1879
    :catch_2
    move-exception v0

    .line 1880
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1887
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1888
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
