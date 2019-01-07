.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$48$1;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$48;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$48;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$48;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$48;

    .prologue
    .line 2992
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$48$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$48;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2995
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$48$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$48;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$48;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ac(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 2996
    return-void
.end method
