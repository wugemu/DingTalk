.class Lcom/taobao/weex/ui/module/WXModalUIModule$6;
.super Ljava/lang/Object;
.source "WXModalUIModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/module/WXModalUIModule;->tracking(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/module/WXModalUIModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/module/WXModalUIModule;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$6;->this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 255
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule$6;->this$0:Lcom/taobao/weex/ui/module/WXModalUIModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/module/WXModalUIModule;->access$002(Lcom/taobao/weex/ui/module/WXModalUIModule;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 256
    return-void
.end method
