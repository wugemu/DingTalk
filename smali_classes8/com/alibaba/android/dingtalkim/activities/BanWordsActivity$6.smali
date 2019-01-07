.class final Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$6;
.super Ljava/lang/Object;
.source "BanWordsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a()V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/UserBanObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->dismissLoadingDialog()V

    .line 213
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 186
    check-cast p1, Ljava/util/List;

    .line 1189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->dismissLoadingDialog()V

    .line 1190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;Ljava/util/List;)Ljava/util/List;

    .line 1191
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;Ljava/util/List;)Ljava/util/List;

    .line 1192
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/UserBanObject;

    .line 1194
    if-eqz v0, :cond_0

    .line 1195
    iget-boolean v2, v0, Lcom/alibaba/wukong/im/UserBanObject;->inBanBlack:Z

    if-eqz v2, :cond_1

    .line 1196
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    :cond_1
    iget-boolean v2, v0, Lcom/alibaba/wukong/im/UserBanObject;->inBanWhite:Z

    if-eqz v2, :cond_0

    .line 1199
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1204
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$i;

    invoke-direct {v1, v3}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$i;-><init>(Z)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$i;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$i;-><init>(Z)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1206
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;Z)V

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->c(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V

    .line 186
    return-void
.end method
