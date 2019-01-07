.class final Lfxa$11;
.super Ljava/lang/Object;
.source "NameManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxa;->b(Ljava/lang/String;JJLfxa$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lckl;

.field final synthetic d:Lfxa$a;

.field final synthetic e:Lfxa;


# direct methods
.method constructor <init>(Lfxa;JJLckl;Lfxa$a;)V
    .locals 0
    .param p1, "this$0"    # Lfxa;

    .prologue
    .line 504
    iput-object p1, p0, Lfxa$11;->e:Lfxa;

    iput-wide p2, p0, Lfxa$11;->a:J

    iput-wide p4, p0, Lfxa$11;->b:J

    iput-object p6, p0, Lfxa$11;->c:Lckl;

    iput-object p7, p0, Lfxa$11;->d:Lfxa$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 507
    iget-wide v4, p0, Lfxa$11;->a:J

    iget-wide v6, p0, Lfxa$11;->b:J

    invoke-static {v4, v5, v6, v7}, Lfbm;->c(JJ)Lfrw;

    move-result-object v0

    .line 508
    .local v0, "nameObject":Lfrw;
    if-eqz v0, :cond_2

    .line 509
    iget-object v4, p0, Lfxa$11;->c:Lckl;

    iget-object v5, v0, Lfrw;->c:Ljava/lang/String;

    .line 1043
    iput-object v5, v4, Lckl;->d:Ljava/lang/String;

    .line 510
    iget-object v4, v0, Lfrw;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 511
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v4

    iget-object v5, v0, Lfrw;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lfrw;->e:Ljava/lang/String;

    .line 512
    new-array v4, v9, [Lfrw;

    aput-object v0, v4, v8

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lfbm;->a(Ljava/util/List;)V

    .line 516
    :goto_0
    iget-object v4, p0, Lfxa$11;->c:Lckl;

    iget-object v5, v0, Lfrw;->e:Ljava/lang/String;

    .line 1051
    iput-object v5, v4, Lckl;->e:Ljava/lang/String;

    .line 517
    iget-object v4, p0, Lfxa$11;->d:Lfxa$a;

    if-eqz v4, :cond_0

    .line 518
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lfxa$11$1;

    invoke-direct {v5, p0}, Lfxa$11$1;-><init>(Lfxa$11;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 607
    :cond_0
    :goto_1
    return-void

    .line 514
    :cond_1
    iget-wide v4, p0, Lfxa$11;->a:J

    iget-wide v6, p0, Lfxa$11;->b:J

    invoke-static {v4, v5, v6, v7, v0}, Lfbm;->a(JJLfrw;)V

    goto :goto_0

    .line 528
    :cond_2
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_only_fetch_employee_info_when_type_is_0"

    .line 1083
    invoke-virtual {v4, v5, v9}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 528
    if-eqz v4, :cond_3

    .line 529
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-wide v6, p0, Lfxa$11;->b:J

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    .line 530
    .local v3, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v3, :cond_3

    iget v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    if-eqz v4, :cond_3

    .line 532
    iget-object v4, p0, Lfxa$11;->d:Lfxa$a;

    if-eqz v4, :cond_0

    .line 533
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lfxa$11$2;

    invoke-direct {v5, p0}, Lfxa$11$2;-><init>(Lfxa$11;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 544
    .end local v3    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    new-instance v1, Lfxa$11$3;

    invoke-direct {v1, p0}, Lfxa$11$3;-><init>(Lfxa$11;)V

    .line 605
    .local v1, "rpcRequestCallback":Lor;, "Lor<Lcgc;Lcgc;>;"
    const-class v4, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 606
    .local v2, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    iget-wide v4, p0, Lfxa$11;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v6, p0, Lfxa$11;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v4, v5, v6, v1}, Lcom/alibaba/android/user/idl/services/ContactIService;->getUserEmployeeInfo(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Liyv;)V

    goto :goto_1
.end method
