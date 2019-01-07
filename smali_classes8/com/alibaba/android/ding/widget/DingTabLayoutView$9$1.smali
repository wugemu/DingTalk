.class final Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;
.super Ljava/lang/Object;
.source "DingTabLayoutView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lifx;

.field final synthetic b:Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;Lifx;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->b:Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;

    iput-object p2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->a:Lifx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 499
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;-><init>()V

    .line 500
    .local v0, "dingAudioEntity":Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->b:Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;

    iget-object v2, v2, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;->a:Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->audioVolumns:Ljava/util/List;

    iput-object v2, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->b:Ljava/util/List;

    .line 501
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->b:Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;

    iget-object v2, v2, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;->a:Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->duration:Ljava/lang/Long;

    iput-object v2, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->a:Ljava/lang/Long;

    .line 502
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->a:Lifx;

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->a:Lifx;

    .line 1026
    iget-object v2, v2, Lifx;->a:Ljava/lang/String;

    .line 503
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->a:Lifx;

    .line 1034
    iget-object v3, v3, Lifx;->b:Ljava/lang/String;

    .line 503
    invoke-static {v2, v3, v4, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v1

    .line 504
    .local v1, "objectDingSent":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->b:Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;

    iget-object v2, v2, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;->c:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->b:Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;

    iget-object v3, v3, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;->c:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->c(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getAudioUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->b:Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;

    iget-object v2, v2, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;->c:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->a:Lifx;

    .line 2026
    iget-object v3, v3, Lifx;->a:Ljava/lang/String;

    .line 505
    invoke-static {v2, v3}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Ljava/lang/String;)Ljava/lang/String;

    .line 506
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->b:Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;

    iget-object v2, v2, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;->c:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->a:Lifx;

    .line 2034
    iget-object v3, v3, Lifx;->b:Ljava/lang/String;

    .line 506
    invoke-static {v2, v3}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->c(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Ljava/lang/String;)Ljava/lang/String;

    .line 507
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->b:Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;

    iget-object v2, v2, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;->c:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-static {v2, v4}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->d(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Ljava/lang/String;)Ljava/lang/String;

    .line 508
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->b:Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;

    iget-object v2, v2, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v2, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 512
    .end local v1    # "objectDingSent":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;->b:Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;

    iget-object v2, v2, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v3, "404"

    const-string/jumbo v4, "upload response is null"

    invoke-interface {v2, v3, v4}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
