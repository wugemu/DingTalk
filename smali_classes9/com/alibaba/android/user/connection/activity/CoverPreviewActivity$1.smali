.class final Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity$1;
.super Ljava/lang/Object;
.source "CoverPreviewActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity$1;->b:Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 122
    .line 1126
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity$1;->b:Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    sget v0, Lezg$l;->dt_circle_change_cover_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1131
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity$1;->b:Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;->a(Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;Z)Z

    .line 1133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1134
    const-string/jumbo v1, "media_id"

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity$1;->b:Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 1136
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity$1;->b:Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;->finish()V

    .line 122
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity$1;->b:Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;

    invoke-static {v0, v4}, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;->a(Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;Z)Z

    .line 148
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v0, "Circle"

    const-string/jumbo v1, "CoverPreview"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "updateAlbumCover error, code="

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "; msg="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 142
    return-void
.end method
