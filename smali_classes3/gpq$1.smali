.class final Lgpq$1;
.super Ljava/lang/Object;
.source "CSpaceUserBaseInfoFetchUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:J

.field final synthetic d:Lcma;

.field final synthetic e:Z

.field final synthetic f:Lgpq;


# direct methods
.method constructor <init>(Lgpq;JLandroid/content/Context;JLcma;Z)V
    .locals 0
    .param p1, "this$0"    # Lgpq;

    .prologue
    .line 103
    iput-object p1, p0, Lgpq$1;->f:Lgpq;

    iput-wide p2, p0, Lgpq$1;->a:J

    iput-object p4, p0, Lgpq$1;->b:Landroid/content/Context;

    iput-wide p5, p0, Lgpq$1;->c:J

    iput-object p7, p0, Lgpq$1;->d:Lcma;

    iput-boolean p8, p0, Lgpq$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 103
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1106
    iget-object v0, p0, Lgpq$1;->f:Lgpq;

    invoke-static {v0}, Lgpq;->a(Lgpq;)Lfp;

    move-result-object v0

    iget-wide v2, p0, Lgpq$1;->a:J

    .line 2096
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1106
    check-cast v6, Lgoh;

    .line 1108
    if-nez p1, :cond_0

    .line 1109
    iget-object v0, p0, Lgpq$1;->f:Lgpq;

    iget-object v1, p0, Lgpq$1;->b:Landroid/content/Context;

    iget-wide v2, p0, Lgpq$1;->a:J

    iget-wide v4, p0, Lgpq$1;->c:J

    const-string/jumbo v7, "500"

    invoke-static {}, Lgpq;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lgpq$1;->d:Lcma;

    invoke-static/range {v0 .. v9}, Lgpq;->a(Lgpq;Landroid/content/Context;JJLgoh;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1133
    :goto_0
    return-void

    .line 1113
    :cond_0
    if-nez v6, :cond_1

    .line 1114
    new-instance v6, Lgoh;

    invoke-direct {v6}, Lgoh;-><init>()V

    .line 1117
    :cond_1
    iget-wide v0, p0, Lgpq$1;->a:J

    iput-wide v0, v6, Lgoh;->a:J

    .line 1118
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v0, v6, Lgoh;->e:Ljava/lang/String;

    .line 1120
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v0, v6, Lgoh;->b:Ljava/lang/String;

    .line 1121
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v0, v6, Lgoh;->c:Ljava/lang/String;

    .line 1122
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v6, Lgoh;->f:Z

    .line 1124
    iget-object v0, p0, Lgpq$1;->f:Lgpq;

    invoke-static {v0}, Lgpq;->a(Lgpq;)Lfp;

    move-result-object v0

    iget-wide v2, p0, Lgpq$1;->a:J

    invoke-virtual {v0, v2, v3, v6}, Lfp;->b(JLjava/lang/Object;)V

    .line 1126
    iget-object v0, v6, Lgoh;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lgpq$1;->e:Z

    if-nez v0, :cond_2

    .line 1127
    iget-object v0, p0, Lgpq$1;->f:Lgpq;

    iget-object v1, p0, Lgpq$1;->d:Lcma;

    invoke-virtual {v0, v6, v1}, Lgpq;->a(Lgoh;Lcma;)V

    goto :goto_0

    .line 1131
    :cond_2
    iget-wide v0, p0, Lgpq$1;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 1133
    iget-object v0, p0, Lgpq$1;->f:Lgpq;

    iget-object v1, p0, Lgpq$1;->d:Lcma;

    invoke-virtual {v0, v6, v1}, Lgpq;->a(Lgoh;Lcma;)V

    goto :goto_0

    .line 1136
    :cond_3
    iget-object v0, p0, Lgpq$1;->f:Lgpq;

    iget-object v1, p0, Lgpq$1;->b:Landroid/content/Context;

    iget-wide v2, p0, Lgpq$1;->a:J

    iget-wide v4, p0, Lgpq$1;->c:J

    iget-object v6, p0, Lgpq$1;->d:Lcma;

    invoke-static/range {v0 .. v6}, Lgpq;->a(Lgpq;Landroid/content/Context;JJLcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 147
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceUserBaseInfoFetchUtil"

    const-string/jumbo v2, "getUserBaseInfo"

    invoke-static {v2, p1, p2, v4}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lgpq$1;->f:Lgpq;

    invoke-static {v0}, Lgpq;->a(Lgpq;)Lfp;

    move-result-object v0

    iget-wide v2, p0, Lgpq$1;->a:J

    .line 1096
    invoke-virtual {v0, v2, v3, v4}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 149
    check-cast v6, Lgoh;

    .line 151
    .local v6, "model":Lgoh;
    iget-object v0, p0, Lgpq$1;->f:Lgpq;

    iget-object v1, p0, Lgpq$1;->b:Landroid/content/Context;

    iget-wide v2, p0, Lgpq$1;->a:J

    iget-wide v4, p0, Lgpq$1;->c:J

    iget-object v9, p0, Lgpq$1;->d:Lcma;

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v9}, Lgpq;->a(Lgpq;Landroid/content/Context;JJLgoh;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 152
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 143
    return-void
.end method
