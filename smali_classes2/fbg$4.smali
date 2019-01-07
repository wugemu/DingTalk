.class final Lfbg$4;
.super Ljava/lang/Object;
.source "UserProfileImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbg;->a(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcma;

.field final synthetic c:Lfbg;


# direct methods
.method constructor <init>(Lfbg;JLcma;)V
    .locals 0
    .param p1, "this$0"    # Lfbg;

    .prologue
    .line 96
    iput-object p1, p0, Lfbg$4;->c:Lfbg;

    iput-wide p2, p0, Lfbg$4;->a:J

    iput-object p4, p0, Lfbg$4;->b:Lcma;

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
    .line 100
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v1

    iget-wide v2, p0, Lfbg$4;->a:J

    invoke-virtual {v1, v2, v3}, Lfbn;->a(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 101
    .local v0, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isStale()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const-string/jumbo v1, "UserProfileAPI"

    const-string/jumbo v2, "getUserProfile from local."

    invoke-static {v1, v2}, Los;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lfbg$4;->c:Lfbg;

    iget-object v2, p0, Lfbg$4;->b:Lcma;

    invoke-static {v1, v0, v2}, Lfbg;->a(Lfbg;Ljava/lang/Object;Lcma;)V

    .line 107
    :goto_0
    return-void

    .line 1656
    :cond_0
    sget-object v1, Lfbk$a;->a:Lfbk;

    .line 105
    iget-wide v2, p0, Lfbg$4;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lfbg$4;->b:Lcma;

    invoke-virtual {v1, v2, v3}, Lfbk;->a(Ljava/lang/Long;Lcma;)V

    goto :goto_0
.end method
