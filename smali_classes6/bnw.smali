.class public final Lbnw;
.super Ljava/lang/Object;
.source "FeedCacheCenter.java"


# static fields
.field private static e:Lcpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpq",
            "<",
            "Lbnw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lbnj$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfq",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lbnw$1;

    invoke-direct {v0}, Lbnw$1;-><init>()V

    sput-object v0, Lbnw;->e:Lcpq;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lbnw;->d:Lfp;

    .line 1018
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    iput-object v0, p0, Lbnw;->a:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lbnw;->b:Ljava/util/Map;

    .line 58
    new-instance v0, Lfq;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lfq;-><init>(I)V

    iput-object v0, p0, Lbnw;->c:Lfq;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "dp"    # F
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 196
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 197
    :cond_0
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v0

    .line 4050
    invoke-virtual {v0, p0, p1, p2}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lbnw;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lbnw;->e:Lcpq;

    invoke-virtual {v0}, Lcpq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnw;

    return-object v0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 4
    .param p0, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 85
    if-nez p0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isLike()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-virtual {v0, v2, v3}, Lbnw;->b(J)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-virtual {v0, v2, v3}, Lbnw;->c(J)V

    goto :goto_0
.end method


# virtual methods
.method public final a(JLbnj$a;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "profileObject"    # Lbnj$a;

    .prologue
    .line 157
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 158
    const-string/jumbo v0, "uid <= 0 || profileObject = null"

    .line 2076
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lbnw;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 3
    .param p1, "postId"    # J

    .prologue
    .line 73
    iget-object v1, p0, Lbnw;->d:Lfp;

    .line 1096
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/Boolean;

    .line 74
    .local v0, "isLiked":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b(J)V
    .locals 3
    .param p1, "postId"    # J

    .prologue
    .line 81
    iget-object v0, p0, Lbnw;->d:Lfp;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lfp;->b(JLjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public final c(J)V
    .locals 1
    .param p1, "postId"    # J

    .prologue
    .line 108
    iget-object v0, p0, Lbnw;->d:Lfp;

    .line 1132
    invoke-virtual {v0, p1, p2}, Lfp;->b(J)V

    .line 109
    return-void
.end method

.method public final d(J)Lbnj$a;
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 166
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 167
    const-string/jumbo v0, "uid <= 0"

    .line 3076
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbnw;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnj$a;

    goto :goto_0
.end method
