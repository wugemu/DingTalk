.class public final Liam;
.super Ljava/lang/Object;
.source "CategoryEventPoster.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Liak;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Liam;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Liam;->a:Ljava/util/List;

    return-object v0
.end method

.method public static a(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 2
    .param p0, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    .prologue
    .line 36
    if-eqz p0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v0, v1}, Liap;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    new-instance v0, Liam$1;

    invoke-direct {v0, p0}, Liam$1;-><init>(Lcom/alibaba/wukong/im/category/CategoryObject;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Liak;)V
    .locals 1
    .param p0, "listener"    # Liak;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    sget-object v0, Liam;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    if-nez p0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 82
    .local v1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 84
    .local v0, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v2, v3}, Liap;->b(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 88
    .end local v0    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_3
    new-instance v2, Liam$4;

    invoke-direct {v2, p0}, Liam$4;-><init>(Ljava/util/List;)V

    invoke-static {v2}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 2
    .param p0, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    .prologue
    .line 50
    if-eqz p0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v0, v1}, Liap;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    new-instance v0, Liam$2;

    invoke-direct {v0, p0}, Liam$2;-><init>(Lcom/alibaba/wukong/im/category/CategoryObject;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static b(Liak;)V
    .locals 1
    .param p0, "listener"    # Liak;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    sget-object v0, Liam;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    new-instance v0, Liam$5;

    invoke-direct {v0, p0}, Liam$5;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public static c(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 2
    .param p0, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    .prologue
    .line 64
    if-eqz p0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v0, v1}, Liap;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance v0, Liam$3;

    invoke-direct {v0, p0}, Liam$3;-><init>(Lcom/alibaba/wukong/im/category/CategoryObject;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Liam$6;

    invoke-direct {v0, p0}, Liam$6;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
