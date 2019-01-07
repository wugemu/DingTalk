.class final Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$12$1;
.super Ljava/lang/Object;
.source "TeleConfSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$12;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$12;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$12$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 346
    sget v0, Leuj$l;->dt_conference_added_toast:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 347
    return-void
.end method
