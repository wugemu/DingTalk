.class final Liya$1;
.super Ljava/lang/Object;
.source "IMSTAVMtopUploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

.field final synthetic b:Lmtopsdk/mtop/upload/FileUploadBaseListener;

.field final synthetic c:Liya;


# direct methods
.method constructor <init>(Liya;Lmtopsdk/mtop/upload/domain/UploadFileInfo;Lmtopsdk/mtop/upload/FileUploadBaseListener;)V
    .locals 0
    .param p1, "this$0"    # Liya;

    .prologue
    .line 77
    iput-object p1, p0, Liya$1;->c:Liya;

    iput-object p2, p0, Liya$1;->a:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    iput-object p3, p0, Liya$1;->b:Lmtopsdk/mtop/upload/FileUploadBaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Liya$1;->c:Liya;

    invoke-static {v0}, Liya;->a(Liya;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Liya$1;->c:Liya;

    invoke-static {v0}, Liya;->a(Liya;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Liya$1$1;

    invoke-direct {v1, p0}, Liya$1$1;-><init>(Liya$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
