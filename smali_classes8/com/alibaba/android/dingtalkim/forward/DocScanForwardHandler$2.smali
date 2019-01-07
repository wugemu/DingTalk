.class final Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$2;
.super Ljava/lang/Object;
.source "DocScanForwardHandler.java"

# interfaces
.implements Ldiz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->sendImageMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->access$106(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 265
    sget v0, Lctk$i;->share_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;Landroid/app/Activity;)V

    .line 268
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "progress"    # I

    .prologue
    .line 282
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 272
    invoke-static {p2, p3}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "DocScanForwardHandler"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "send Image failed : "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->access$106(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;Landroid/app/Activity;)V

    .line 277
    :cond_0
    return-void
.end method
