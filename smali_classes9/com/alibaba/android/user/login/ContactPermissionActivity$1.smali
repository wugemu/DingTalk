.class final Lcom/alibaba/android/user/login/ContactPermissionActivity$1;
.super Ljava/lang/Object;
.source "ContactPermissionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/ContactPermissionActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 30
    iput-object p1, p0, Lcom/alibaba/android/user/login/ContactPermissionActivity$1;->a:Lcom/alibaba/android/user/login/ContactPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/user/login/ContactPermissionActivity$1;->a:Lcom/alibaba/android/user/login/ContactPermissionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/ContactPermissionActivity;->a(Lcom/alibaba/android/user/login/ContactPermissionActivity;)V

    .line 34
    return-void
.end method