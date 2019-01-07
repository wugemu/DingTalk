.class final Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$16;
.super Lcmi;
.source "ChannelDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ldsm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$16;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

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
    .line 473
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 457
    check-cast p1, Ldsm;

    .line 1460
    if-eqz p1, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$16;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;Ldsm;)Ldsm;

    .line 1463
    iget-object v0, p1, Ldsm;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$16;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    iget-object v1, p1, Ldsm;->e:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;Ljava/util/List;)Ljava/util/List;

    .line 1465
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$16;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    .line 457
    :cond_0
    return-void
.end method
