.class final Lcom/alibaba/android/user/settings/utils/SettingsUtils$2;
.super Ljava/lang/Object;
.source "SettingsUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/utils/SettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 229
    return-void
.end method
