.class final Lcom/taobao/ma/ui/ScanCombineActivity$1$1;
.super Ljava/lang/Object;
.source "ScanCombineActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/ma/ui/ScanCombineActivity$1;->onCheckedChanged(Landroid/widget/RadioGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/ma/ui/ScanCombineActivity$1;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/ScanCombineActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/ma/ui/ScanCombineActivity$1;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$1$1;->a:Lcom/taobao/ma/ui/ScanCombineActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    sget-object v0, Lhcp;->g:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->SCAN:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 164
    return-object p1
.end method
