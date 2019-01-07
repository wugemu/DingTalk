.class final Lacp$7;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic c:Lacp;


# direct methods
.method constructor <init>(Lacp;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 659
    iput-object p1, p0, Lacp$7;->c:Lacp;

    iput-object p2, p0, Lacp$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lacp$7;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 662
    const-string/jumbo v0, "buildAutoLoginBindEmailDialog:"

    iget-object v1, p0, Lacp$7;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-static {}, Lacp;->b()V

    .line 665
    iget-object v0, p0, Lacp$7;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lacp$7;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 668
    :cond_0
    return-void
.end method
