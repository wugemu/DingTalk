.class final Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$5;
.super Lcmi;
.source "ChannelListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ldqp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$5;->a:Z

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)V

    .line 249
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 227
    check-cast p1, Ldqp;

    .line 1230
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$5;->a:Z

    if-nez v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1233
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Ldqp;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1234
    iget-object v0, p1, Ldqp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Ldqp;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    iget-wide v2, p1, Ldqp;->b:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;J)J

    .line 1238
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    iget-boolean v1, p1, Ldqp;->c:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;Z)Z

    .line 1239
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)Lcuc;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)Lcuc;

    move-result-object v0

    invoke-virtual {v0}, Lcuc;->notifyDataSetChanged()V

    .line 1243
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)V

    .line 227
    return-void
.end method
