.class final Lfnc$1;
.super Ljava/lang/Object;
.source "FriendConnectionDataSourceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfnc;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Z

.field final synthetic c:Lfnc;


# direct methods
.method constructor <init>(Lfnc;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)V
    .locals 0
    .param p1, "this$0"    # Lfnc;

    .prologue
    .line 102
    iput-object p1, p0, Lfnc$1;->c:Lfnc;

    iput-object p2, p0, Lfnc$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-boolean p3, p0, Lfnc$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lfnc$1;Lcom/alibaba/wukong/im/User;)V
    .locals 6
    .param p0, "x0"    # Lfnc$1;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/User;

    .prologue
    const/4 v0, 0x1

    .line 102
    .line 1116
    iget-object v1, p0, Lfnc$1;->c:Lfnc;

    invoke-static {v1}, Lfnc;->b(Lfnc;)Lcom/alibaba/bee/DBManager;

    move-result-object v1

    iget-object v2, p0, Lfnc$1;->c:Lfnc;

    invoke-static {v2}, Lfnc;->a(Lfnc;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/user/entry/FriendConnectionEntry;

    const-class v4, Lcom/alibaba/android/user/entry/FriendConnectionEntry;

    const-string/jumbo v5, "tb_friend_connection"

    invoke-static {v4, v5}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v1

    .line 1119
    if-eqz p1, :cond_0

    .line 1120
    :try_start_0
    iget-object v2, p0, Lfnc$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/User;->alias()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 1121
    iget-object v2, p0, Lfnc$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/User;->aliasPinyin()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 1123
    :cond_0
    new-instance v2, Lcom/alibaba/android/user/entry/FriendConnectionEntry;

    invoke-direct {v2}, Lcom/alibaba/android/user/entry/FriendConnectionEntry;-><init>()V

    .line 1124
    iget-object v3, p0, Lfnc$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v4, v2, Lcom/alibaba/android/user/entry/FriendConnectionEntry;->uid:J

    .line 1125
    iget-object v3, p0, Lfnc$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/user/entry/FriendConnectionEntry;->mobile:Ljava/lang/String;

    .line 1126
    iget-boolean v3, p0, Lfnc$1;->b:Z

    if-eqz v3, :cond_1

    :goto_0
    iput v0, v2, Lcom/alibaba/android/user/entry/FriendConnectionEntry;->shareMobile:I

    .line 1127
    invoke-virtual {v2, v1}, Lcom/alibaba/android/user/entry/FriendConnectionEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 1129
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 1130
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 1131
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    iget-object v2, p0, Lfnc$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/user/internal/IMContextEngine;->b(J)V

    .line 1133
    iget-object v0, p0, Lfnc$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z

    .line 1134
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v0

    iget-object v2, p0, Lfnc$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0, v2}, Lfbn;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    invoke-static {v1}, Lfnc;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 1137
    return-void

    .line 1126
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1136
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lfnc;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v0
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 142
    const-class v0, Lfnc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfnc$1$2;

    invoke-direct {v1, p0}, Lfnc$1$2;-><init>(Lfnc$1;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 102
    check-cast p1, Lcom/alibaba/wukong/im/User;

    .line 1106
    const-class v0, Lfnc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfnc$1$1;

    invoke-direct {v1, p0, p1}, Lfnc$1$1;-><init>(Lfnc$1;Lcom/alibaba/wukong/im/User;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method
