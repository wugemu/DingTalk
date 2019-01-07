.class public final Lgbw;
.super Lgbm;
.source "SpaceDingFavorite.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/base/objects/DingLinkObject;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p3, "attachmentObject"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .param p4, "linkObject"    # Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lgbm;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/base/objects/DingLinkObject;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 33
    iget-object v4, p0, Lgbw;->b:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v4, v4, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    const-class v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v4, v5}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 34
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v1, :cond_1

    .line 35
    iget-object v4, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 37
    :try_start_0
    iget-object v4, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 38
    .local v2, "orgId":J
    iget-object v4, p0, Lgbw;->f:Lcky;

    .line 1075
    iput-wide v2, v4, Lcky;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v2    # "orgId":J
    :cond_0
    :goto_0
    iget-object v4, p0, Lgbw;->c:Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    iget-object v5, p0, Lgbw;->d:Landroid/content/Context;

    iget-object v6, p0, Lgbw;->f:Lcky;

    iget-object v7, p0, Lgbw;->h:Lcma;

    invoke-virtual {v4, v5, v6, v1, v7}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    .line 45
    :cond_1
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lcma;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lgbw;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbw;->b:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbw;->b:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbw;->b:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0, p1}, Lgbw;->b(Lcma;)V

    goto :goto_0
.end method
