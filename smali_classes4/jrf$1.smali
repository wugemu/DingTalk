.class final Ljrf$1;
.super Ljava/lang/Object;
.source "HttpDownloadProtocol.java"

# interfaces
.implements Ljpr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljrf;->a(Ljava/lang/String;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljpq$a;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Ljrf;


# direct methods
.method constructor <init>(Ljrf;Ljpq$a;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Ljrf;

    .prologue
    .line 32
    iput-object p1, p0, Ljrf$1;->c:Ljrf;

    iput-object p2, p0, Ljrf$1;->a:Ljpq$a;

    iput-object p3, p0, Ljrf$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHttpFinish(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "statusCode"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 56
    const-string/jumbo v0, "200"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 57
    iget-object v0, p0, Ljrf$1;->a:Ljpq$a;

    iput-object p2, v0, Ljpq$a;->d:Ljava/lang/Object;

    .line 59
    :cond_0
    iget-object v0, p0, Ljrf$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 60
    return-void
.end method
