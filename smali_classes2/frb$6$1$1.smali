.class final Lfrb$6$1$1;
.super Ljava/lang/Object;
.source "LoginUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrb$6$1;->getUserToken(Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/core/callback/MemberCallback;

.field final synthetic b:Lfrb$6$1;


# direct methods
.method constructor <init>(Lfrb$6$1;Lcom/ali/user/open/core/callback/MemberCallback;)V
    .locals 0
    .param p1, "this$1"    # Lfrb$6$1;

    .prologue
    .line 538
    iput-object p1, p0, Lfrb$6$1$1;->b:Lfrb$6$1;

    iput-object p2, p0, Lfrb$6$1$1;->a:Lcom/ali/user/open/core/callback/MemberCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 538
    check-cast p1, Ljava/lang/String;

    .line 1541
    iget-object v0, p0, Lfrb$6$1$1;->a:Lcom/ali/user/open/core/callback/MemberCallback;

    invoke-interface {v0, p1}, Lcom/ali/user/open/core/callback/MemberCallback;->onSuccess(Ljava/lang/Object;)V

    .line 538
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 551
    iget-object v0, p0, Lfrb$6$1$1;->a:Lcom/ali/user/open/core/callback/MemberCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/callback/MemberCallback;->onSuccess(Ljava/lang/Object;)V

    .line 552
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 547
    return-void
.end method
