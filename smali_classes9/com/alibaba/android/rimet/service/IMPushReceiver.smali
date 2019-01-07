.class public Lcom/alibaba/android/rimet/service/IMPushReceiver;
.super Ljava/lang/Object;
.source "IMPushReceiver.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Receive;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Receive",
        "<",
        "Lcom/laiwang/protocol/core/Request;",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/alibaba/android/rimet/service/IMPushReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/rimet/service/IMPushReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alibaba/android/rimet/service/IMPushReceiver;->b:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 19
    check-cast p1, Lcom/laiwang/protocol/core/Request;

    .line 1030
    const-string/jumbo v0, "user_lg"

    sget-object v1, Lcom/alibaba/android/rimet/service/IMPushReceiver;->a:Ljava/lang/String;

    const-string/jumbo v2, "IMPushReceiver logout"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string/jumbo v0, "topic"

    invoke-virtual {p1, v0}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "receive topic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    const-string/jumbo v1, "laiwang/kickout/uid/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->d()V

    .line 1035
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->logout()V

    .line 1036
    iget-object v0, p0, Lcom/alibaba/android/rimet/service/IMPushReceiver;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.laiwang.protocol.KICKOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1038
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {p1, v0}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    .line 19
    return-void
.end method
