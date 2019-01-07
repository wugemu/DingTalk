.class Lcom/ali/user/open/tbauth/ui/TbAuthActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/tbauth/ui/TbAuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/tbauth/ui/TbAuthActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/open/tbauth/ui/TbAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/tbauth/ui/TbAuthActivity$1;->a:Lcom/ali/user/open/tbauth/ui/TbAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    const-string/jumbo v0, "login.TbAuthActivity"

    const-string/jumbo v1, "click to destroy"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/open/tbauth/ui/TbAuthActivity$1;->a:Lcom/ali/user/open/tbauth/ui/TbAuthActivity;

    invoke-virtual {v0}, Lcom/ali/user/open/tbauth/ui/TbAuthActivity;->finish()V

    return-void
.end method
