.class final Ldmi$2;
.super Ljava/lang/Object;
.source "ChatSceneModel.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldmi;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ldso;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldmi;


# direct methods
.method constructor <init>(Ldmi;)V
    .locals 0
    .param p1, "this$0"    # Ldmi;

    .prologue
    .line 246
    iput-object p1, p0, Ldmi$2;->a:Ldmi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 246
    check-cast p1, Ldso;

    .line 3249
    iget-object v0, p0, Ldmi$2;->a:Ldmi;

    .line 4035
    iput-boolean v6, v0, Ldmi;->c:Z

    .line 3250
    iget-object v1, p0, Ldmi$2;->a:Ldmi;

    .line 5142
    if-eqz p1, :cond_0

    .line 5145
    iput-object p1, v1, Ldmi;->a:Ldso;

    .line 5147
    :try_start_0
    iget-object v0, v1, Ldmi;->a:Ldso;

    invoke-static {v0}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5148
    iget-object v2, v1, Ldmi;->b:Landroid/content/Context;

    const-string/jumbo v3, "pref_key_local_celebrate_info"

    invoke-static {v2, v3, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5154
    :goto_0
    invoke-virtual {v1}, Ldmi;->b()V

    .line 5155
    invoke-virtual {v1}, Ldmi;->a()V

    .line 3251
    :cond_0
    iget-object v0, p0, Ldmi$2;->a:Ldmi;

    .line 6035
    iget-boolean v0, v0, Ldmi;->d:Z

    .line 3251
    if-eqz v0, :cond_1

    .line 3252
    iget-object v0, p0, Ldmi$2;->a:Ldmi;

    .line 7035
    invoke-virtual {v0}, Ldmi;->c()V

    .line 246
    :cond_1
    return-void

    .line 5149
    :catch_0
    move-exception v0

    .line 5150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5151
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "chatSceneCache set local cache json error "

    aput-object v5, v4, v6

    const/4 v5, 0x1

    .line 5152
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5151
    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 263
    iget-object v0, p0, Ldmi$2;->a:Ldmi;

    .line 1035
    const/4 v1, 0x0

    iput-boolean v1, v0, Ldmi;->c:Z

    .line 264
    iget-object v0, p0, Ldmi$2;->a:Ldmi;

    .line 2035
    iget-boolean v0, v0, Ldmi;->d:Z

    .line 264
    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Ldmi$2;->a:Ldmi;

    .line 3035
    invoke-virtual {v0}, Ldmi;->c()V

    .line 267
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 259
    return-void
.end method
