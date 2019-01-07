.class final Lcom/alibaba/android/user/certify/RPTakePhotoActivity$5;
.super Ljava/lang/Object;
.source "RPTakePhotoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$5;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 547
    iget-object v0, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$5;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->finish()V

    .line 548
    return-void
.end method
