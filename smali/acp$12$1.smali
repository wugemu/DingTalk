.class final Lacp$12$1;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacp$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Lacp$12;


# direct methods
.method constructor <init>(Lacp$12;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V
    .locals 0
    .param p1, "this$1"    # Lacp$12;

    .prologue
    .line 230
    iput-object p1, p0, Lacp$12$1;->b:Lacp$12;

    iput-object p2, p0, Lacp$12$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 233
    iget-object v0, p0, Lacp$12$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lacp$12$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 236
    :cond_0
    return-void
.end method
