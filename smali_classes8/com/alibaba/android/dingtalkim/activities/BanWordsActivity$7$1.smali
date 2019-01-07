.class final Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7$1;
.super Ljava/lang/Object;
.source "BanWordsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7$1;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 233
    check-cast p1, Ljava/util/List;

    .line 1237
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7$1;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->dismissLoadingDialog()V

    .line 1238
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7$1;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->c(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;Ljava/util/List;)Ljava/util/List;

    .line 233
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7$1;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->dismissLoadingDialog()V

    .line 248
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "ban getUserProfileList onException code: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", msg: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 243
    return-void
.end method
