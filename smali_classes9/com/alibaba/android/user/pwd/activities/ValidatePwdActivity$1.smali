.class final Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity$1;
.super Ljava/lang/Object;
.source "ValidatePwdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->j()V

    .line 41
    return-void
.end method
