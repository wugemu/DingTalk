.class final Lgft$3$1;
.super Ljava/lang/Object;
.source "FilePreviewPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgft$3;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lgft$3;


# direct methods
.method constructor <init>(Lgft$3;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$1"    # Lgft$3;

    .prologue
    .line 203
    iput-object p1, p0, Lgft$3$1;->b:Lgft$3;

    iput-object p2, p0, Lgft$3$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 203
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1206
    const-string/jumbo v0, ""

    .line 1208
    if-eqz p1, :cond_0

    .line 1209
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1210
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 1216
    :cond_0
    :goto_0
    iget-object v1, p0, Lgft$3$1;->b:Lgft$3;

    iget-object v1, v1, Lgft$3;->a:Lgft;

    .line 2046
    iget-object v1, v1, Lgft;->d:Lgfs$b;

    .line 1216
    const/16 v2, 0x6e

    iget-object v3, p0, Lgft$3$1;->b:Lgft$3;

    iget-object v3, v3, Lgft$3;->a:Lgft;

    iget-object v4, p0, Lgft$3$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v3, v4, v0}, Lgft;->a(Lgft;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lgfs$b;->a(ILjava/lang/String;)V

    .line 203
    return-void

    .line 1211
    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1212
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

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
    .line 226
    iget-object v0, p0, Lgft$3$1;->b:Lgft$3;

    iget-object v0, v0, Lgft$3;->a:Lgft;

    .line 1046
    iget-object v0, v0, Lgft;->d:Lgfs$b;

    .line 226
    const/16 v1, 0x6e

    iget-object v2, p0, Lgft$3$1;->b:Lgft$3;

    iget-object v2, v2, Lgft$3;->a:Lgft;

    iget-object v3, p0, Lgft$3$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lgft;->a(Lgft;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgfs$b;->a(ILjava/lang/String;)V

    .line 227
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 222
    return-void
.end method
