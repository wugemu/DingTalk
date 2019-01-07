.class public final Lcom/android/camera/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/BitmapManager$a;,
        Lcom/android/camera/BitmapManager$State;
    }
.end annotation


# static fields
.field private static b:Lcom/android/camera/BitmapManager;


# instance fields
.field private final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/android/camera/BitmapManager$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/BitmapManager;->b:Lcom/android/camera/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/BitmapManager;->a:Ljava/util/WeakHashMap;

    .line 66
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Thread;)Lcom/android/camera/BitmapManager$a;
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/BitmapManager$a;

    .line 73
    .local v0, "status":Lcom/android/camera/BitmapManager$a;
    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/camera/BitmapManager$a;

    .end local v0    # "status":Lcom/android/camera/BitmapManager$a;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/BitmapManager$a;-><init>(B)V

    .line 75
    .restart local v0    # "status":Lcom/android/camera/BitmapManager$a;
    iget-object v1, p0, Lcom/android/camera/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    monitor-exit p0

    return-object v0

    .line 72
    .end local v0    # "status":Lcom/android/camera/BitmapManager$a;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized a()Lcom/android/camera/BitmapManager;
    .locals 2

    .prologue
    .line 167
    const-class v1, Lcom/android/camera/BitmapManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/BitmapManager;->b:Lcom/android/camera/BitmapManager;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/android/camera/BitmapManager;

    invoke-direct {v0}, Lcom/android/camera/BitmapManager;-><init>()V

    sput-object v0, Lcom/android/camera/BitmapManager;->b:Lcom/android/camera/BitmapManager;

    .line 170
    :cond_0
    sget-object v0, Lcom/android/camera/BitmapManager;->b:Lcom/android/camera/BitmapManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/BitmapManager;->a(Ljava/lang/Thread;)Lcom/android/camera/BitmapManager$a;

    move-result-object v0

    iput-object p2, v0, Lcom/android/camera/BitmapManager$a;->b:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/BitmapManager$a;

    .line 91
    .local v0, "status":Lcom/android/camera/BitmapManager$a;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/BitmapManager$a;->b:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 90
    .end local v0    # "status":Lcom/android/camera/BitmapManager$a;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized c(Ljava/lang/Thread;)Z
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/BitmapManager$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .local v1, "status":Lcom/android/camera/BitmapManager$a;
    if-nez v1, :cond_0

    .line 106
    :goto_0
    monitor-exit p0

    return v0

    .line 105
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/camera/BitmapManager$a;->a:Lcom/android/camera/BitmapManager$State;

    sget-object v3, Lcom/android/camera/BitmapManager$State;->CANCEL:Lcom/android/camera/BitmapManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v3, :cond_1

    .line 106
    .local v0, "result":Z
    :goto_1
    goto :goto_0

    .line 105
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 99
    .end local v1    # "status":Lcom/android/camera/BitmapManager$a;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public final a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v2, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-object v0

    .line 182
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 183
    .local v1, "thread":Ljava/lang/Thread;
    invoke-direct {p0, v1}, Lcom/android/camera/BitmapManager;->c(Ljava/lang/Thread;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-direct {p0, v1, p2}, Lcom/android/camera/BitmapManager;->a(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V

    .line 188
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lcom/android/camera/BitmapManager;->b(Ljava/lang/Thread;)V

    goto :goto_0
.end method
