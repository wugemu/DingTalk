.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$16;
.super Ljava/lang/Object;
.source "TeleVideoPowerfulConfActivity.java"

# interfaces
.implements Lcpi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->v()V
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
    .line 3016
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4
    .param p1, "granted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 3019
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Mini window after click"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3020
    if-nez p1, :cond_0

    .line 3021
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    sget v2, Leuj$l;->dt_conference_notification_enter_warn:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3022
    .local v0, "toast":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    const-string/jumbo v2, "200"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 3024
    .end local v0    # "toast":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->moveTaskToBack(Z)Z

    .line 3025
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v1, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    .line 3026
    return-void
.end method
