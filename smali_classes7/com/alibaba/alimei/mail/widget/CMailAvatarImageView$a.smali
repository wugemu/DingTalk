.class final Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;
.super Ljava/lang/Object;
.source "CMailAvatarImageView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "avatarImageView"    # Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->a:Ljava/lang/ref/WeakReference;

    .line 356
    iput-object p2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->b:Ljava/lang/String;

    .line 357
    iput-object p3, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->c:Ljava/lang/String;

    .line 358
    return-void
.end method

.method private a()Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    return-object v0
.end method

.method private a(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;I)V
    .locals 7
    .param p1, "avatarView"    # Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;
    .param p2, "defaultValue"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 384
    if-nez p1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    sget v1, Laxo$f;->mail:I

    invoke-virtual {p1, v1}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 388
    .local v0, "mailTag":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    invoke-static {}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->c()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->c:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;JLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 349
    check-cast p1, Ljava/util/Map;

    .line 1366
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->a()Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    move-result-object v1

    .line 1367
    invoke-static {}, Lpn;->a()Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;

    move-result-object v2

    .line 1368
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1369
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    invoke-direct {p0, v1, v6}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->a(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;I)V

    .line 1371
    if-eqz v2, :cond_1

    .line 1372
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->b:Ljava/lang/String;

    invoke-interface {v2, v0, v8, v9, v7}, Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;->saveUidByEmail(Ljava/lang/String;JLxv;)V

    .line 1374
    :cond_1
    :goto_0
    return-void

    .line 1376
    :cond_2
    invoke-static {}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1377
    if-eqz v2, :cond_3

    .line 1378
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->b:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;->saveUidByEmail(Ljava/lang/String;JLxv;)V

    .line 1380
    :cond_3
    invoke-direct {p0, v1, v6}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->a(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;I)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 400
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "obtain user from rpc exception for email: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "sb":Ljava/lang/String;
    const-string/jumbo v2, "CMailAvatarImageView"

    invoke-static {v2, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->a()Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    move-result-object v0

    .line 404
    .local v0, "avatarView":Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;
    const/4 v2, -0x3

    invoke-direct {p0, v0, v2}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;->a(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;I)V

    .line 405
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 396
    return-void
.end method
