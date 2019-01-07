.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26$1;
.super Ljava/lang/Object;
.source "TeleVideoPowerfulConfActivity.java"

# interfaces
.implements Lcpi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;

    .prologue
    .line 3190
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "granted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3193
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;->a:Lcpi$a;

    if-eqz v0, :cond_0

    .line 3194
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;->a:Lcpi$a;

    invoke-interface {v0, p1}, Lcpi$a;->a(Z)V

    .line 3196
    :cond_0
    if-nez p1, :cond_1

    .line 3197
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    .line 3199
    :cond_1
    return-void
.end method
