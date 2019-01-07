.class final Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask$1;
.super Ljava/lang/Object;
.source "UrlUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask;->run(Lcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/android/dingtalkim/base/model/ConversationMembersInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask;

    .prologue
    .line 2403
    iput-object p1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask$1;->b:Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask;

    iput-object p2, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2403
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2403
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/ConversationMembersInfo;

    .line 3406
    if-eqz p1, :cond_0

    .line 3409
    iget-object v0, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask$1;->a:Lcom/alibaba/wukong/Callback;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/ConversationMembersInfo;->mUserIdentityObjectList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 2403
    :cond_0
    return-void
.end method
