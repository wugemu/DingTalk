.class public final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a$2;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    .prologue
    .line 3307
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 3310
    invoke-static {}, Lewg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3311
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3312
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lewk;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lewk;->b(ZZ)V

    .line 3317
    :goto_0
    return-void

    .line 3314
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3315
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lewk;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lewk;->a(ZZ)V

    goto :goto_0
.end method
