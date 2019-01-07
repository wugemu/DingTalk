.class final Lder$5;
.super Ljava/lang/Object;
.source "BeginnerGuideManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lder;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lder;


# direct methods
.method constructor <init>(Lder;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lder;

    .prologue
    .line 284
    iput-object p1, p0, Lder$5;->c:Lder;

    iput-object p2, p0, Lder$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iput-object p3, p0, Lder$5;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 287
    iget-object v0, p0, Lder$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 288
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lder$5;->b:Landroid/app/Activity;

    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/orggroupintro"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method
