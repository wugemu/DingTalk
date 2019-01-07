.class final Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2$1;
.super Ljava/lang/Object;
.source "TeleConfBigShowDialogActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 148
    return-object p1
.end method
