.class Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment$1;
.super Ljava/lang/Object;
.source "H5BugMeSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;

.field final synthetic val$h5Dialog:Lcom/alipay/mobile/nebulacore/view/H5Dialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment$1;->val$h5Dialog:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment$1;->val$h5Dialog:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->dismiss()V

    .line 83
    return-void
.end method
