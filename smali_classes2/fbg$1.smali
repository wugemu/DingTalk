.class final Lfbg$1;
.super Ljava/lang/Object;
.source "UserProfileImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbg;->a(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:J

.field final synthetic c:Lfbg;


# direct methods
.method constructor <init>(Lfbg;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;J)V
    .locals 1
    .param p1, "this$0"    # Lfbg;

    .prologue
    .line 69
    iput-object p1, p0, Lfbg$1;->c:Lfbg;

    iput-object p2, p0, Lfbg$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-wide p3, p0, Lfbg$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Lfbg$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 74
    .local v0, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v1

    iget-wide v2, p0, Lfbg$1;->b:J

    invoke-virtual {v1, v2, v3}, Lfbn;->c(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 77
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isStale()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1656
    :cond_1
    sget-object v1, Lfbk$a;->a:Lfbk;

    .line 79
    iget-wide v2, p0, Lfbg$1;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lfbk;->a(Ljava/lang/Long;Lcma;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_2
    const-string/jumbo v1, "UserProfileAPI"

    const-string/jumbo v2, "getUserProfile from db."

    invoke-static {v1, v2}, Los;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
