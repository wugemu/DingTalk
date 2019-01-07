.class public final Lerf;
.super Lcom/alibaba/android/search/presenter/MsgSearchPresenter;
.source "JournalMsgPresenter.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerk$b;Z)V
    .locals 0
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lerk$b;
    .param p3, "isMerge"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerk$b;Z)V

    .line 20
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;JJLjava/lang/String;Ljava/lang/String;IILcmb;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p4, "fromTime"    # J
    .param p6, "endTime"    # J
    .param p8, "keyword"    # Ljava/lang/String;
    .param p9, "cursor"    # Ljava/lang/String;
    .param p10, "size"    # I
    .param p11, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcmb",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p12, "apiEventListener":Lcmb;, "Lcmb<Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;>;"
    new-instance v2, Lepw$a;

    invoke-direct {v2}, Lepw$a;-><init>()V

    .line 1027
    iget-object v3, v2, Lepw$a;->a:Lepw;

    .line 2007
    iput-object p1, v3, Lepw;->a:Ljava/lang/String;

    .line 2032
    iget-object v3, v2, Lepw$a;->a:Lepw;

    .line 3007
    iput-object p2, v3, Lepw;->b:Ljava/util/List;

    .line 3042
    iget-object v3, v2, Lepw$a;->a:Lepw;

    .line 4007
    iput-object p3, v3, Lepw;->c:Ljava/util/List;

    .line 4047
    iget-object v3, v2, Lepw$a;->a:Lepw;

    .line 5007
    iput-wide p4, v3, Lepw;->d:J

    .line 43
    const-wide/16 v4, 0x0

    .line 5052
    iget-object v3, v2, Lepw$a;->a:Lepw;

    .line 6007
    iput-wide v4, v3, Lepw;->e:J

    .line 6062
    iget-object v3, v2, Lepw$a;->a:Lepw;

    .line 7007
    iput-object p9, v3, Lepw;->g:Ljava/lang/String;

    .line 45
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "300"

    .line 46
    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "301"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 7082
    iget-object v4, v2, Lepw$a;->a:Lepw;

    .line 8007
    iput-object v3, v4, Lepw;->j:Ljava/util/List;

    .line 46
    const/16 v3, 0x14

    .line 8067
    iget-object v4, v2, Lepw$a;->a:Lepw;

    .line 9007
    iput v3, v4, Lepw;->h:I

    .line 9057
    iget-object v3, v2, Lepw$a;->a:Lepw;

    .line 10007
    iput-object p8, v3, Lepw;->f:Ljava/lang/String;

    .line 10072
    iget-object v3, v2, Lepw$a;->a:Lepw;

    .line 11007
    move/from16 v0, p11

    iput v0, v3, Lepw;->i:I

    .line 50
    .local v2, "builder":Lepw$a;
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v3

    .line 11087
    iget-object v4, v2, Lepw$a;->a:Lepw;

    .line 50
    move-object/from16 v0, p12

    invoke-interface {v3, v4, v0}, Lenb;->a(Lepw;Lcma;)V

    .line 51
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lerf;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final r()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-super {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r()V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lerf;->s:Z

    .line 29
    iget-object v0, p0, Lerf;->q:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lerf;->a(Ljava/util/List;)V

    goto :goto_0
.end method
