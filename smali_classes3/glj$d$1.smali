.class final Lglj$d$1;
.super Ljava/lang/Object;
.source "SpaceLinkManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglj$d;
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
        "Lgic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

.field final synthetic b:Lglj$d;


# direct methods
.method constructor <init>(Lglj$d;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)V
    .locals 0
    .param p1, "this$0"    # Lglj$d;

    .prologue
    .line 212
    iput-object p1, p0, Lglj$d$1;->b:Lglj$d;

    iput-object p2, p0, Lglj$d$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 212
    check-cast p1, Lgic;

    .line 2215
    iget-object v0, p0, Lglj$d$1;->b:Lglj$d;

    iget-object v0, v0, Lglj$d;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2218
    if-eqz p1, :cond_0

    iget-object v0, p1, Lgic;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2219
    :cond_0
    const-string/jumbo v0, "result is null"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lglj$d$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    :cond_1
    :goto_0
    return-void

    .line 2222
    :cond_2
    iget-object v0, p0, Lglj$d$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v1, p1, Lgic;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceName:Ljava/lang/String;

    .line 2223
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lglj$d$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    iget-object v2, p0, Lglj$d$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfzv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    iget-object v0, p0, Lglj$d$1;->b:Lglj$d;

    iget-object v1, p0, Lglj$d$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    invoke-static {v0, v1}, Lglj$d;->a(Lglj$d;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 233
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceLinkManager"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "fillSpaceName: infoSpace: spaceId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lglj$d$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", errorCode: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", errorMsg: "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lglj$d$1;->b:Lglj$d;

    iget-object v0, v0, Lglj$d;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lglj$d$1;->b:Lglj$d;

    invoke-virtual {v0}, Lglj$d;->c()V

    .line 241
    iget-object v0, p0, Lglj$d$1;->b:Lglj$d;

    .line 1145
    iget-object v0, v0, Lglj$d;->b:Lcma;

    .line 241
    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lglj$d$1;->b:Lglj$d;

    .line 2145
    iget-object v0, v0, Lglj$d;->b:Lcma;

    .line 242
    invoke-static {p1, p2, v0}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 244
    :cond_1
    sget v0, Lfzs$h;->dt_cspace_send_failt:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 229
    return-void
.end method
