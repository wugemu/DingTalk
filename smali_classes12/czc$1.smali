.class final Lczc$1;
.super Ljava/lang/Object;
.source "UserLuckyTimeRedPacketRemainViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lczc;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;

.field final synthetic b:Lczc;


# direct methods
.method constructor <init>(Lczc;Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;)V
    .locals 0
    .param p1, "this$0"    # Lczc;

    .prologue
    .line 41
    iput-object p1, p0, Lczc$1;->b:Lczc;

    iput-object p2, p0, Lczc$1;->a:Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    iget-object v0, p0, Lczc$1;->a:Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lczc$1;->b:Lczc;

    iget-object v1, v1, Lczc;->d:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    iget-object v1, p0, Lczc$1;->a:Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;->url:Ljava/lang/String;

    iget-object v2, p0, Lczc$1;->b:Lczc;

    iget-object v2, v2, Lczc;->d:Landroid/app/Activity;

    .line 48
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lczc$1$1;

    invoke-direct {v3, p0}, Lczc$1$1;-><init>(Lczc$1;)V

    .line 47
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method
