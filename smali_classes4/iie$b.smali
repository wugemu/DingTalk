.class final Liie$b;
.super Landroid/os/AsyncTask;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
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
.field final synthetic a:Liie;


# direct methods
.method private constructor <init>(Liie;)V
    .locals 1

    .prologue
    .line 157
    iput-object p1, p0, Liie$b;->a:Liie;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Liie;B)V
    .locals 0
    .param p1, "x0"    # Liie;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Liie$b;-><init>(Liie;)V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 162
    :try_start_0
    iget-object v1, p0, Liie$b;->a:Liie;

    invoke-static {v1}, Liie;->b(Liie;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    iget-object v1, p0, Liie$b;->a:Liie;

    invoke-static {v1}, Liie;->c(Liie;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    :try_start_1
    iget-object v1, p0, Liie$b;->a:Liie;

    invoke-static {v1}, Liie;->d(Liie;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    :goto_1
    iget-object v1, p0, Liie$b;->a:Liie;

    invoke-static {v1, v4}, Liie;->a(Liie;Z)Z

    .line 173
    iget-object v1, p0, Liie$b;->a:Liie;

    invoke-static {v1, v4}, Liie;->b(Liie;Z)Z

    .line 174
    iget-object v1, p0, Liie$b;->a:Liie;

    invoke-static {v1}, Liie;->a(Liie;)V

    .line 176
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 164
    :catch_0
    move-exception v1

    const-string/jumbo v1, "AutoFocusManager"

    const-string/jumbo v2, "InterruptedException"

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :catch_1
    move-exception v0

    .line 170
    .local v0, "re":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "AutoFocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "exception while cancel autofocus:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
