.class final Lfkx$2;
.super Ljava/lang/Object;
.source "OrgMemberQrcodeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfkx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfkx;


# direct methods
.method constructor <init>(Lfkx;)V
    .locals 0
    .param p1, "this$0"    # Lfkx;

    .prologue
    .line 105
    iput-object p1, p0, Lfkx$2;->a:Lfkx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 108
    iget-object v0, p0, Lfkx$2;->a:Lfkx;

    .line 1030
    iget-object v0, v0, Lfkx;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 108
    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v1, v2}, Lcms;->a(Landroid/app/Activity;ZF)V

    .line 109
    iget-object v0, p0, Lfkx$2;->a:Lfkx;

    .line 2030
    iget-object v0, v0, Lfkx;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    .line 109
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 110
    return-void
.end method
