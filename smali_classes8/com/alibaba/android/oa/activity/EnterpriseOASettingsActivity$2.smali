.class final Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$2;
.super Ljava/lang/Object;
.source "EnterpriseOASettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$2;->a:Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$2;->a:Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->a(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$2;->a:Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->c(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/Conversation;->stayOnTop(ZLcom/alibaba/wukong/Callback;)V

    .line 79
    return-void
.end method
