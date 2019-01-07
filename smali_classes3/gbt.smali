.class public final Lgbt;
.super Lgbm;
.source "OADingFavorite.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/base/objects/DingLinkObject;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p3, "attachmentObject"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .param p4, "linkObject"    # Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lgbm;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/base/objects/DingLinkObject;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 31
    iget-object v0, p0, Lgbt;->c:Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    iget-object v1, p0, Lgbt;->d:Landroid/content/Context;

    iget-object v2, p0, Lgbt;->f:Lcky;

    iget-object v3, p0, Lgbt;->b:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v3, v3, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    iget-object v4, p0, Lgbt;->b:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v4, v4, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    iget-object v5, p0, Lgbt;->b:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v5, v5, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    iget-object v6, p0, Lgbt;->b:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    iget-object v7, p0, Lgbt;->h:Lcma;

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 32
    return-void
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
    .line 23
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lgbt;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbt;->b:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbt;->b:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Lgbt;->b(Lcma;)V

    goto :goto_0
.end method
