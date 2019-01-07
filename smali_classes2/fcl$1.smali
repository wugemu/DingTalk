.class final Lfcl$1;
.super Ljava/lang/Object;
.source "PostCreater.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfcl;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;Lcma;)V
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
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lfcl;


# direct methods
.method constructor <init>(Lfcl;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfcl;

    .prologue
    .line 85
    iput-object p1, p0, Lfcl$1;->b:Lfcl;

    iput-object p2, p0, Lfcl$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 85
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1088
    if-eqz p1, :cond_1

    .line 1091
    iget-object v0, p0, Lfcl$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lfcl$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1094
    :cond_0
    iget-object v0, p0, Lfcl$1;->b:Lfcl;

    .line 2144
    const-string/jumbo v1, "CircleUploadService-Delete-Mock-Post"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lffm;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lfcl$2;

    invoke-direct {v2, v0, p1}, Lfcl$2;-><init>(Lfcl;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 85
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 104
    iget-object v1, p0, Lfcl$1;->a:Lcma;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lfcl$1;->a:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "createPost code = "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " exception = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1060
    invoke-static {v4, v1}, Lffe;->a(ZLjava/lang/String;)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "connection_on_upload_files_failed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "connection_on_upload_files_failed"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 112
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 100
    return-void
.end method
