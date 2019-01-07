.class final Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$3;
.super Ljava/lang/Object;
.source "ChannelSessionActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lddm;",
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
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 157
    check-cast p1, Ljava/util/List;

    .line 1160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;Ljava/util/List;)V

    .line 1161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V

    .line 157
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V

    .line 172
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 167
    return-void
.end method
