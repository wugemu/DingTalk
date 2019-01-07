.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$10;
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

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
    .line 206
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "get conversation failed, code:"

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

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->f(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->finish()V

    .line 210
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 193
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1196
    if-nez p1, :cond_0

    .line 1197
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "conversation is null, conversationId:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->f(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->finish()V

    .line 1199
    :goto_0
    return-void

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method
