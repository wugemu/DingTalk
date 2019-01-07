.class final Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity$2;
.super Ljava/lang/Object;
.source "DingtalkBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialogDelay(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity$2;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput p2, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 364
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity$2;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity$2;->a:I

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->access$000(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;I)V

    .line 365
    return-void
.end method
