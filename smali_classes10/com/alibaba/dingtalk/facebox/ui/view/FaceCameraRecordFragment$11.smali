.class final Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$11;
.super Ljava/lang/Object;
.source "FaceCameraRecordFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$11;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 497
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 498
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$11;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->d(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V

    .line 499
    return-void
.end method