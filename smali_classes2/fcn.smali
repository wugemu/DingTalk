.class public final Lfcn;
.super Ljava/lang/Object;
.source "FeedCacheCenter.java"


# static fields
.field private static d:Lcpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpq",
            "<",
            "Lfcn;",
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
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lfbz$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lfq;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lfcn$1;

    invoke-direct {v0}, Lfcn$1;-><init>()V

    sput-object v0, Lfcn;->d:Lcpq;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lfcn;->b:Lfp;

    .line 1018
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    iput-object v0, p0, Lfcn;->c:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lfcn;->a:Ljava/util/Map;

    .line 59
    new-instance v0, Lfq;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lfq;-><init>(I)V

    iput-object v0, p0, Lfcn;->e:Lfq;

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
    .line 198
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 199
    :cond_0
    const/4 v0, 0x0

    .line 202
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

.method public static a()Lfcn;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lfcn;->d:Lcpq;

    invoke-virtual {v0}, Lcpq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfcn;

    return-object v0
.end method

.method public static a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 4
    .param p0, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->isLike()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-virtual {v0, v2, v3}, Lfcn;->b(J)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-virtual {v0, v2, v3}, Lfcn;->c(J)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "dp"    # F
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 207
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 208
    :cond_0
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;FZ)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(JLfbz$a;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "profileObject"    # Lfbz$a;

    .prologue
    .line 159
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 160
    const-string/jumbo v0, "uid <= 0 || profileObject = null"

    .line 2060
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lffe;->a(ZLjava/lang/String;)V

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lfcn;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 3
    .param p1, "postId"    # J

    .prologue
    .line 74
    iget-object v1, p0, Lfcn;->b:Lfp;

    .line 1096
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Boolean;

    .line 75
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
    .line 82
    iget-object v0, p0, Lfcn;->b:Lfp;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lfp;->b(JLjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public final c(J)V
    .locals 1
    .param p1, "postId"    # J

    .prologue
    .line 109
    iget-object v0, p0, Lfcn;->b:Lfp;

    .line 1132
    invoke-virtual {v0, p1, p2}, Lfp;->b(J)V

    .line 110
    return-void
.end method

.method public final d(J)Lfbz$a;
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 168
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 169
    const-string/jumbo v0, "uid <= 0"

    .line 3060
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lffe;->a(ZLjava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lfcn;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfbz$a;

    goto :goto_0
.end method
