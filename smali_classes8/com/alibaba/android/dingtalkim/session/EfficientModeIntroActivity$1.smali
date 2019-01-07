.class final Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity$1;
.super Ljava/lang/Object;
.source "EfficientModeIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 26
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "EfficientModeIntroActivity"

    const-string/jumbo v2, "chat_focus_mode_enable"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity;->onBackPressed()V

    .line 28
    return-void
.end method
