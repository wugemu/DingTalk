.class final Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$2;
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
    .line 164
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$2;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$2;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->finish()V

    .line 168
    return-void
.end method
