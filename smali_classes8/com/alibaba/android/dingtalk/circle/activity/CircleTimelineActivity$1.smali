.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$1;
.super Ljava/lang/Object;
.source "CircleTimelineActivity.java"

# interfaces
.implements Lbqe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 6
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 219
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    .line 224
    .local v2, "postId":J
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 225
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 227
    .local v1, "post":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    if-eqz v1, :cond_2

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 232
    .end local v1    # "post":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbnq;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbnq;->a(Ljava/util/List;)V

    .line 233
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbnq;

    move-result-object v4

    invoke-virtual {v4}, Lbnq;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method
