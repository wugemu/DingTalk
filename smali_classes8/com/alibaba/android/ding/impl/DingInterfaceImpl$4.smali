.class final Lcom/alibaba/android/ding/impl/DingInterfaceImpl$4;
.super Ljava/lang/Object;
.source "DingInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/impl/DingInterfaceImpl;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/impl/DingInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/impl/DingInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/impl/DingInterfaceImpl;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$4;->a:Lcom/alibaba/android/ding/impl/DingInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 196
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 185
    check-cast p1, Ljava/lang/Boolean;

    .line 1188
    if-eqz p1, :cond_0

    .line 2022
    invoke-static {p1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1188
    if-eqz v0, :cond_0

    .line 1189
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DingInterfaceImpl] checkIfNeedLoadRedDotData isLocalNotExistsOrInvalid=true"

    aput-object v1, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1190
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbbp;->a(Lcom/alibaba/wukong/sync/SyncAck;)V

    .line 185
    :cond_0
    return-void
.end method
