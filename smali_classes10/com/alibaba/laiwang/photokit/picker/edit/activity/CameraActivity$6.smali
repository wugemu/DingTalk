.class final Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$6;
.super Landroid/view/OrientationEventListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$6;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 8
    .param p1, "orientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 320
    if-ne p1, v7, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$6;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$6;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->j(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v1

    .line 1012
    if-ne v1, v7, :cond_4

    .line 1019
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 1020
    add-int/lit8 v1, p1, 0x2d

    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v1, v1, 0x168

    .line 323
    :cond_3
    invoke-static {v4, v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->b(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;I)I

    .line 324
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$6;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->j(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v3

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$6;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .line 1025
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1026
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 1027
    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 325
    :goto_2
    add-int/2addr v1, v3

    rem-int/lit16 v0, v1, 0x168

    .line 327
    .local v0, "orientationCompensation":I
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$6;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->u(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$6;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v1, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->c(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;I)I

    .line 329
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$6;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->u(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v1

    if-ne v1, v7, :cond_5

    :goto_3
    invoke-static {v2}, Lhbw;->a(I)V

    .line 331
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$6;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {}, Lhbw;->a()I

    move-result v2

    .line 1592
    iget-object v3, v1, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a:Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;

    invoke-virtual {v3, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->setChangDegree(I)V

    .line 1593
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->b:Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->setChangDegree(I)V

    goto :goto_0

    .line 1015
    .end local v0    # "orientationCompensation":I
    :cond_4
    sub-int v5, p1, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 1016
    rsub-int v6, v5, 0x168

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1017
    const/16 v6, 0x32

    if-ge v5, v6, :cond_2

    move v3, v2

    goto :goto_1

    :pswitch_0
    move v1, v2

    .line 1028
    goto :goto_2

    .line 1029
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_2

    .line 1030
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_2

    .line 1031
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_2

    .line 329
    .restart local v0    # "orientationCompensation":I
    :cond_5
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$6;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .line 330
    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->u(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v2

    goto :goto_3

    .line 1027
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
