.class final Landroid/support/v4/view/AsyncLayoutInflater$c;
.super Ljava/lang/Thread;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static final b:Landroid/support/v4/view/AsyncLayoutInflater$c;


# instance fields
.field a:Lfu$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfu$c",
            "<",
            "Landroid/support/v4/view/AsyncLayoutInflater$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroid/support/v4/view/AsyncLayoutInflater$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$c;

    invoke-direct {v0}, Landroid/support/v4/view/AsyncLayoutInflater$c;-><init>()V

    .line 162
    sput-object v0, Landroid/support/v4/view/AsyncLayoutInflater$c;->b:Landroid/support/v4/view/AsyncLayoutInflater$c;

    invoke-virtual {v0}, Landroid/support/v4/view/AsyncLayoutInflater$c;->start()V

    .line 163
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 158
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 169
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$c;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 170
    new-instance v0, Lfu$c;

    invoke-direct {v0, v1}, Lfu$c;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$c;->a:Lfu$c;

    return-void
.end method

.method public static a()Landroid/support/v4/view/AsyncLayoutInflater$c;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Landroid/support/v4/view/AsyncLayoutInflater$c;->b:Landroid/support/v4/view/AsyncLayoutInflater$c;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 200
    .line 1178
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$c;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/AsyncLayoutInflater$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    const/4 v1, 0x0

    :try_start_1
    iget-object v1, v1, Landroid/support/v4/view/AsyncLayoutInflater;->a:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->d:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1193
    :goto_1
    iget-object v1, v6, Landroid/support/v4/view/AsyncLayoutInflater;->b:Landroid/os/Handler;

    invoke-static {v1, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1194
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1179
    :catch_0
    move-exception v0

    .line 1181
    const-string/jumbo v1, "AsyncLayoutInflater"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1188
    :catch_1
    move-exception v1

    .line 1190
    const-string/jumbo v2, "AsyncLayoutInflater"

    const-string/jumbo v3, "Failed to inflate resource in the background! Retrying on the UI thread"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
