.class public final Ljhc$b;
.super Landroid/os/AsyncTask;
.source "AsyncWeiboRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljhc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljhc$a",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljhf;

.field private final c:Ljava/lang/String;

.field private final d:Ljhe;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljhf;Ljava/lang/String;Ljhe;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Ljhf;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "listener"    # Ljhe;

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 112
    iput-object p1, p0, Ljhc$b;->a:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Ljhc$b;->b:Ljhf;

    .line 114
    iput-object p3, p0, Ljhc$b;->c:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Ljhc$b;->d:Ljhe;

    .line 116
    return-void
.end method

.method private varargs a()Ljhc$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljhc$a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 121
    :try_start_0
    iget-object v2, p0, Ljhc$b;->a:Ljava/lang/String;

    iget-object v3, p0, Ljhc$b;->c:Ljava/lang/String;

    iget-object v4, p0, Ljhc$b;->b:Ljhf;

    invoke-static {v2, v3, v4}, Ljhd;->a(Ljava/lang/String;Ljava/lang/String;Ljhf;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljhc$a;

    invoke-direct {v2, v1}, Ljhc$a;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    new-instance v2, Ljhc$a;

    invoke-direct {v2, v0}, Ljhc$a;-><init>(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljhc$b;->a()Ljhc$a;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1
    check-cast p1, Ljhc$a;

    .line 1153
    iget-object v0, p1, Ljhc$a;->b:Lcom/sina/weibo/sdk/exception/WeiboException;

    .line 1136
    if-eqz v0, :cond_0

    .line 1137
    iget-object v1, p0, Ljhc$b;->d:Ljhe;

    invoke-interface {v1, v0}, Ljhe;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 1138
    :goto_0
    return-void

    .line 1139
    :cond_0
    iget-object v1, p0, Ljhc$b;->d:Ljhe;

    .line 2149
    iget-object v0, p1, Ljhc$a;->a:Ljava/lang/Object;

    .line 1139
    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljhe;->onComplete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method
