.class final Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3$2;
.super Ljava/lang/Object;
.source "FaceRecordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3$2;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3$2;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;->b:Lcma;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method
