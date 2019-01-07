.class final Lcom/alibaba/android/user/certify/RPTakePhotoActivity$a;
.super Landroid/os/Handler;
.source "RPTakePhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/certify/RPTakePhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$a;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    .prologue
    .line 723
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$a;-><init>(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 728
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 746
    :goto_0
    :pswitch_0
    return-void

    .line 730
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$a;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->c(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)V

    goto :goto_0

    .line 734
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$a;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->d(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)V

    goto :goto_0

    .line 738
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$a;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->finish()V

    goto :goto_0

    .line 741
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$a;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->e(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 728
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
