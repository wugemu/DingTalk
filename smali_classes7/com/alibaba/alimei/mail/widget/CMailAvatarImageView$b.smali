.class final Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;
.super Ljava/lang/Object;
.source "CMailAvatarImageView.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;",
        ">;"
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
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->a:Ljava/lang/ref/WeakReference;

    .line 278
    iput-object p2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->b:Ljava/lang/String;

    .line 279
    iput-object p3, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->c:Ljava/lang/String;

    .line 280
    return-void
.end method

.method private a()Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    return-object v0
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 334
    const-string/jumbo v2, "CMailAvatarImageView"

    invoke-static {v2, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 335
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->a()Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    move-result-object v0

    .line 336
    .local v0, "avatarView":Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;
    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    sget v2, Laxo$f;->mail:I

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 340
    .local v1, "mailTag":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->c:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 271
    check-cast p1, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;

    .line 1288
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->a()Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    move-result-object v1

    .line 1289
    if-nez v1, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1293
    :cond_1
    if-nez p1, :cond_2

    .line 1294
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1298
    :cond_2
    iget-wide v2, p1, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->mUid:J

    .line 1299
    iget-wide v4, p1, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->mLastReqMillis:J

    .line 1301
    sget v0, Laxo$f;->mail:I

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1302
    iget-object v6, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->b:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1303
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_5

    .line 1304
    const-wide/16 v6, -0x1

    cmp-long v0, v6, v2

    if-nez v0, :cond_4

    .line 1305
    invoke-static {}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x112a880

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 1307
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1309
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1312
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 2167
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 1315
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0x112a880

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    .line 1316
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1318
    :cond_6
    invoke-static {}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->c:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;JLjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1324
    :cond_7
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_8

    .line 1325
    invoke-static {}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1326
    :cond_8
    const-wide/16 v0, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1327
    invoke-static {}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
