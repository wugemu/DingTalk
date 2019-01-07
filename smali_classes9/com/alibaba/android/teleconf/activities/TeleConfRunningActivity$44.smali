.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$44;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 2517
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$44;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

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
    .line 2520
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$44;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)Z

    .line 2521
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$44;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->finish()V

    .line 2522
    return-void
.end method
