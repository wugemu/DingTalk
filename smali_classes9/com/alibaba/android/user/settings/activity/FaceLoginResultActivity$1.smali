.class final Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity$1;
.super Ljava/lang/Object;
.source "FaceLoginResultActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 90
    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->a(Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;)V

    .line 90
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->b(Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;)Lfri$b;

    move-result-object v0

    const-string/jumbo v1, "0"

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;

    sget v3, Lezg$l;->dt_face_box_verify_fail:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lfri$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 99
    return-void
.end method
