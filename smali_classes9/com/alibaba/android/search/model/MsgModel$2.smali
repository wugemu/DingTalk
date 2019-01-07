.class final Lcom/alibaba/android/search/model/MsgModel$2;
.super Ljava/lang/Object;
.source "MsgModel.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/model/MsgModel;->onClick(Landroid/app/Activity;Landroid/view/View;)V
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/search/model/MsgModel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/model/MsgModel;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/model/MsgModel;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/alibaba/android/search/model/MsgModel$2;->b:Lcom/alibaba/android/search/model/MsgModel;

    iput-object p2, p0, Lcom/alibaba/android/search/model/MsgModel$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 422
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1425
    if-eqz p1, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel$2;->b:Lcom/alibaba/android/search/model/MsgModel;

    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel$2;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/model/MsgModel;->access$000(Lcom/alibaba/android/search/model/MsgModel;Landroid/app/Activity;)V

    :goto_0
    return-void

    .line 1428
    :cond_0
    sget v0, Lemt$g;->dt_im_message_openmsgding_noding_error:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 439
    sget v0, Lemt$g;->dt_im_message_openmsgding_noding_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 440
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 435
    return-void
.end method
