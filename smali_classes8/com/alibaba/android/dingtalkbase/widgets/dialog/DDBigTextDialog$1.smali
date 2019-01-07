.class final Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog$1;
.super Ljava/lang/Object;
.source "DDBigTextDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->dismiss()V

    .line 179
    return-void
.end method
