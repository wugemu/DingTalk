.class public Lgez;
.super Lfzr;
.source "SpaceLinkShareSelectedManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfzr",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:Lgez;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lfzr;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgez;->c:Ljava/util/Map;

    .line 34
    return-void
.end method

.method public static c()Lgez;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lgez;->d:Lgez;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lgez;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lgez;->d:Lgez;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lgez;

    invoke-direct {v0}, Lgez;-><init>()V

    sput-object v0, Lgez;->d:Lgez;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lgez;->d:Lgez;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lfzr;->a()V

    .line 73
    iget-object v0, p0, Lgez;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 74
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)V
    .locals 2
    .param p1, "spaceLinkShareModel"    # Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lgez;->b(Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-super {p0, p1}, Lfzr;->a(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lgez;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {p0, p1}, Lgez;->a(Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)V

    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 29
    check-cast p1, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    .line 1061
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lgez;->b(Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    invoke-super {p0, p1}, Lfzr;->b(Ljava/lang/Object;)V

    .line 1067
    iget-object v0, p0, Lgez;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)Z
    .locals 2
    .param p1, "item"    # Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 78
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lgez;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final synthetic c(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {p0, p1}, Lgez;->b(Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)Z

    move-result v0

    return v0
.end method
