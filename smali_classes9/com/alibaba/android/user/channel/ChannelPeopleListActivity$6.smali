.class final Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;
.super Lcmi;
.source "ChannelPeopleListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcfd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;->a:Z

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->b(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;Z)Z

    .line 254
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->i(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)V

    .line 255
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 227
    check-cast p1, Lcfd;

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->b(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;Z)Z

    .line 1231
    iget-boolean v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;->a:Z

    if-nez v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->g(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1234
    :cond_0
    if-eqz p1, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    iget-object v1, p1, Lcfd;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->g(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;I)I

    .line 1236
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    iget-object v1, p1, Lcfd;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->c(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;Z)Z

    .line 1238
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    iget-object v1, p1, Lcfd;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->h(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;I)V

    .line 1240
    iget-object v0, p1, Lcfd;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcfd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1241
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->g(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcfd;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1242
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->h(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)Lfbs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1243
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->h(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)Lfbs;

    move-result-object v0

    invoke-virtual {v0}, Lfbs;->notifyDataSetChanged()V

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->i(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)V

    .line 227
    return-void
.end method
