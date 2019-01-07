.class public Lcom/alibaba/android/rimet/service/KickoutReceiver;
.super Ljava/lang/Object;
.source "KickoutReceiver.java"

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
    .line 19
    const-class v0, Lcom/alibaba/android/rimet/service/KickoutReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/rimet/service/KickoutReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/android/rimet/service/KickoutReceiver;->b:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 18
    check-cast p1, Lcom/laiwang/protocol/core/Request;

    .line 1028
    const-string/jumbo v0, "user_lg"

    sget-object v1, Lcom/alibaba/android/rimet/service/KickoutReceiver;->a:Ljava/lang/String;

    const-string/jumbo v2, "KickoutReceiver logout"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->d()V

    .line 1030
    iget-object v0, p0, Lcom/alibaba/android/rimet/service/KickoutReceiver;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.laiwang.protocol.KICKOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1031
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {p1, v0}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    .line 1032
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->logout()V

    .line 18
    return-void
.end method
