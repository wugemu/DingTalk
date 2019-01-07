.class final Lcom/alibaba/android/user/login/ContactPermissionActivity$3;
.super Lbzd;
.source "ContactPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/ContactPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ContactPermissionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ContactPermissionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/ContactPermissionActivity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/user/login/ContactPermissionActivity$3;->a:Lcom/alibaba/android/user/login/ContactPermissionActivity;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/user/login/ContactPermissionActivity$3;->a:Lcom/alibaba/android/user/login/ContactPermissionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/ContactPermissionActivity;->b(Lcom/alibaba/android/user/login/ContactPermissionActivity;)V

    .line 51
    return-void
.end method

.method public final onDenied()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/login/ContactPermissionActivity$3;->a:Lcom/alibaba/android/user/login/ContactPermissionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/ContactPermissionActivity;->b(Lcom/alibaba/android/user/login/ContactPermissionActivity;)V

    .line 56
    return-void
.end method

.method public final onNeverAsk()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/user/login/ContactPermissionActivity$3;->a:Lcom/alibaba/android/user/login/ContactPermissionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/ContactPermissionActivity;->b(Lcom/alibaba/android/user/login/ContactPermissionActivity;)V

    .line 62
    return-void
.end method
