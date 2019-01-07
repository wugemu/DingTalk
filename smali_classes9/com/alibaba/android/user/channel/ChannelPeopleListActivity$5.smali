.class final Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$5;
.super Lcmi;
.source "ChannelPeopleListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcfc;

.field final synthetic b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;Lcfc;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$5;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$5;->a:Lcfc;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 211
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 198
    .line 1201
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$5;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->g(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$5;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->g(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$5;->a:Lcfc;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1203
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$5;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->h(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)Lfbs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$5;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->h(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)Lfbs;

    move-result-object v0

    invoke-virtual {v0}, Lfbs;->notifyDataSetChanged()V

    .line 198
    :cond_0
    return-void
.end method
