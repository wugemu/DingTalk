.class final Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;
.super Ljava/lang/Object;
.source "PicViewActivity.java"

# interfaces
.implements Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field final synthetic b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->f:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iput-object p4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput p5, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->d:I

    iput-object p6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)V
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const v5, 0x7f09036e

    const/4 v0, 0x0

    .line 1193
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->f:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 1194
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v6, 0x1

    .line 1195
    .local v6, "needReShowMenuDialog":Z
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    new-instance v2, Lcng;

    const/4 v3, 0x0

    aget-object v4, p1, v0

    invoke-direct {v2, v5, v5, v3, v4}, Lcng;-><init>(IILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 1196
    if-eqz v6, :cond_2

    .line 1197
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->f:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->d:I

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Ljava/lang/String;)V

    .line 1202
    .end local v6    # "needReShowMenuDialog":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v6, v0

    .line 1194
    goto :goto_0

    .line 1199
    .restart local v6    # "needReShowMenuDialog":Z
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
