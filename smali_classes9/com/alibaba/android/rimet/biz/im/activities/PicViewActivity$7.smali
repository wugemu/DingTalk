.class final Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$7;
.super Ljava/lang/Object;
.source "PicViewActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 879
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$7;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 879
    check-cast p1, Ljava/lang/String;

    .line 1882
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$7;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->dismissLoadingDialog()V

    .line 1883
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$7;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$7;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    const v3, 0x7f090cdd

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 893
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$7;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->dismissLoadingDialog()V

    .line 894
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 889
    return-void
.end method
