.class final Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$8;
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
    .line 351
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$8;->b:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    iput-object p2, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$8;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 354
    const-string/jumbo v0, "pref_key_has_shown_delete_ding_confirm_dialog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 355
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$8;->b:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$8;->a:Lcma;

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;Lcma;)V

    .line 356
    return-void
.end method