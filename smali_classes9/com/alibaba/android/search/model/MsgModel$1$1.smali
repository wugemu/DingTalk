.class final Lcom/alibaba/android/search/model/MsgModel$1$1;
.super Ljava/lang/Object;
.source "MsgModel.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/model/MsgModel$1;
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/model/MsgModel$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/model/MsgModel$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/model/MsgModel$1;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/search/model/MsgModel$1$1;->a:Lcom/alibaba/android/search/model/MsgModel$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 199
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "getMessage error, code = "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 188
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1191
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel$1$1;->a:Lcom/alibaba/android/search/model/MsgModel$1;

    iget-object v0, v0, Lcom/alibaba/android/search/model/MsgModel$1;->c:Lcom/alibaba/android/search/model/MsgModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/model/MsgModel;->setTag(Ljava/lang/Object;)V

    .line 1192
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel$1$1;->a:Lcom/alibaba/android/search/model/MsgModel$1;

    iget-object v0, v0, Lcom/alibaba/android/search/model/MsgModel$1;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel$1$1;->a:Lcom/alibaba/android/search/model/MsgModel$1;

    iget-object v0, v0, Lcom/alibaba/android/search/model/MsgModel$1;->b:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 188
    :cond_0
    return-void
.end method
