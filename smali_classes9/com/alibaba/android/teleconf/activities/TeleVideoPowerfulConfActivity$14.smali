.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;
.super Ljava/util/TimerTask;
.source "TeleVideoPowerfulConfActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 2735
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2738
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2750
    return-void
.end method
