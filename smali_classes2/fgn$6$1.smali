.class final Lfgn$6$1;
.super Ljava/lang/Object;
.source "JoinGroupRequestAdapter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgn$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfgn$6;


# direct methods
.method constructor <init>(Lfgn$6;)V
    .locals 0
    .param p1, "this$1"    # Lfgn$6;

    .prologue
    .line 258
    iput-object p1, p0, Lfgn$6$1;->a:Lfgn$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lfgn$6$1;->a:Lfgn$6;

    iget-object v0, v0, Lfgn$6;->d:Lfgn;

    invoke-static {v0}, Lfgn;->b(Lfgn;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 271
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 258
    .line 1261
    iget-object v0, p0, Lfgn$6$1;->a:Lfgn$6;

    iget-object v0, v0, Lfgn$6;->d:Lfgn;

    invoke-static {v0}, Lfgn;->b(Lfgn;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1263
    iget-object v0, p0, Lfgn$6$1;->a:Lfgn$6;

    iget-object v0, v0, Lfgn$6;->b:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->status:Ljava/lang/Integer;

    .line 1264
    iget-object v0, p0, Lfgn$6$1;->a:Lfgn$6;

    iget-object v0, v0, Lfgn$6;->d:Lfgn;

    invoke-virtual {v0}, Lfgn;->notifyDataSetChanged()V

    .line 258
    return-void
.end method
