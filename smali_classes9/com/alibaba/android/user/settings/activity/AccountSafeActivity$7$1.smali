.class final Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$7$1;
.super Ljava/lang/Object;
.source "AccountSafeActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$7;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$7$1;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 390
    return-object p1
.end method
