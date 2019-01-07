.class final Lacp$15;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lacp;


# direct methods
.method constructor <init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 805
    iput-object p1, p0, Lacp$15;->d:Lacp;

    iput-object p2, p0, Lacp$15;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iput-object p3, p0, Lacp$15;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p4, p0, Lacp$15;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 808
    iget-object v0, p0, Lacp$15;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 809
    invoke-static {}, Lacp;->b()V

    .line 811
    iget-object v0, p0, Lacp$15;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v1, p0, Lacp$15;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 812
    return-void
.end method
