.class final Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$13;
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
        "Ljava/lang/Void;",
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
    .line 312
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$13;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

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
    .line 321
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 312
    .line 1315
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$13;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    .line 1316
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$13;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->finish()V

    .line 312
    return-void
.end method
