.class final Lcty$4;
.super Ljava/lang/Object;
.source "AlipayRedPacketsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

.field final synthetic b:Lcty;


# direct methods
.method constructor <init>(Lcty;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcty;

    .prologue
    .line 117
    iput-object p1, p0, Lcty$4;->b:Lcty;

    iput-object p2, p0, Lcty$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcty$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->dismiss()V

    .line 121
    return-void
.end method
