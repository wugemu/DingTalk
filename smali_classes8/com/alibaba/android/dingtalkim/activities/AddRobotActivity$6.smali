.class final Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$6;
.super Ljava/lang/Object;
.source "AddRobotActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/support/v7/app/AlertDialog;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;Landroid/widget/EditText;Landroid/support/v7/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$6;->c:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$6;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$6;->b:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 339
    packed-switch p2, :pswitch_data_0

    .line 346
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$6;->c:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$6;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;Landroid/text/Editable;)V

    .line 348
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$6;->b:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 350
    :cond_0
    :goto_0
    return v2

    .line 342
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$6;->c:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$6;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;Landroid/text/Editable;)V

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$6;->b:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
