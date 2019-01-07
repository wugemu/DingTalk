.class final Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$7;
.super Ljava/lang/Object;
.source "TeleConfHomeActivity.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lcry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 379
    check-cast p1, Lcry;

    .line 1382
    if-eqz p1, :cond_0

    .line 2051
    iget-boolean v0, p1, Lcry;->b:Z

    .line 1384
    if-eqz v0, :cond_1

    .line 1385
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(III)V

    :cond_0
    :goto_0
    return-void

    .line 1387
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(III)V

    goto :goto_0
.end method
