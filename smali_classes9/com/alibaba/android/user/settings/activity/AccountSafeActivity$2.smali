.class final Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$2;
.super Ljava/lang/Object;
.source "AccountSafeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$2;->b:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$2;->a:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$2;->b:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Lfri$b;

    move-result-object v0

    invoke-interface {v0}, Lfri$b;->f()V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$2;->b:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Lfri$b;

    move-result-object v0

    invoke-interface {v0}, Lfri$b;->e()V

    goto :goto_0
.end method
