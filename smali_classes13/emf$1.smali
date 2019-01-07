.class final Lemf$1;
.super Ljava/lang/Object;
.source "ShortCutUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lemf;->b(Landroid/app/Activity;Landroid/content/Intent;)V
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

.field final synthetic b:Lemf;


# direct methods
.method constructor <init>(Lemf;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lemf;

    .prologue
    .line 121
    iput-object p1, p0, Lemf$1;->b:Lemf;

    iput-object p2, p0, Lemf$1;->a:Landroid/app/Activity;

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
    .line 137
    iget-object v0, p0, Lemf$1;->a:Landroid/app/Activity;

    const v1, 0x7f090528

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lemf$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 139
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1128
    if-eqz p1, :cond_0

    .line 1130
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lemf$1;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 1132
    :cond_0
    iget-object v0, p0, Lemf$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 121
    return-void
.end method
