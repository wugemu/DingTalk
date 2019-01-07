.class final Liem$b;
.super Ljava/lang/Thread;
.source "ProcessUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Liem$a;

.field private final b:Ljava/lang/Process;


# direct methods
.method private constructor <init>(Ljava/lang/Process;)V
    .locals 1
    .param p1, "process"    # Ljava/lang/Process;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 71
    iput-object p1, p0, Liem$b;->b:Ljava/lang/Process;

    .line 72
    new-instance v0, Liem$a;

    invoke-direct {v0}, Liem$a;-><init>()V

    iput-object v0, p0, Liem$b;->a:Liem$a;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Process;B)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Process;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Liem$b;-><init>(Ljava/lang/Process;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Liem$b;->b:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 78
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p0, Liem$b;->a:Liem$a;

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/IOUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Liem$a;->b:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Liem$b;->a:Liem$a;

    iget-object v2, p0, Liem$b;->b:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v2

    iput v2, v1, Liem$a;->a:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
