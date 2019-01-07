.class final Lcom/alibaba/android/search/model/MsgModel$1;
.super Ljava/lang/Object;
.source "MsgModel.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/model/MsgModel;->getMessage(Ljava/lang/String;Ljava/lang/String;Lcma;)V
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
.field final synthetic a:J

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/android/search/model/MsgModel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/model/MsgModel;JLcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/model/MsgModel;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/android/search/model/MsgModel$1;->c:Lcom/alibaba/android/search/model/MsgModel;

    iput-wide p2, p0, Lcom/alibaba/android/search/model/MsgModel$1;->a:J

    iput-object p4, p0, Lcom/alibaba/android/search/model/MsgModel$1;->b:Lcma;

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

    .line 212
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "getConversation error, code = "

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

    .line 213
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 184
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1187
    if-eqz p1, :cond_0

    .line 1188
    iget-wide v0, p0, Lcom/alibaba/android/search/model/MsgModel$1;->a:J

    new-instance v2, Lcom/alibaba/android/search/model/MsgModel$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/model/MsgModel$1$1;-><init>(Lcom/alibaba/android/search/model/MsgModel$1;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V

    .line 184
    :cond_0
    return-void
.end method
