.class final Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$1;
.super Ljava/lang/Object;
.source "TeleVideoControllerConfActivity.java"

# interfaces
.implements Lcpi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3
    .param p1, "granted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 436
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->k()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Mini window after click"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    if-nez p1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    sget v2, Leuj$l;->dt_conference_notification_enter_warn:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "toast":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    const-string/jumbo v2, "200"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .end local v0    # "toast":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->moveTaskToBack(Z)Z

    .line 442
    return-void
.end method
