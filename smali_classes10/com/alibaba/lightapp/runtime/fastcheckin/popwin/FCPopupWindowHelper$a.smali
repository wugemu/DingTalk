.class final Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;
.super Ljava/lang/Object;
.source "FCPopupWindowHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

.field public e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    .line 269
    return-void
.end method

.method public static a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;)Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;
    .locals 6
    .param p0, "checkInPushObject"    # Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;
    .param p1, "topNotifyObject"    # Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    const/4 v1, 0x0

    .line 330
    :goto_0
    return-object v1

    .line 305
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;

    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;-><init>()V

    .line 306
    .local v1, "notifyObject":Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->a:Ljava/lang/String;

    .line 309
    if-eqz p0, :cond_1

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckDate:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 310
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckDate:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->lateTitle:Ljava/lang/String;

    .line 311
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->lateTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->a:Ljava/lang/String;

    .line 315
    :cond_1
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->b:Ljava/lang/String;

    .line 317
    :try_start_0
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->c:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_1
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->actionsObject:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->actionsObject:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 322
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->actionsObject:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;

    .line 323
    .local v0, "actionObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;
    if-eqz v0, :cond_2

    .line 326
    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    invoke-virtual {v3, v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 329
    .end local v0    # "actionObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;
    :cond_3
    iget v2, p1, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->interval:I

    iput v2, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->e:I

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static a(Lhhn;)Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;
    .locals 6
    .param p0, "fcResultObject"    # Lhhn;

    .prologue
    .line 272
    if-nez p0, :cond_0

    .line 273
    const/4 v3, 0x0

    .line 297
    :goto_0
    return-object v3

    .line 276
    :cond_0
    new-instance v3, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;-><init>()V

    .line 277
    .local v3, "notifyObject":Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;
    iget-object v4, p0, Lhhn;->f:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->a:Ljava/lang/String;

    .line 278
    iget-object v4, p0, Lhhn;->g:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->b:Ljava/lang/String;

    .line 280
    :try_start_0
    iget-object v4, p0, Lhhn;->k:Ljava/lang/String;

    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->c:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_1
    iget-object v2, p0, Lhhn;->j:Ljava/util/List;

    .line 285
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Lhpu;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 286
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    .line 287
    .local v0, "action":Lhpu;
    if-eqz v0, :cond_1

    .line 290
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;->adapt(Lhpu;)Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;

    move-result-object v1

    .line 291
    .local v1, "actionObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;
    if-eqz v1, :cond_1

    .line 292
    iget-object v5, v3, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    invoke-virtual {v5, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 296
    .end local v0    # "action":Lhpu;
    .end local v1    # "actionObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;
    :cond_2
    iget v4, p0, Lhhn;->i:I

    iput v4, v3, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->e:I

    goto :goto_0

    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Lhpu;>;"
    :catch_0
    move-exception v4

    goto :goto_1
.end method
