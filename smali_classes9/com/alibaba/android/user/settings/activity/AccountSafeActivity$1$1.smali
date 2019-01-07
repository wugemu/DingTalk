.class final Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1$1;
.super Ljava/lang/Object;
.source "AccountSafeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1$1;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1$1;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Lfri$b;

    move-result-object v0

    invoke-interface {v0}, Lfri$b;->f()V

    .line 146
    return-void
.end method
