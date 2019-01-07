.class public abstract Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.super Ljava/lang/Object;
.source "AbsDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;

.field public static d:Z


# instance fields
.field private b:Landroid/net/Uri;

.field protected c:Lcom/alibaba/bee/DBManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "content://authority.com.alibaba.android.babylon"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->a:Landroid/net/Uri;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->b:Landroid/net/Uri;

    .line 40
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcpm;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-class v0, Lcom/alibaba/bee/DBManager;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/bee/DBManager;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->c:Lcom/alibaba/bee/DBManager;

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->c:Lcom/alibaba/bee/DBManager;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/bee/SQLiteStatement;)V
    .locals 0
    .param p0, "statement"    # Lcom/alibaba/bee/SQLiteStatement;

    .prologue
    .line 82
    if-eqz p0, :cond_0

    .line 83
    invoke-interface {p0}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 85
    :cond_0
    return-void
.end method

.method protected static j()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 48
    sget-boolean v3, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->d:Z

    if-nez v3, :cond_1

    .line 56
    .local v0, "size":J
    :cond_0
    :goto_0
    return v2

    .line 50
    .end local v0    # "size":J
    :cond_1
    invoke-static {}, Lifz;->a()J

    move-result-wide v0

    .line 51
    .restart local v0    # "size":J
    const-wide/32 v4, 0x200000

    cmp-long v3, v0, v4

    if-gtz v3, :cond_2

    .line 52
    const/4 v2, 0x1

    goto :goto_0

    .line 53
    :cond_2
    const-wide/32 v4, 0x3200000

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 54
    sput-boolean v2, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->d:Z

    goto :goto_0
.end method

.method public static m()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 181
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v0

    .line 182
    .local v0, "openId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 183
    const-string/jumbo v2, "dingtalkbase"

    const-string/jumbo v3, "DataSource"

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "[getDingTalkDatabaseNameV2]invalidate openId:"

    aput-object v5, v4, v6

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, ".db"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1177
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ".db"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    return-object v0
.end method

.method public final l()Landroid/net/Uri;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->b:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->a:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->p_()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->b:Landroid/net/Uri;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
