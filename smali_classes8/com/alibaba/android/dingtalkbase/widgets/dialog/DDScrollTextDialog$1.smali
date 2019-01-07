.class final Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog$1;
.super Ljava/lang/Object;
.source "DDScrollTextDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->dismiss()V

    .line 171
    return-void
.end method
