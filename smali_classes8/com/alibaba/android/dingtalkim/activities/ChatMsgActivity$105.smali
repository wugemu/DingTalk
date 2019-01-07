.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$105;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 3488
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$105;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$105;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3490
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$105;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 3491
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$105;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const-string/jumbo v2, "https://h5.dingtalk.com/safety/encrypt.html?lwfrom=20160511153723743"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3492
    return-void
.end method
