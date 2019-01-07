.class final Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field final synthetic f:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;->f:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput p4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;->c:I

    iput-object p5, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;->e:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 505
    check-cast p1, Ljava/lang/Boolean;

    .line 1508
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;->f:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;->f:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    new-instance v1, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5$1;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 505
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 528
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 524
    return-void
.end method
