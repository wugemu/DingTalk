.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3$2;
.super Ljava/lang/Object;
.source "NameCardEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)Lftc;

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    invoke-static {v0}, Lftc;->b(Landroid/app/Activity;)V

    .line 200
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 201
    return-void
.end method
