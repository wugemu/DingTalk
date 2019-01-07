.class final Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$4;
.super Ljava/lang/Object;
.source "ChatThemeActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->a()V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

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
    .line 289
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ChatThemeActivity.loadData code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 275
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1278
    if-eqz p1, :cond_1

    .line 1279
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    .line 1280
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ldjt;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->b(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;Z)Z

    .line 1281
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->supportInvalidateOptionsMenu()V

    .line 1283
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->e(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)V

    .line 1284
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->f(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)V

    .line 275
    return-void

    .line 1280
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
