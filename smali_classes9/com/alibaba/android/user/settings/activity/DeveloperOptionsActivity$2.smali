.class final Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$2;
.super Ljava/lang/Object;
.source "DeveloperOptionsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$2;->a:Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 78
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$2;->a:Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->b(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$2;->a:Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->b(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    return-void
.end method
