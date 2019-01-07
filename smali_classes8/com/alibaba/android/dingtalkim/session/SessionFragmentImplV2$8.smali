.class final Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$8;
.super Ljava/lang/Object;
.source "SessionFragmentImplV2.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 1841
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$8;->b:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$8;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 1858
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 1859
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1841
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1841
    .line 2844
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$8;->a:Lcom/alibaba/wukong/im/Conversation;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->updateAtMeStatus(Z)V

    .line 2845
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$8;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 2846
    if-eqz v0, :cond_0

    .line 2847
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$8;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "at_uid"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2848
    const-string/jumbo v1, "anchorType"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2849
    const-string/jumbo v1, "anchorMessageId"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    const-string/jumbo v1, "messageCreateTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2851
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$8;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 2853
    :cond_0
    sget v0, Lctk$i;->conversation_clear_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1841
    return-void
.end method
