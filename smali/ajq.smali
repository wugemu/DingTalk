.class public final Lajq;
.super Ljava/lang/Object;
.source "SearchUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ILcma;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    if-nez p3, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    new-instance v0, Lajq$2;

    invoke-direct {v0, p2, p3}, Lajq$2;-><init>(ILcma;)V

    .line 82
    .local v0, "searchTaskListener":Lcca;
    if-eqz p0, :cond_2

    .line 83
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcca;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "searchTaskListener":Lcca;
    check-cast v0, Lcca;

    .line 85
    .restart local v0    # "searchTaskListener":Lcca;
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->b(IILjava/lang/String;Lcca;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;ILcma;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    if-nez p3, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    new-instance v0, Lajq$4;

    invoke-direct {v0, p2, p3}, Lajq$4;-><init>(ILcma;)V

    .line 158
    .local v0, "eventListener":Lcma;
    if-eqz p0, :cond_2

    .line 159
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "eventListener":Lcma;
    check-cast v0, Lcma;

    .line 161
    .restart local v0    # "eventListener":Lcma;
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;IILcma;)V

    goto :goto_0
.end method
