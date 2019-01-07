.class final Lemf$2;
.super Ljava/lang/Object;
.source "ShortCutUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lemf;->a(Landroid/app/Activity;JLcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

.field final synthetic c:Lemf;


# direct methods
.method constructor <init>(Lemf;Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V
    .locals 0
    .param p1, "this$0"    # Lemf;

    .prologue
    .line 191
    iput-object p1, p0, Lemf$2;->c:Lemf;

    iput-object p2, p0, Lemf$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lemf$2;->b:Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

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
    .line 207
    iget-object v0, p0, Lemf$2;->a:Landroid/app/Activity;

    const v1, 0x7f090528

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lemf$2;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 209
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1198
    if-eqz p1, :cond_0

    .line 1199
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lemf$2;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 1200
    iget-object v0, p0, Lemf$2;->c:Lemf;

    iget-object v1, p0, Lemf$2;->a:Landroid/app/Activity;

    iget-object v2, p0, Lemf$2;->b:Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-static {v0, v1, p1, v2}, Lemf;->a(Lemf;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V

    .line 1201
    iget-object v0, p0, Lemf$2;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 191
    :cond_0
    return-void
.end method
