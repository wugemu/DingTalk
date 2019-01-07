.class final Lfrb$6$2;
.super Ljava/lang/Object;
.source "LoginUtils.java"

# interfaces
.implements Lcom/ali/user/open/ucc/UccCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrb$6;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfrb$6;


# direct methods
.method constructor <init>(Lfrb$6;)V
    .locals 0
    .param p1, "this$0"    # Lfrb$6;

    .prologue
    .line 560
    iput-object p1, p0, Lfrb$6$2;->a:Lfrb$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "oauthPlatform"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 575
    iget-object v0, p0, Lfrb$6$2;->a:Lfrb$6;

    iget-object v0, v0, Lfrb$6;->c:Lcma;

    if-eqz v0, :cond_0

    .line 576
    new-instance v0, Lfrb$6$2$2;

    invoke-direct {v0, p0, p2, p3}, Lfrb$6$2$2;-><init>(Lfrb$6$2;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 583
    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "oauthPlatform"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/util/Map;

    .prologue
    .line 563
    iget-object v0, p0, Lfrb$6$2;->a:Lfrb$6;

    iget-object v0, v0, Lfrb$6;->c:Lcma;

    if-eqz v0, :cond_0

    .line 564
    new-instance v0, Lfrb$6$2$1;

    invoke-direct {v0, p0}, Lfrb$6$2$1;-><init>(Lfrb$6$2;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 571
    :cond_0
    return-void
.end method
