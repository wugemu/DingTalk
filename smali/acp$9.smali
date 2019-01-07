.class final Lacp$9;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacp;->b(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Lacp;


# direct methods
.method constructor <init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 710
    iput-object p1, p0, Lacp$9;->b:Lacp;

    iput-object p2, p0, Lacp$9;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 713
    iget-object v0, p0, Lacp$9;->b:Lacp;

    invoke-static {v0}, Lacp;->a(Lacp;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lacp$9;->b:Lacp;

    invoke-static {v0}, Lacp;->a(Lacp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 716
    :cond_0
    invoke-static {}, Lacp;->b()V

    .line 717
    iget-object v0, p0, Lacp$9;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lacp$9;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 720
    :cond_1
    return-void
.end method
