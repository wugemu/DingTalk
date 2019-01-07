.class final Lhbq$a;
.super Landroid/os/AsyncTask;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhbq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhbq;


# direct methods
.method private constructor <init>(Lhbq;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lhbq$a;->a:Lhbq;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhbq;B)V
    .locals 0
    .param p1, "x0"    # Lhbq;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lhbq$a;-><init>(Lhbq;)V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lhbq$a;->a:Lhbq;

    invoke-static {v0}, Lhbq;->b(Lhbq;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    iget-object v0, p0, Lhbq$a;->a:Lhbq;

    invoke-static {v0}, Lhbq;->a(Lhbq;)V

    .line 143
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
