.class final Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$2;
.super Ljava/lang/Object;
.source "ChannelSessionActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->a(Z)V
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V

    .line 144
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 132
    check-cast p1, Ljava/util/List;

    .line 1135
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v0

    invoke-interface {v0}, Lddi;->e()Ljava/util/List;

    move-result-object v0

    .line 1136
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-static {v1, v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;Ljava/util/List;Ljava/util/List;)V

    .line 1137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V

    .line 132
    return-void
.end method
