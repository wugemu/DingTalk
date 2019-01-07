.class public final Lfzo;
.super Ljava/lang/Object;
.source "CSpaceCreatorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfzo$a;
    }
.end annotation


# static fields
.field public static a:Lfzo;


# instance fields
.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lfzo$a;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfzo;->b:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfzo;->c:Ljava/util/HashMap;

    .line 183
    new-instance v0, Lfzo$3;

    invoke-direct {v0, p0}, Lfzo$3;-><init>(Lfzo;)V

    iput-object v0, p0, Lfzo;->d:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 7
    .param p0, "creatorEmail"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 161
    if-nez p0, :cond_0

    .line 180
    :goto_0
    return-wide v4

    .line 165
    :cond_0
    :try_start_0
    const-string/jumbo v6, "@"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    const-string/jumbo v6, "@"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 167
    .local v1, "indexEnd":I
    const-string/jumbo v6, "_"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 168
    .local v2, "indexStart":I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "uid":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    .line 170
    .end local v1    # "indexEnd":I
    .end local v2    # "indexStart":I
    .end local v3    # "uid":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "_"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 171
    const-string/jumbo v6, "_"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 172
    .restart local v1    # "indexEnd":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 173
    .restart local v3    # "uid":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    .line 175
    .end local v1    # "indexEnd":I
    .end local v3    # "uid":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized a()Lfzo;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lfzo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfzo;->a:Lfzo;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lfzo;

    invoke-direct {v0}, Lfzo;-><init>()V

    sput-object v0, Lfzo;->a:Lfzo;

    .line 37
    :cond_0
    sget-object v0, Lfzo;->a:Lfzo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "position"    # I
    .param p2, "extraFlag"    # I

    .prologue
    .line 208
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 209
    .local v0, "dSbStr":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 210
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 211
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 212
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 213
    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 214
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic a(Lfzo;Ljava/lang/String;II)V
    .locals 2
    .param p0, "x0"    # Lfzo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 23
    .line 1154
    iget-object v0, p0, Lfzo;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1155
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1156
    invoke-static {p1, p2, p3}, Lfzo;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1157
    iget-object v1, p0, Lfzo;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;IILfzo$a;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creatorEmail"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "extraFlag"    # I
    .param p5, "listener"    # Lfzo$a;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    if-eqz p5, :cond_0

    .line 47
    invoke-interface {p5, v6}, Lfzo$a;->a(Ljava/lang/String;)V

    .line 102
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    iget-object v3, p0, Lfzo;->b:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    iget-object v3, p0, Lfzo;->b:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p5, v3}, Lfzo$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    iget-object v3, p0, Lfzo;->c:Ljava/util/HashMap;

    invoke-static {p2, p3, p4}, Lfzo;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p2}, Lfzo;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 58
    .local v0, "uid":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_5

    .line 59
    if-nez p1, :cond_3

    .line 60
    invoke-interface {p5, v6}, Lfzo$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    new-instance v2, Lfzo$1;

    invoke-direct {v2, p0, p2, p3, p4}, Lfzo$1;-><init>(Lfzo;Ljava/lang/String;II)V

    .line 94
    .local v2, "userProfileListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_4

    .line 95
    const-class v3, Lcma;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {v2, v3, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "userProfileListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    check-cast v2, Lcma;

    .line 97
    .restart local v2    # "userProfileListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 99
    .end local v2    # "userProfileListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .restart local p1    # "context":Landroid/content/Context;
    :cond_5
    invoke-interface {p5, v6}, Lfzo$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
