.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$12;
.super Ljava/lang/Object;
.source "AnnounceActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 284
    .line 1288
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->d(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    .line 284
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->dismissLoadingDialog()V

    .line 300
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 294
    return-void
.end method
