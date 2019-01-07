.class public Lfbm;
.super Ljava/lang/Object;
.source "OrgUserNameCache.java"


# static fields
.field private static a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lfrw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lfbm;->a:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lfmv;
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lfbm;->b()Lfmv;

    move-result-object v0

    return-object v0
.end method

.method public static a(JJ)Lfrw;
    .locals 4
    .param p0, "oid"    # J
    .param p2, "uid"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 19
    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 27
    :cond_1
    :goto_0
    return-object v0

    .line 21
    :cond_2
    sget-object v1, Lfbm;->a:Landroid/util/LruCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfrw;

    .line 23
    .local v0, "usernameObject":Lfrw;
    if-nez v0, :cond_1

    .line 27
    invoke-static {p0, p1, p2, p3}, Lfbm;->c(JJ)Lfrw;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(JLjava/util/List;)Ljava/util/List;
    .locals 8
    .param p0, "oid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lfrw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lfbm;->b()Lfmv;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lfmv;->a(JLjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, "usernameObjects":Ljava/util/List;, "Ljava/util/List<Lfrw;>;"
    if-nez v0, :cond_1

    .line 67
    const/4 v0, 0x0

    .line 70
    .end local v0    # "usernameObjects":Ljava/util/List;, "Ljava/util/List<Lfrw;>;"
    :cond_0
    return-object v0

    .line 1042
    .restart local v0    # "usernameObjects":Ljava/util/List;, "Ljava/util/List<Lfrw;>;"
    :cond_1
    sget-object v1, Lfbm;->a:Landroid/util/LruCache;

    if-eqz v1, :cond_0

    .line 1043
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfrw;

    .line 1044
    if-eqz v1, :cond_2

    .line 1047
    sget-object v3, Lfbm;->a:Landroid/util/LruCache;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lfrw;->b:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(JJLfrw;)V
    .locals 4
    .param p0, "oid"    # J
    .param p2, "uid"    # J
    .param p4, "usernameObject"    # Lfrw;

    .prologue
    .line 36
    sget-object v0, Lfbm;->a:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 37
    sget-object v0, Lfbm;->a:Landroid/util/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    return-void
.end method

.method public static a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 12
    .param p0, "oid"    # J
    .param p2, "uid"    # J
    .param p4, "orgUserName"    # Ljava/lang/String;
    .param p5, "orgUserNamePinyin"    # Ljava/lang/String;
    .param p6, "orgNick"    # Ljava/lang/String;
    .param p7, "orgNickPinyin"    # Ljava/lang/String;
    .param p8, "ver"    # J

    .prologue
    .line 75
    if-nez p4, :cond_0

    .line 76
    const-string/jumbo p4, ""

    .line 79
    :cond_0
    new-instance v1, Lfrw;

    move-wide v2, p0

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lfrw;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 80
    .local v1, "orgUserNameObject":Lfrw;
    invoke-static {p0, p1, p2, p3, v1}, Lfbm;->a(JJLfrw;)V

    .line 82
    const-class v0, Lfbm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v2, Lfbm$1;

    invoke-direct {v2, v1}, Lfbm$1;-><init>(Lfrw;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfrw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "orgUserNameObjectList":Ljava/util/List;, "Ljava/util/List<Lfrw;>;"
    if-nez p0, :cond_1

    .line 108
    :cond_0
    return-void

    .line 96
    :cond_1
    const-class v1, Lfbm;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lfbm$2;

    invoke-direct {v2, p0}, Lfbm$2;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 103
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfrw;

    .line 104
    .local v0, "orgUserNameObject":Lfrw;
    if-eqz v0, :cond_2

    .line 105
    iget-wide v2, v0, Lfrw;->a:J

    iget-wide v4, v0, Lfrw;->b:J

    invoke-static {v2, v3, v4, v5, v0}, Lfbm;->a(JJLfrw;)V

    goto :goto_0
.end method

.method private static b()Lfmv;
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    .line 1082
    sget-object v1, Lfni;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfmz;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    .line 1083
    check-cast v0, Lfmv;

    .line 111
    return-object v0
.end method

.method public static b(JJ)Lfrw;
    .locals 4
    .param p0, "oid"    # J
    .param p2, "uid"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 31
    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lfbm;->a:Landroid/util/LruCache;

    if-eqz v1, :cond_0

    sget-object v0, Lfbm;->a:Landroid/util/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfrw;

    goto :goto_0
.end method

.method public static c(JJ)Lfrw;
    .locals 2
    .param p0, "oid"    # J
    .param p2, "uid"    # J

    .prologue
    .line 55
    invoke-static {}, Lfbm;->b()Lfmv;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lfmv;->a(JJ)Lfrw;

    move-result-object v0

    .line 56
    .local v0, "usernameObject":Lfrw;
    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 60
    .end local v0    # "usernameObject":Lfrw;
    :goto_0
    return-object v0

    .line 59
    .restart local v0    # "usernameObject":Lfrw;
    :cond_0
    invoke-static {p0, p1, p2, p3, v0}, Lfbm;->a(JJLfrw;)V

    goto :goto_0
.end method
