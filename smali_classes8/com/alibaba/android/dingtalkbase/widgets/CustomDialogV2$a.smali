.class final Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;
    .param p2, "flag"    # I

    .prologue
    .line 340
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2$a;->b:I

    .line 342
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->a(Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->a(Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2$a;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 349
    :cond_0
    return-void
.end method
