.class public final Leqy;
.super Leqq;
.source "ExternalContactOrgSearchPresenter.java"

# interfaces
.implements Leqx$a;


# instance fields
.field m:Ljava/lang/String;

.field n:Leqx$b;

.field private o:J

.field private p:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqx$b;J)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Leqx$b;
    .param p3, "orgId"    # J

    .prologue
    .line 46
    invoke-direct {p0}, Leqq;-><init>()V

    .line 40
    const/16 v0, 0x14

    iput v0, p0, Leqy;->p:I

    .line 47
    iput-object p1, p0, Leqy;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 48
    iput-object p2, p0, Leqy;->n:Leqx$b;

    .line 49
    iput-wide p3, p0, Leqy;->o:J

    .line 50
    iget-object v0, p0, Leqy;->n:Leqx$b;

    invoke-interface {v0, p0}, Leqx$b;->setPresenter(Lcjd;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqx$b;JI)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Leqx$b;
    .param p3, "orgId"    # J
    .param p5, "pageSize"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Leqy;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqx$b;J)V

    .line 55
    const/4 v0, 0x3

    iput v0, p0, Leqy;->p:I

    .line 56
    return-void
.end method

.method static synthetic a(Leqy;Lepr;)V
    .locals 6
    .param p0, "x0"    # Leqy;
    .param p1, "x1"    # Lepr;

    .prologue
    .line 35
    .line 1120
    if-eqz p1, :cond_0

    iget-object v0, p1, Lepr;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lepr;->a:Ljava/util/List;

    .line 1121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1122
    :cond_0
    iget-object v0, p0, Leqy;->n:Leqx$b;

    iget v1, p0, Leqy;->i:I

    iget-object v2, p0, Leqy;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Leqx$b;->b(ILjava/util/List;)V

    .line 1123
    :goto_0
    return-void

    .line 1126
    :cond_1
    iget v0, p1, Lepr;->b:I

    iput v0, p0, Leqy;->i:I

    .line 1128
    iget-object v0, p1, Lepr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lept;

    .line 1129
    if-eqz v0, :cond_2

    .line 2055
    sget-object v1, Leoc$a;->a:Leoc;

    .line 1133
    iget-wide v4, p0, Leqy;->o:J

    .line 2500
    if-nez v0, :cond_3

    .line 2501
    const/4 v0, 0x0

    .line 1134
    :goto_2
    iget v1, p0, Leqy;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Leqy;->h:I

    .line 1135
    iget-object v1, p0, Leqy;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2504
    :cond_3
    new-instance v1, Lcom/alibaba/android/search/model/ExternalContactOrgModel;

    invoke-direct {v1, v4, v5, v0}, Lcom/alibaba/android/search/model/ExternalContactOrgModel;-><init>(JLept;)V

    move-object v0, v1

    goto :goto_2

    .line 1138
    :cond_4
    iget-object v0, p0, Leqy;->n:Leqx$b;

    iget v1, p0, Leqy;->i:I

    iget-object v2, p0, Leqy;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Leqx$b;->b(ILjava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Leqy;->e:Ljava/lang/String;

    .line 61
    .local v0, "searchingKey":Ljava/lang/String;
    new-instance v8, Leqy$1;

    invoke-direct {v8, p0, v0}, Leqy$1;-><init>(Leqy;Ljava/lang/String;)V

    .line 111
    .local v8, "apiEventListener":Lcma;, "Lcma<Lepr;>;"
    iget-object v1, p0, Leqy;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    .line 112
    const-class v1, Lcma;

    iget-object v2, p0, Leqy;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v8, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "apiEventListener":Lcma;, "Lcma<Lepr;>;"
    check-cast v8, Lcma;

    .line 115
    .restart local v8    # "apiEventListener":Lcma;, "Lcma<Lepr;>;"
    :cond_0
    invoke-virtual {p0}, Leqy;->n()V

    .line 116
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v1

    const-string/jumbo v2, "0"

    iget-object v3, p0, Leqy;->e:Ljava/lang/String;

    iget-wide v4, p0, Leqy;->o:J

    iget-object v6, p0, Leqy;->m:Ljava/lang/String;

    iget v7, p0, Leqy;->p:I

    invoke-interface/range {v1 .. v8}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcma;)V

    .line 117
    return-void
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    invoke-super {p0}, Leqq;->d()V

    .line 150
    iget-object v0, p0, Leqy;->n:Leqx$b;

    iget v1, p0, Leqy;->i:I

    iget-object v2, p0, Leqy;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Leqx$b;->b(ILjava/util/List;)V

    .line 151
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Leqq;->m()V

    .line 144
    const-string/jumbo v0, "0"

    iput-object v0, p0, Leqy;->m:Ljava/lang/String;

    .line 145
    return-void
.end method

.method protected final o()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Leqy;->j:Z

    .line 156
    iget-object v0, p0, Leqy;->n:Leqx$b;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Leqy;->n:Leqx$b;

    iget v1, p0, Leqy;->i:I

    iget-object v2, p0, Leqy;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Leqx$b;->b(ILjava/util/List;)V

    .line 158
    iget-object v0, p0, Leqy;->n:Leqx$b;

    invoke-interface {v0}, Leqx$b;->H_()V

    .line 160
    :cond_0
    return-void
.end method
