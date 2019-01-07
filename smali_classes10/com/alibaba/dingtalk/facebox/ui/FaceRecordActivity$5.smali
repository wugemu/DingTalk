.class final Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;
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
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lgsu$b;

.field final synthetic g:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgsu$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->g:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    iput p2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->a:I

    iput p3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->b:I

    iput-object p4, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->f:Lgsu$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 509
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->f:Lgsu$b;

    if-eqz v0, :cond_0

    .line 510
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->f:Lgsu$b;

    .line 1493
    new-instance v3, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;

    invoke-direct {v3}, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;-><init>()V

    .line 1494
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->width:Ljava/lang/Integer;

    .line 1495
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->height:Ljava/lang/Integer;

    .line 1496
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->g:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->d(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->corpId:Ljava/lang/String;

    .line 1497
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->g:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->e(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, v3, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->deviceUid:Ljava/lang/String;

    .line 1498
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->g:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->f(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->userId:Ljava/lang/String;

    .line 1499
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->g:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->g(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-object v1, v3, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->groupId:Ljava/lang/String;

    .line 1500
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->c:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->authMediaId:Ljava/lang/String;

    .line 1501
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->d:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->mediaId:Ljava/lang/String;

    .line 1502
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->e:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->bigAuthMediaId:Ljava/lang/String;

    .line 1503
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->g:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->h(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->source:Ljava/lang/String;

    .line 510
    invoke-interface {v2, v3}, Lgsu$b;->a(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;)V

    .line 512
    :cond_0
    return-void

    .line 1497
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->g:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->e(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1499
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->g:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->g(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->f:Lgsu$b;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->f:Lgsu$b;

    invoke-interface {v0, p1, p2}, Lgsu$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
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
    .line 516
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->f:Lgsu$b;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;->f:Lgsu$b;

    const-string/jumbo v1, "dido_face_already_exist"

    iget-object v2, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->reason:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lgsu$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_0
    return-void
.end method
