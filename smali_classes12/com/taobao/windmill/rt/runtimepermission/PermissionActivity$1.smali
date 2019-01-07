.class final Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity$1;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity$1;->b:Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;

    iput-object p2, p0, Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity$1;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity$1;->b:Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;

    iget-object v1, p0, Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity$1;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 85
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 86
    return-void
.end method
