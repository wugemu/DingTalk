.class final Lemm$a;
.super Landroid/os/AsyncTask;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lemm;
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
.field final synthetic a:Lemm;


# direct methods
.method private constructor <init>(Lemm;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lemm$a;->a:Lemm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lemm;B)V
    .locals 0
    .param p1, "x0"    # Lemm;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lemm$a;-><init>(Lemm;)V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lemm$a;->a:Lemm;

    invoke-static {v0}, Lemm;->b(Lemm;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    iget-object v0, p0, Lemm$a;->a:Lemm;

    invoke-static {v0}, Lemm;->a(Lemm;)V

    .line 156
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
