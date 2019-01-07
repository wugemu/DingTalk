.class final Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$23;
.super Ljava/lang/Object;
.source "UserProfileMoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$23;->d:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$23;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$23;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$23;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$23;->d:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/contact/manage_staff.html"

    new-instance v2, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$23$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$23$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$23;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1404
    return-void
.end method
