.class public Lgau;
.super Ljava/lang/Object;
.source "FavoriteUserHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgau$a;
    }
.end annotation


# static fields
.field public static volatile a:Lgau;


# instance fields
.field b:Landroid/os/Handler;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lgau$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgau;->c:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgau;->d:Ljava/util/HashMap;

    .line 100
    new-instance v0, Lgau$2;

    invoke-direct {v0, p0}, Lgau$2;-><init>(Lgau;)V

    iput-object v0, p0, Lgau;->b:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method public static a()Lgau;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lgau;->a:Lgau;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lgau;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lgau;->a:Lgau;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lgau;

    invoke-direct {v0}, Lgau;-><init>()V

    sput-object v0, Lgau;->a:Lgau;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lgau;->a:Lgau;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(JI)Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # J
    .param p2, "position"    # I

    .prologue
    .line 122
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 123
    .local v0, "dSbStr":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 124
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 125
    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 126
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic a(Lgau;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lgau;

    .prologue
    .line 17
    iget-object v0, p0, Lgau;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lgau;JI)V
    .locals 3
    .param p0, "x0"    # Lgau;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 17
    .line 1094
    iget-object v0, p0, Lgau;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1095
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1096
    invoke-static {p1, p2, p3}, Lgau;->a(JI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1097
    iget-object v1, p0, Lgau;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    return-void
.end method

.method static synthetic b(Lgau;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lgau;

    .prologue
    .line 17
    iget-object v0, p0, Lgau;->d:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a(JILgau$a;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "position"    # I
    .param p4, "listener"    # Lgau$a;

    .prologue
    .line 51
    iget-object v0, p0, Lgau;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgau;->c:Ljava/util/HashMap;

    .line 54
    :cond_0
    iget-object v0, p0, Lgau;->d:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgau;->d:Ljava/util/HashMap;

    .line 62
    :cond_1
    iget-object v0, p0, Lgau;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lgau;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {p4, v0}, Lgau$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 91
    :goto_0
    return-void

    .line 65
    :cond_2
    iget-object v0, p0, Lgau;->d:Ljava/util/HashMap;

    invoke-static {p1, p2, p3}, Lgau;->a(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    .line 67
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lgau$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lgau$1;-><init>(Lgau;JI)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 88
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lgau$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_0
.end method
