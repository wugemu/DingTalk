.class final Lgth$1;
.super Ljava/lang/Object;
.source "HttpOverLWPConnection.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgth;->getInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Reply",
        "<",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljac;

.field final synthetic b:Lgth;


# direct methods
.method constructor <init>(Lgth;Ljac;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lgth$1;->b:Lgth;

    iput-object p2, p0, Lgth$1;->a:Ljac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic on(Ljava/lang/Object;)V
    .locals 5
    .param p1, "x0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 109
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    .line 1113
    .end local p1    # "x0":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v0

    .line 1114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "LWP Response "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1115
    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v0, v1, :cond_1

    .line 1117
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v0

    .line 1118
    iget-object v1, p0, Lgth$1;->a:Ljac;

    const-class v2, Lgtm;

    invoke-interface {v1, v0, v2}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgtm;

    .line 1119
    if-eqz v0, :cond_1

    .line 1120
    iget-object v1, p0, Lgth$1;->b:Lgth;

    iget-object v2, v0, Lgtm;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lgth;->a(Lgth;I)I

    .line 1121
    iget-object v1, p0, Lgth$1;->b:Lgth;

    iget-object v2, v0, Lgtm;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lgth;->a(Lgth;Ljava/lang/String;)Ljava/lang/String;

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Http Response "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lgth$1;->b:Lgth;

    invoke-static {v2}, Lgth;->a(Lgth;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1123
    iget-object v1, v0, Lgtm;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgtk;

    .line 1126
    if-eqz v1, :cond_0

    .line 1128
    iget-object v4, p0, Lgth$1;->b:Lgth;

    invoke-static {v4}, Lgth;->b(Lgth;)Lgtn;

    move-result-object v4

    iget-object v1, v1, Lgtk;->a:Ljava/util/List;

    invoke-virtual {v4, v2, v1}, Lgtn;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1136
    :cond_1
    :goto_1
    iget-object v0, p0, Lgth$1;->b:Lgth;

    invoke-static {v0}, Lgth;->c(Lgth;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1137
    :try_start_1
    iget-object v0, p0, Lgth$1;->b:Lgth;

    invoke-static {v0}, Lgth;->c(Lgth;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1138
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 1130
    :cond_2
    :try_start_2
    iget-object v1, p0, Lgth$1;->b:Lgth;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v0, v0, Lgtm;->d:[B

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1, v2}, Lgth;->a(Lgth;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1138
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
