.class final Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$4;
.super Ljava/lang/Object;
.source "FaceRecordActivity.java"

# interfaces
.implements Lgsu$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;

.field final synthetic b:Lgsu$b;

.field final synthetic c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lgsu$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$4;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$4;->a:Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;

    iput-object p3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$4;->b:Lgsu$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;)V
    .locals 5
    .param p1, "model"    # Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 442
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "FaceRecord"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "validUserFace success, resultCode="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->resultCode:Ljava/lang/Integer;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "; reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->reason:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$4;->a:Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;

    iget-object v1, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->passToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->passToken:Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$4;->b:Lgsu$b;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$4;->b:Lgsu$b;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$4;->a:Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;

    invoke-interface {v0, v1}, Lgsu$b;->a(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;)V

    .line 450
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 461
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "FaceRecord"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "validUserFace fail, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "; msg="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$4;->b:Lgsu$b;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$4;->b:Lgsu$b;

    invoke-interface {v0, p1, p2}, Lgsu$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 454
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$4;->b:Lgsu$b;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$4;->b:Lgsu$b;

    const-string/jumbo v1, "dido_face_already_exist"

    iget-object v2, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->reason:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lgsu$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_0
    return-void
.end method
