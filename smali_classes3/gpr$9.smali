.class public final Lgpr$9;
.super Ljava/lang/Object;
.source "CSpaceUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lgpr$9;->a:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lgpr$9;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 547
    iget-object v0, p0, Lgpr$9;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 548
    iget-object v0, p0, Lgpr$9;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->dismiss()V

    .line 549
    return-void
.end method
