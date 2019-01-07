.class final Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2$1;
.super Ljava/lang/Object;
.source "TeleVideoConfRecordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    .line 336
    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)Lexa$a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)Lexa$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lexa$a;->a(Z)V

    goto :goto_0
.end method
