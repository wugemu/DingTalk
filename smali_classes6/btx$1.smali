.class public final Lbtx$1;
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


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lbtx$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lbtx$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->dismiss()V

    .line 54
    return-void
.end method
