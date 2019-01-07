.class final Ldpf$2;
.super Ljava/lang/Object;
.source "MenuRecallHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpf;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ldpf;


# direct methods
.method constructor <init>(Ldpf;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Ldpf;

    .prologue
    .line 118
    iput-object p1, p0, Ldpf$2;->b:Ldpf;

    iput-object p2, p0, Ldpf$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Ldpf$2;->b:Ldpf;

    .line 1050
    invoke-virtual {v0}, Ldpf;->a()V

    .line 130
    iget-object v0, p0, Ldpf$2;->b:Ldpf;

    .line 2050
    const/4 v1, 0x0

    iput-object v1, v0, Ldpf;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 132
    sget v0, Lctk$i;->msg_recall_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 133
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    .line 2121
    iget-object v0, p0, Ldpf$2;->b:Ldpf;

    .line 3050
    invoke-virtual {v0}, Ldpf;->a()V

    .line 2122
    iget-object v0, p0, Ldpf$2;->b:Ldpf;

    .line 4050
    const/4 v1, 0x0

    iput-object v1, v0, Ldpf;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 2124
    iget-object v0, p0, Ldpf$2;->b:Ldpf;

    iget-object v1, p0, Ldpf$2;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Ldpf;->a(Ldpf;Landroid/content/Context;)V

    .line 118
    return-void
.end method
