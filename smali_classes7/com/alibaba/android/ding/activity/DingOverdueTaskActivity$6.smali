.class final Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$6;
.super Ljava/lang/Object;
.source "DingOverdueTaskActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$6;->b:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    iput-object p2, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$6;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 316
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$6;->b:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    sget v1, Laxp$i;->loading:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->showLoadingDialog(I)V

    .line 317
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$6;->a:Lcma;

    invoke-virtual {v0, v1, v2, v3, v4}, Lbbp;->a(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V

    .line 318
    return-void
.end method
