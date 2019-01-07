.class final Ldpf$3;
.super Ljava/lang/Object;
.source "MenuRecallHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpf;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lcom/alibaba/wukong/im/Message;

.field final synthetic d:I

.field final synthetic e:Ldpf;


# direct methods
.method constructor <init>(Ldpf;Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "this$0"    # Ldpf;

    .prologue
    .line 161
    iput-object p1, p0, Ldpf$3;->e:Ldpf;

    iput-object p2, p0, Ldpf$3;->a:Landroid/content/Context;

    iput-object p3, p0, Ldpf$3;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p4, p0, Ldpf$3;->c:Lcom/alibaba/wukong/im/Message;

    iput p5, p0, Ldpf$3;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    .line 4164
    iget-object v0, p0, Ldpf$3;->e:Ldpf;

    iget-object v1, p0, Ldpf$3;->a:Landroid/content/Context;

    iget-object v2, p0, Ldpf$3;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Ldpf$3;->c:Lcom/alibaba/wukong/im/Message;

    iget v3, p0, Ldpf$3;->d:I

    .line 5050
    invoke-virtual {v0, v1, v2, v3}, Ldpf;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;I)V

    .line 161
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    iget-object v0, p0, Ldpf$3;->e:Ldpf;

    .line 3050
    invoke-virtual {v0}, Ldpf;->a()V

    .line 183
    iget-object v0, p0, Ldpf$3;->e:Ldpf;

    .line 4050
    const/4 v1, 0x0

    iput-object v1, v0, Ldpf;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 185
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 3
    .param p1, "action"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 172
    check-cast v0, Ljava/lang/String;

    .line 173
    .local v0, "actionString":Ljava/lang/String;
    const-string/jumbo v1, "showLoadingDialogOfRecallSpaceLink"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Ldpf$3;->e:Ldpf;

    iget-object v2, p0, Ldpf$3;->a:Landroid/content/Context;

    .line 1050
    invoke-virtual {v1, v2}, Ldpf;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 175
    :cond_2
    const-string/jumbo v1, "dismissLoadingDialogOfRecallSpaceLink"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Ldpf$3;->e:Ldpf;

    .line 2050
    invoke-virtual {v1}, Ldpf;->a()V

    goto :goto_0
.end method
