.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$10;
.super Ljava/lang/Object;
.source "AnnounceActivity.java"

# interfaces
.implements Ldjl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 217
    const-string/jumbo v0, "0"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->dismissLoadingDialog()V

    .line 219
    return-void
.end method

.method public final a(J)V
    .locals 5
    .param p1, "uid"    # J

    .prologue
    const/4 v4, 0x1

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "isMaster":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getOnlyOwnerModifiable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Ldjt;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v1, v4}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Z)Z

    .line 212
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->d(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    .line 213
    return-void

    .line 210
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v1, v4}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Z)Z

    goto :goto_0
.end method
