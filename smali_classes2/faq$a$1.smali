.class final Lfaq$a$1;
.super Ljava/lang/Object;
.source "LWPOAuthProvider.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfaq$a;->a(Lcee;Ljava/lang/String;Lcma;)V
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
        "Lcom/alibaba/wukong/auth/AuthInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcee;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lfaq$a;


# direct methods
.method constructor <init>(Lfaq$a;Lcma;Lcee;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lfaq$a;

    .prologue
    .line 703
    iput-object p1, p0, Lfaq$a$1;->d:Lfaq$a;

    iput-object p2, p0, Lfaq$a$1;->a:Lcma;

    iput-object p3, p0, Lfaq$a$1;->b:Lcee;

    iput-object p4, p0, Lfaq$a$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x2

    .line 715
    const-string/jumbo v0, "LwpOAuthProvider"

    const-string/jumbo v1, "wk login with LoginParam fail:%s %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    iget-object v0, p0, Lfaq$a$1;->d:Lfaq$a;

    .line 1683
    iget v0, v0, Lfaq$a;->a:I

    .line 716
    if-ge v0, v4, :cond_0

    .line 717
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfaq$a$1$1;

    invoke-direct {v1, p0}, Lfaq$a$1$1;-><init>(Lfaq$a$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 728
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lfaq$a$1;->a:Lcma;

    const-string/jumbo v1, "12305"

    invoke-interface {v0, v1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lfaq$a$1;->d:Lfaq$a;

    iget-object v0, v0, Lfaq$a;->b:Lfaq;

    const/4 v1, 0x3

    iget-object v2, p0, Lfaq$a$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lfaq;->a(Lfaq;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 703
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 703
    .line 1707
    const-string/jumbo v0, "LwpOAuthProvider"

    const-string/jumbo v1, "wk login with LoginParam suc"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1708
    iget-object v0, p0, Lfaq$a$1;->a:Lcma;

    iget-object v1, p0, Lfaq$a$1;->b:Lcee;

    iget-object v1, v1, Lcee;->i:Lcgj;

    .line 1709
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->fromIDLModel(Lcgj;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 1708
    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1710
    iget-object v0, p0, Lfaq$a$1;->d:Lfaq$a;

    iget-object v0, v0, Lfaq$a;->b:Lfaq;

    invoke-static {v0}, Lfaq;->a(Lfaq;)V

    .line 703
    return-void
.end method
