.class final Lfrb$5$1;
.super Ljava/lang/Object;
.source "LoginUtils.java"

# interfaces
.implements Lcom/ali/user/open/ucc/UccCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrb$5;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfrb$5;


# direct methods
.method constructor <init>(Lfrb$5;)V
    .locals 0
    .param p1, "this$0"    # Lfrb$5;

    .prologue
    .line 481
    iput-object p1, p0, Lfrb$5$1;->a:Lfrb$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "oauthPlatform"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 496
    iget-object v0, p0, Lfrb$5$1;->a:Lfrb$5;

    iget-object v0, v0, Lfrb$5;->c:Lcma;

    if-eqz v0, :cond_0

    .line 497
    new-instance v0, Lfrb$5$1$2;

    invoke-direct {v0, p0, p2, p3}, Lfrb$5$1$2;-><init>(Lfrb$5$1;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 504
    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "oauthPlatform"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/util/Map;

    .prologue
    .line 484
    iget-object v0, p0, Lfrb$5$1;->a:Lfrb$5;

    iget-object v0, v0, Lfrb$5;->c:Lcma;

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Lfrb$5$1$1;

    invoke-direct {v0, p0}, Lfrb$5$1$1;-><init>(Lfrb$5$1;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 492
    :cond_0
    return-void
.end method
