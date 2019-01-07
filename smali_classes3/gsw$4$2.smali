.class final Lgsw$4$2;
.super Ljava/lang/Object;
.source "FaceRecordPresenter.java"

# interfaces
.implements Lgsu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgsw$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lgsw$4;


# direct methods
.method constructor <init>(Lgsw$4;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "this$1"    # Lgsw$4;

    .prologue
    .line 426
    iput-object p1, p0, Lgsw$4$2;->c:Lgsw$4;

    iput-object p2, p0, Lgsw$4$2;->a:Ljava/io/File;

    iput-object p3, p0, Lgsw$4$2;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;)V
    .locals 2
    .param p1, "model"    # Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 429
    iget-object v0, p0, Lgsw$4$2;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 430
    iget-object v0, p0, Lgsw$4$2;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 432
    iget-object v0, p0, Lgsw$4$2;->c:Lgsw$4;

    iget-object v0, v0, Lgsw$4;->f:Lgsw;

    .line 1048
    iget-object v0, v0, Lgsw;->g:Landroid/os/Handler;

    .line 432
    new-instance v1, Lgsw$4$2$1;

    invoke-direct {v1, p0, p1}, Lgsw$4$2$1;-><init>(Lgsw$4$2;Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 445
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 449
    iget-object v0, p0, Lgsw$4$2;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 450
    iget-object v0, p0, Lgsw$4$2;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 451
    iget-object v0, p0, Lgsw$4$2;->c:Lgsw$4;

    iget-object v0, v0, Lgsw$4;->f:Lgsw;

    .line 2048
    iget-object v0, v0, Lgsw;->g:Landroid/os/Handler;

    .line 451
    new-instance v1, Lgsw$4$2$2;

    invoke-direct {v1, p0, p1, p2}, Lgsw$4$2$2;-><init>(Lgsw$4$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 462
    return-void
.end method
