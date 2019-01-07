.class final Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2$1;
.super Ljava/lang/Object;
.source "CustomDialogV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->dismiss()V

    .line 203
    return-void
.end method
