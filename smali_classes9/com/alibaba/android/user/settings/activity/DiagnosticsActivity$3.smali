.class final Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$3;
.super Ljava/lang/Object;
.source "DiagnosticsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$3;->a:Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 114
    const-string/jumbo v1, "diagnostics_setting_force_fix_msg_index_confirm"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->z()Z

    move-result v0

    .line 119
    .local v0, "succ":Z
    if-eqz v0, :cond_0

    .line 120
    sget v1, Lezg$l;->setting_diagnostics_fix_msg_index_succ:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 124
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 125
    return-void

    .line 122
    :cond_0
    sget v1, Lezg$l;->setting_diagnostics_fix_msg_index_fail:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0
.end method
