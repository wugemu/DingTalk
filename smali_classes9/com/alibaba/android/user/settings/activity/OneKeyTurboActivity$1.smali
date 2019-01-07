.class final Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$1;
.super Ljava/lang/Object;
.source "OneKeyTurboActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    const-string/jumbo v0, "setting_general_clean_onkeyclick_click "

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->a(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;)V

    .line 161
    return-void
.end method
