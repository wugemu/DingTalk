.class public final Lezd;
.super Ljava/lang/Object;
.source "TeleConfAvatarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lezd$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field public b:Lezd$a;

.field private volatile c:I

.field private volatile d:Z

.field private volatile e:Z

.field private volatile f:I

.field private volatile g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lezd;->b:Lezd$a;

    .line 59
    iput-object v1, p0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lezd;->c:I

    .line 61
    const/16 v0, 0x65

    iput v0, p0, Lezd;->f:I

    .line 62
    iput-object v1, p0, Lezd;->g:Ljava/lang/String;

    .line 63
    iput-boolean v2, p0, Lezd;->d:Z

    .line 64
    iput-boolean v2, p0, Lezd;->e:Z

    .line 66
    return-void
.end method

.method public static a(II)I
    .locals 2
    .param p0, "newStatus"    # I
    .param p1, "oldStatus"    # I

    .prologue
    const/4 v1, 0x2

    .line 120
    if-ne p0, v1, :cond_2

    .line 121
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x1

    .line 138
    .local v0, "animType":I
    :goto_0
    return v0

    .line 124
    .end local v0    # "animType":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "animType":I
    goto :goto_0

    .line 126
    .end local v0    # "animType":I
    :cond_2
    if-nez p0, :cond_4

    .line 127
    if-ne p1, v1, :cond_3

    .line 128
    const/4 v0, 0x2

    .restart local v0    # "animType":I
    goto :goto_0

    .line 130
    .end local v0    # "animType":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "animType":I
    goto :goto_0

    .line 136
    .end local v0    # "animType":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "animType":I
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 3
    .param p0, "cause"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 142
    move v0, p1

    .line 143
    .local v0, "extraStatus":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 168
    .end local v0    # "extraStatus":I
    .local v1, "extraStatus":I
    :goto_0
    return v1

    .line 147
    .end local v1    # "extraStatus":I
    .restart local v0    # "extraStatus":I
    :cond_0
    const-string/jumbo v2, "NO_ANSWER"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    const/16 v0, 0x66

    :cond_1
    :goto_1
    move v1, v0

    .line 168
    .end local v0    # "extraStatus":I
    .restart local v1    # "extraStatus":I
    goto :goto_0

    .line 149
    .end local v1    # "extraStatus":I
    .restart local v0    # "extraStatus":I
    :cond_2
    const-string/jumbo v2, "UNABLE_CONNECT"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 150
    const/16 v0, 0x67

    goto :goto_1

    .line 151
    :cond_3
    const-string/jumbo v2, "SHUTDOWN"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 152
    const/16 v0, 0x68

    goto :goto_1

    .line 153
    :cond_4
    const-string/jumbo v2, "REFUSE"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 154
    const/16 v0, 0x6a

    goto :goto_1

    .line 155
    :cond_5
    const-string/jumbo v2, "NORMAL_CLEARING"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 156
    const/16 v0, 0x65

    goto :goto_1

    .line 157
    :cond_6
    const-string/jumbo v2, "OUT_OF_SERVICE"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 158
    const/16 v0, 0x69

    goto :goto_1

    .line 159
    :cond_7
    const-string/jumbo v2, "CALLING"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "callee-is-calling"

    .line 160
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 161
    :cond_8
    const/16 v0, 0x6b

    goto :goto_1

    .line 162
    :cond_9
    const-string/jumbo v2, "NOT_ACTIVE"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 163
    const/16 v0, 0x6c

    goto :goto_1

    .line 164
    :cond_a
    const-string/jumbo v2, "PREVENTED"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    const/16 v0, 0x6d

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lezd;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 3
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lezd;->c:I

    .line 71
    .local v0, "oldStatus":I
    iput p1, p0, Lezd;->c:I

    .line 73
    iget v1, p0, Lezd;->c:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lezd;->b:Lezd$a;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lezd;->b:Lezd$a;

    iget v2, p0, Lezd;->c:I

    invoke-interface {v1, v0, v2}, Lezd$a;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    .line 70
    .end local v0    # "oldStatus":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lezd;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lezd;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()I
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lezd;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lezd;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Z)V
    .locals 1
    .param p1, "speeking"    # Z

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lezd;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lezd;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lezd;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lezd;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
