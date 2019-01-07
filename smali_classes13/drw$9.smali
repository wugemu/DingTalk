.class final Ldrw$9;
.super Ljava/lang/Object;
.source "PublicAccountMenuManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldrw;


# direct methods
.method constructor <init>(Ldrw;)V
    .locals 0
    .param p1, "this$0"    # Ldrw;

    .prologue
    .line 432
    iput-object p1, p0, Ldrw$9;->a:Ldrw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 435
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Ldrw$9;->a:Ldrw;

    .line 1049
    iget-object v1, v1, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 435
    const-string/jumbo v2, "https://h5.dingtalk.com/base/download.html"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void
.end method
