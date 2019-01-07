.class Lcom/ali/user/open/ucc/ui/UccActivity$1;
.super Ljava/lang/Object;
.source "UccActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/ui/UccActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/ucc/ui/UccActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/ui/UccActivity;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ali/user/open/ucc/ui/UccActivity$1;->a:Lcom/ali/user/open/ucc/ui/UccActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    const-string/jumbo v0, "UccActivity"

    const-string/jumbo v1, "click to destroy"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/ali/user/open/ucc/ui/UccActivity$1;->a:Lcom/ali/user/open/ucc/ui/UccActivity;

    invoke-virtual {v0}, Lcom/ali/user/open/ucc/ui/UccActivity;->finish()V

    .line 41
    return-void
.end method
