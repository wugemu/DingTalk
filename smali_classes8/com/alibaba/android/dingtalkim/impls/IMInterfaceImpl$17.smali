.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$17;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Lcma;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$17;->b:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$17;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$17;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$17;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1160
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1160
    check-cast p1, Ljava/util/List;

    .line 2168
    const/4 v0, 0x0

    .line 2169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2170
    if-eqz v0, :cond_2

    .line 2171
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 2172
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 2174
    goto :goto_0

    .line 2175
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$17;->a:Lcma;

    if-eqz v0, :cond_1

    .line 2176
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$17;->a:Lcma;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1160
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method
