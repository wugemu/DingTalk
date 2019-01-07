.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$22;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lgqt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->upload2Space()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 2611
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$22;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$22;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 2633
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2634
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 2638
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$22;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$7200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V

    .line 2639
    return-void

    .line 2636
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProgress(JJ)V
    .locals 7
    .param p1, "fileSize"    # J
    .param p3, "uploadSize"    # J

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$22;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$6900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2618
    :goto_0
    return-void

    .line 2617
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$22;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$22;->val$filePath:Ljava/lang/String;

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$7000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;JJ)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 2
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2622
    if-eqz p1, :cond_1

    .line 2623
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$22;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$7100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2624
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$22;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$7102(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;)Ljava/util/List;

    .line 2626
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$22;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$7100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2628
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$22;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$7200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V

    .line 2629
    return-void
.end method
