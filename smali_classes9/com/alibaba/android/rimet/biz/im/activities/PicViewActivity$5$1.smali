.class final Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5$1;
.super Ljava/lang/Object;
.source "PicViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5$1;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 514
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5$1;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5$1;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;->f:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;

    iget v3, v3, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;->c:I

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;

    iget-object v4, v4, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;

    iget-object v5, v5, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;->e:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V

    .line 517
    :cond_0
    return-void
.end method
