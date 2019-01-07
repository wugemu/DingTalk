.class final Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$5;
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
    .line 141
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$5;->a:Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 144
    const-string/jumbo v0, "diagnostics_setting_force_fix_cid_msg_index_confirm"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$5;->a:Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->c(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;)V

    .line 147
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 148
    return-void
.end method
