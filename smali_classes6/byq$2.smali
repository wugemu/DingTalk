.class final Lbyq$2;
.super Ljava/lang/Object;
.source "StartLiveUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbyq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lbyq$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbyq$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lbyq$2;->c:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 384
    iget-object v2, p0, Lbyq$2;->a:Landroid/app/Activity;

    iget-object v3, p0, Lbyq$2;->b:Ljava/lang/String;

    iget-object v4, p0, Lbyq$2;->c:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 1400
    const/4 v1, 0x0

    .line 1401
    const-class v0, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickService;

    .line 1402
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-interface {v0, v3, v6, v7, v5}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNickSync(Ljava/lang/String;JZ)Lcom/alibaba/wukong/im/GroupNickObject;

    move-result-object v0

    .line 1403
    if-eqz v0, :cond_1

    .line 1404
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v0

    .line 1406
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1407
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->d()Ljava/lang/String;

    move-result-object v0

    .line 1410
    :cond_0
    invoke-static {v2}, Lbyf;->a(Landroid/app/Activity;)V

    .line 1411
    new-instance v1, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;-><init>()V

    .line 1412
    iput-object v3, v1, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->cid:Ljava/lang/String;

    .line 1413
    iget-object v3, v4, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->uuid:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->liveUuid:Ljava/lang/String;

    .line 1414
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->nickname:Ljava/lang/String;

    .line 1415
    new-instance v0, Lbyq$3;

    invoke-direct {v0, v2}, Lbyq$3;-><init>(Landroid/app/Activity;)V

    .line 1433
    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v3, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1434
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lbxe;->a(Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;Lcom/alibaba/wukong/Callback;)V

    .line 385
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
