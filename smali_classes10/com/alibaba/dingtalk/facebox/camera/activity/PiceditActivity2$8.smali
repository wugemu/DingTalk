.class final Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$8;
.super Ljava/lang/Object;
.source "PiceditActivity2.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;
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
        "Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$8;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$8;->a:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    check-cast p1, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;

    .line 1246
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$8;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;-><init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;)V

    .line 1247
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$8;->a:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;

    .line 2141
    iput-object v1, v0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->a:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;

    .line 1248
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->show()V

    .line 243
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    const-string/jumbo v1, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[Camera] getCurrentUserFace err, code="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " msg="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$8;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;-><init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;)V

    .line 259
    .local v0, "dialog":Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$8;->a:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;

    .line 1141
    iput-object v1, v0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->a:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;

    .line 260
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->show()V

    .line 261
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 253
    return-void
.end method
