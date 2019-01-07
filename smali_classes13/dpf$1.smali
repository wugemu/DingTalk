.class final Ldpf$1;
.super Ljava/lang/Object;
.source "MenuRecallHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpf;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Ldpf;


# direct methods
.method constructor <init>(Ldpf;Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Ldpf;

    .prologue
    .line 95
    iput-object p1, p0, Ldpf$1;->c:Ldpf;

    iput-object p2, p0, Ldpf$1;->a:Landroid/content/Context;

    iput-object p3, p0, Ldpf$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Ldpf$1;->c:Ldpf;

    .line 1050
    invoke-virtual {v0}, Ldpf;->a()V

    .line 99
    iget-object v0, p0, Ldpf$1;->c:Ldpf;

    .line 2050
    const/4 v1, 0x0

    iput-object v1, v0, Ldpf;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 101
    iget-object v0, p0, Ldpf$1;->c:Ldpf;

    iget-object v1, p0, Ldpf$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Ldpf;->a(Ldpf;Landroid/content/Context;)V

    .line 102
    iget-object v0, p0, Ldpf$1;->b:Lcom/alibaba/wukong/im/Message;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Message;->updateLocalRecallStatus(I)V

    .line 103
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Ldpf$1;->c:Ldpf;

    .line 3050
    invoke-virtual {v0}, Ldpf;->a()V

    .line 112
    iget-object v0, p0, Ldpf$1;->c:Ldpf;

    .line 4050
    const/4 v1, 0x0

    iput-object v1, v0, Ldpf;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 114
    sget v0, Lctk$i;->msg_recall_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 115
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 107
    return-void
.end method
