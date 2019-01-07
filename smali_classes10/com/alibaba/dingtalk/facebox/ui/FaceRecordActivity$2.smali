.class final Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;
.super Ljava/lang/Object;
.source "FaceRecordActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->a(Ljava/lang/String;Ljava/lang/String;IILgsu$b;)V
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
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lgsu$b;

.field final synthetic e:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;Ljava/lang/String;IILgsu$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->e:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->b:I

    iput p4, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->c:I

    iput-object p5, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->d:Lgsu$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 278
    check-cast p1, Lifx;

    .line 1286
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->e:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1290
    if-nez p1, :cond_1

    .line 1291
    const-string/jumbo v0, ""

    const-string/jumbo v1, "upload fail"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1296
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2034
    iget-object v0, p1, Lifx;->b:Ljava/lang/String;

    .line 1297
    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->f:Ljava/lang/String;

    .line 1298
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->e:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->a:Ljava/lang/String;

    const-class v0, Lcma;

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->e:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {p0, v0, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->a(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;Ljava/lang/String;Lcma;Z)V

    goto :goto_0

    .line 3034
    :cond_2
    iget-object v0, p1, Lifx;->b:Ljava/lang/String;

    .line 1303
    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->g:Ljava/lang/String;

    .line 4026
    iget-object v0, p1, Lifx;->a:Ljava/lang/String;

    .line 1304
    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->h:Ljava/lang/String;

    .line 1306
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->e:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->a(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1307
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->e:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->g:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->b:I

    iget v5, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->c:I

    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->d:Lgsu$b;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->a(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILgsu$b;)V

    goto :goto_0

    .line 1309
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->e:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->g:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->b:I

    iget v5, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->c:I

    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->d:Lgsu$b;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILgsu$b;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->e:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->e:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->e:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->e:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->d:Lgsu$b;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;->d:Lgsu$b;

    invoke-interface {v0, p1, p2}, Lgsu$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 315
    return-void
.end method
