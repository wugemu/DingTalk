.class public Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;
.super Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
.source "CMailAvatarImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$c;,
        Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;,
        Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;
    }
.end annotation


# static fields
.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->e:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->f:Ljava/util/Map;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;-><init>(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 113
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->f:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 116
    :cond_1
    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "uid"    # J
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "fromCache"    # Z

    .prologue
    const/4 v4, 0x0

    .line 195
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_3

    .line 197
    const-wide/16 v2, -0x2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 199
    invoke-static {p3, p4}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6167
    invoke-virtual {p0, v1, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 260
    :goto_0
    return-void

    .line 200
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v1, v2, p1

    if-nez v1, :cond_1

    .line 202
    invoke-direct {p0, p3, p4, p5}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 203
    :cond_1
    const-wide/16 v2, -0x3

    cmp-long v1, v2, p1

    if-nez v1, :cond_2

    .line 205
    invoke-static {p3, p4}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7167
    invoke-virtual {p0, v1, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {p3, p4}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8167
    invoke-virtual {p0, v1, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 212
    :cond_3
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v1, v2}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 213
    .local v0, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    if-eqz v0, :cond_6

    .line 214
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v8

    .line 215
    .local v8, "userProfile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v8, :cond_4

    .line 216
    iget-object v1, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 9167
    invoke-virtual {p0, v1, v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 217
    :cond_4
    if-eqz p5, :cond_5

    .line 219
    invoke-static {p3, p4}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10167
    invoke-virtual {p0, v1, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 222
    :cond_5
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "can not obtain user for email: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", with uid: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, "sb":Ljava/lang/String;
    const-string/jumbo v1, "CMailAvatarImageView"

    invoke-static {v1, v7}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v1, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;-><init>(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 257
    .end local v7    # "sb":Ljava/lang/String;
    .end local v8    # "userProfile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_6
    const-string/jumbo v1, "CMailAvatarImageView"

    const-string/jumbo v2, "contactInterface is null, error!!!!"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Z

    .prologue
    .line 39
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(JLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->f:Ljava/util/Map;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "fromCache"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x28

    .line 143
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lade;->a(Landroid/content/Context;)Lade;

    move-result-object v0

    .line 2283
    invoke-static {v4, p1}, Lade;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2284
    iget-object v0, v0, Lade;->a:Ladf;

    invoke-virtual {v0, v4, v1}, Ladf;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 144
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    .line 145
    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5151
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    if-eqz p3, :cond_2

    .line 148
    invoke-static {p1, p2}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3167
    invoke-virtual {p0, v0, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-static {p1, p2}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4167
    invoke-virtual {p0, v0, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 152
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "accountName":Ljava/lang/String;
    invoke-static {v2}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lade;->a(Landroid/content/Context;)Lade;

    move-result-object v1

    new-instance v5, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$c;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$c;-><init>(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;)V

    .line 5134
    if-nez p1, :cond_3

    .line 5135
    invoke-interface {v5, v3, p1}, Lade$b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 5138
    :cond_3
    invoke-static {v4, p1}, Lade;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5139
    iget-object v3, v1, Lade;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 5140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5141
    if-eqz v0, :cond_4

    .line 5142
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x112a880

    cmp-long v0, v8, v10

    if-lez v0, :cond_4

    .line 5144
    sget-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v0}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v6

    .line 5145
    new-instance v0, Lade$2;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lade$2;-><init>(Lade;Ljava/lang/String;Ljava/lang/String;ILade$b;)V

    invoke-interface {v6, v0}, Laie;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5238
    :cond_4
    const/4 v6, 0x1

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lade;->a(Ljava/lang/String;Ljava/lang/String;ILade$b;Z)V

    goto :goto_0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->e:Ljava/util/Map;

    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 268
    invoke-static {}, Lro;->a()Lro;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$a;-><init>(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lro;->b(Ljava/util/List;Lcma;)V

    .line 269
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "fromCache"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    const-string/jumbo v1, "CMailAvatarImageView"

    const-string/jumbo v4, "email is empty, so return"

    invoke-static {v1, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    sget v1, Laxo$f;->mail:I

    invoke-virtual {p0, v1, p1}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->setTag(ILjava/lang/Object;)V

    .line 1124
    sget-object v1, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 93
    .local v2, "uid":J
    cmp-long v1, v2, v4

    if-gtz v1, :cond_5

    .line 2133
    sget-object v1, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    .local v0, "isNoUid":Z
    if-eqz v0, :cond_2

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2167
    :cond_2
    const-wide/16 v2, -0x2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 2168
    .end local v2    # "uid":J
    if-nez p3, :cond_0

    .line 2170
    sget-object v1, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2171
    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x112a880

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 2172
    const-wide/16 v2, -0x1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(JLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2176
    :cond_3
    invoke-static {}, Lpn;->a()Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;

    move-result-object v1

    .line 2177
    if-eqz v1, :cond_4

    .line 2179
    new-instance v4, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;

    invoke-direct {v4, p0, p1, p2}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$b;-><init>(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1, v4}, Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;->queryUidByEmail(Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 2182
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "isNoUid":Z
    .restart local v2    # "uid":J
    :cond_5
    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 104
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(JLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
