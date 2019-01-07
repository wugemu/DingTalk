.class final Ljnq$a;
.super Landroid/os/Handler;
.source "HttpProxyCacheServerClients.java"

# interfaces
.implements Ljnk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljnq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljnk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljnk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p2, "listeners":Ljava/util/List;, "Ljava/util/List<Ljnk;>;"
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 162
    iput-object p1, p0, Ljnq$a;->a:Ljava/lang/String;

    .line 163
    iput-object p2, p0, Ljnq$a;->b:Ljava/util/List;

    .line 164
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;I)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "percentsAvailable"    # I

    .prologue
    .line 168
    invoke-virtual {p0}, Ljnq$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 169
    .local v0, "message":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 170
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    invoke-virtual {p0, v0}, Ljnq$a;->sendMessage(Landroid/os/Message;)Z

    .line 172
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 176
    iget-object v1, p0, Ljnq$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljnk;

    .line 177
    .local v0, "cacheListener":Ljnk;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v3}, Ljnk;->a(Ljava/io/File;I)V

    goto :goto_0

    .line 179
    .end local v0    # "cacheListener":Ljnk;
    :cond_0
    return-void
.end method
