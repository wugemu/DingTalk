.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$11;
.super Ljava/lang/Object;
.source "AnnounceEditActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;
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
        "Lcom/alibaba/wukong/im/Member;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 232
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "get conversation members failed, code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", conversationId:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->f(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 222
    check-cast p1, Ljava/util/List;

    .line 1225
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->e(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;->setIsDisable(Z)V

    .line 1226
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->e(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;

    move-result-object v1

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;->setSelectedNum(I)V

    .line 1227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->e(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;->a()V

    .line 222
    return-void

    .line 1226
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
