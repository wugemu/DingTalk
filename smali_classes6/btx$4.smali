.class public final Lbtx$4;
.super Ljava/lang/Object;
.source "GuideHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lbxi;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;Landroid/app/Activity;Lbxi;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lbtx$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    iput-object p2, p0, Lbtx$4;->b:Landroid/app/Activity;

    iput-object p3, p0, Lbtx$4;->c:Lbxi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lbtx$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->dismiss()V

    .line 113
    iget-object v0, p0, Lbtx$4;->b:Landroid/app/Activity;

    iget-object v1, p0, Lbtx$4;->c:Lbxi;

    invoke-static {v0, v1}, Lbty;->a(Landroid/app/Activity;Lbxi;)V

    .line 114
    return-void
.end method
