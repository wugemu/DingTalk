.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Lcpi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 1964
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 9
    .param p1, "granted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 1967
    const/4 v1, 0x0

    .line 1968
    .local v1, "iavSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1969
    if-eqz p1, :cond_5

    .line 1970
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Make call to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->O(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Liee;->b(Ljava/lang/String;)V

    .line 1973
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->P(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Liee;->c(Ljava/lang/String;)V

    .line 1974
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->BIZ_CALL:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    invoke-interface {v4, v5}, Liee;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;)V

    .line 1975
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->Q(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Liee;->d(Ljava/lang/String;)V

    .line 1977
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->R(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1979
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->S(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Liee;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    new-instance v3, Lied$a;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lied$a;-><init>(Ljava/lang/String;)V

    .line 1981
    .local v3, "request":Lied$a;
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->x(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lied$a;->b:Ljava/lang/String;

    .line 1982
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->S(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lied$a;->c:Ljava/lang/String;

    .line 1983
    invoke-static {}, Lewx;->i()Z

    move-result v4

    iput-boolean v4, v3, Lied$a;->e:Z

    .line 1984
    iput-boolean v8, v3, Lied$a;->d:Z

    .line 1985
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v4

    invoke-interface {v4, v3}, Liee;->a(Lied$a;)I

    move-result v2

    .line 1998
    .local v2, "nRet":I
    :goto_0
    if-eqz v2, :cond_4

    .line 1999
    const/4 v1, 0x0

    .line 2012
    .end local v2    # "nRet":I
    .end local v3    # "request":Lied$a;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->a:Lcma;

    if-eqz v4, :cond_1

    .line 2013
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->a:Lcma;

    invoke-interface {v4, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2015
    :cond_1
    return-void

    .line 1987
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->S(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v0

    .line 1988
    .local v0, "extraMsg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1989
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "n_"

    aput-object v6, v4, v5

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1991
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Liee;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    new-instance v3, Lied$a;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lied$a;-><init>(Ljava/lang/String;)V

    .line 1994
    .restart local v3    # "request":Lied$a;
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->x(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lied$a;->b:Ljava/lang/String;

    .line 1995
    invoke-static {}, Lewx;->i()Z

    move-result v4

    iput-boolean v4, v3, Lied$a;->e:Z

    .line 1996
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v4

    invoke-interface {v4, v3}, Liee;->a(Lied$a;)I

    move-result v2

    .restart local v2    # "nRet":I
    goto :goto_0

    .line 2001
    .end local v0    # "extraMsg":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Liee;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v1

    .line 2003
    goto :goto_1

    .line 2005
    .end local v2    # "nRet":I
    .end local v3    # "request":Lied$a;
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v4

    invoke-interface {v4}, Liee;->a()Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v1

    .line 2006
    sget-object v4, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->HOLD:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-interface {v1, v4}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 2008
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Mic permission denied"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->I(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    goto/16 :goto_1
.end method
