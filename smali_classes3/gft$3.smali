.class final Lgft$3;
.super Ljava/lang/Object;
.source "FilePreviewPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgft;
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgft;


# direct methods
.method constructor <init>(Lgft;)V
    .locals 0
    .param p1, "this$0"    # Lgft;

    .prologue
    .line 187
    iput-object p1, p0, Lgft$3;->a:Lgft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 187
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1190
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifierEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gtz v0, :cond_1

    .line 1191
    :cond_0
    const/16 v0, 0x8

    invoke-static {v0, v4, v4}, Lggr;->a(ILjava/lang/String;Ljava/lang/String;)Lggs;

    move-result-object v0

    .line 1192
    iget-object v1, p0, Lgft$3;->a:Lgft;

    .line 2046
    iget-object v1, v1, Lgft;->d:Lgfs$b;

    .line 1192
    const/16 v2, 0x6d

    iget-object v0, v0, Lggs;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lgfs$b;->a(ILjava/lang/String;)V

    .line 1200
    :goto_0
    return-void

    .line 1196
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifierEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfzo;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 1198
    cmp-long v0, v2, v6

    if-gtz v0, :cond_2

    .line 1199
    iget-object v0, p0, Lgft$3;->a:Lgft;

    .line 3046
    iget-object v0, v0, Lgft;->d:Lgfs$b;

    .line 1199
    const/16 v1, 0x6e

    iget-object v2, p0, Lgft$3;->a:Lgft;

    invoke-static {v2, p1, v4}, Lgft;->a(Lgft;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgfs$b;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 1203
    :cond_2
    new-instance v1, Lgft$3$1;

    invoke-direct {v1, p0, p1}, Lgft$3$1;-><init>(Lgft$3;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1230
    iget-object v0, p0, Lgft$3;->a:Lgft;

    .line 4046
    iget-object v0, v0, Lgft;->a:Landroid/content/Context;

    .line 1230
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 1231
    const-class v4, Lcma;

    iget-object v0, p0, Lgft$3;->a:Lgft;

    .line 5046
    iget-object v0, v0, Lgft;->a:Landroid/content/Context;

    .line 1231
    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v4, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1234
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 244
    const/16 v1, 0x8

    invoke-static {v1, p1, p2}, Lggr;->a(ILjava/lang/String;Ljava/lang/String;)Lggs;

    move-result-object v0

    .line 245
    .local v0, "rpcError":Lggs;
    iget-object v1, p0, Lgft$3;->a:Lgft;

    .line 1046
    iget-object v1, v1, Lgft;->d:Lgfs$b;

    .line 245
    const/16 v2, 0x6d

    iget-object v3, v0, Lggs;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lgfs$b;->a(ILjava/lang/String;)V

    .line 246
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 240
    return-void
.end method
