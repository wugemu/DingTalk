.class final Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity$1;
.super Ljava/lang/Object;
.source "EfficientModeDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity$1;->a:Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/EfficientModeDetailActivity;->finish()V

    .line 53
    :cond_0
    return-void
.end method
