.class final Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$4;
.super Ljava/lang/Object;
.source "FaceBoxImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/FaceBoxImpl;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/FaceBoxImpl;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/FaceBoxImpl;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$4;->b:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$4;->a:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 278
    const-string/jumbo v0, "detectObject"

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$4;->a:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    return-object p1
.end method
