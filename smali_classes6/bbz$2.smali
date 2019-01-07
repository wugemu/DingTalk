.class final Lbbz$2;
.super Ljava/lang/Object;
.source "CommentDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbz;->a(Lcom/alibaba/android/ding/base/objects/CommentObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/CommentObject;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbz;


# direct methods
.method constructor <init>(Lbbz;Lcom/alibaba/android/ding/base/objects/CommentObject;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbz;

    .prologue
    .line 60
    iput-object p1, p0, Lbbz$2;->c:Lbbz;

    iput-object p2, p0, Lbbz$2;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

    iput-object p3, p0, Lbbz$2;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lbbz$2;->c:Lbbz;

    invoke-static {v0}, Lbbz;->a(Lbbz;)Lbby;

    move-result-object v0

    iget-object v2, p0, Lbbz$2;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

    iget-object v1, p0, Lbbz$2;->b:Lcma;

    .line 1094
    iget-object v3, v0, Lbby;->a:Lbca;

    new-instance v4, Lbby$2;

    invoke-direct {v4, v0, v1}, Lbby$2;-><init>(Lbby;Lcma;)V

    .line 2100
    if-nez v2, :cond_0

    .line 2102
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "commentObject is null"

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    const-string/jumbo v0, "sendCommentText failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "commentObject is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    :goto_0
    return-void

    .line 2107
    :cond_0
    new-instance v5, Lbca$4;

    invoke-direct {v5, v3, v4}, Lbca$4;-><init>(Lbca;Lcma;)V

    .line 2123
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 3112
    new-instance v4, Lazk;

    invoke-direct {v4}, Lazk;-><init>()V

    .line 3113
    iget-wide v6, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lazk;->a:Ljava/lang/Long;

    .line 3114
    iget-wide v6, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lazk;->b:Ljava/lang/Long;

    .line 3115
    new-instance v1, Lazu;

    invoke-direct {v1}, Lazu;-><init>()V

    iput-object v1, v4, Lazk;->c:Lazu;

    .line 3116
    iget-object v1, v4, Lazk;->c:Lazu;

    iget-wide v6, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v1, Lazu;->a:Ljava/lang/Long;

    .line 3117
    iget-wide v6, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lazk;->e:Ljava/lang/Long;

    .line 3118
    new-instance v1, Lazh;

    invoke-direct {v1}, Lazh;-><init>()V

    iput-object v1, v4, Lazk;->d:Lazh;

    .line 3119
    iget-object v1, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    if-eqz v1, :cond_1

    .line 3120
    iget-object v1, v4, Lazk;->d:Lazh;

    iget-object v6, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/CommentContent;->g:Ljava/util/Map;

    iput-object v6, v1, Lazh;->d:Ljava/util/Map;

    .line 3122
    :cond_1
    iget-object v1, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    if-eqz v1, :cond_2

    iget-object v1, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/CommentContent;->f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    sget-object v6, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Text:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    if-ne v1, v6, :cond_2

    .line 3123
    iget-object v1, v4, Lazk;->d:Lazh;

    sget-object v6, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Text:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Lazh;->a:Ljava/lang/Integer;

    .line 3124
    iget-object v1, v4, Lazk;->d:Lazh;

    new-instance v6, Lazs;

    invoke-direct {v6}, Lazs;-><init>()V

    iput-object v6, v1, Lazh;->b:Lazs;

    .line 3125
    iget-object v1, v4, Lazk;->d:Lazh;

    iget-object v6, v1, Lazh;->b:Lazs;

    iget-object v1, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    check-cast v1, Layz;

    iget-object v1, v1, Layz;->a:Ljava/lang/String;

    iput-object v1, v6, Lazs;->a:Ljava/lang/String;

    .line 3127
    :cond_2
    iget v1, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v4, Lazk;->h:Ljava/lang/Integer;

    .line 3128
    iget-object v1, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->i:[J

    if-eqz v1, :cond_4

    iget-object v1, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->i:[J

    array-length v1, v1

    if-lez v1, :cond_4

    .line 3129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v4, Lazk;->i:Ljava/util/List;

    .line 3130
    iget-object v6, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->i:[J

    array-length v7, v6

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_4

    aget-wide v8, v6, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 3131
    if-eqz v8, :cond_3

    .line 3132
    iget-object v9, v4, Lazk;->i:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3130
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3136
    :cond_4
    iget-object v1, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->j:Ljava/util/List;

    iput-object v1, v4, Lazk;->j:Ljava/util/List;

    .line 3137
    iget-object v1, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->l:Ljava/lang/String;

    iput-object v1, v4, Lazk;->l:Ljava/lang/String;

    .line 3138
    iget-object v1, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->m:Ljava/util/List;

    iput-object v1, v4, Lazk;->m:Ljava/util/List;

    .line 3139
    iget-boolean v1, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v4, Lazk;->n:Ljava/lang/Boolean;

    .line 3140
    iget-wide v6, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->o:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v4, Lazk;->o:Ljava/lang/Double;

    .line 3141
    iget-boolean v1, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->p:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v4, Lazk;->p:Ljava/lang/Boolean;

    .line 3142
    iget v1, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v4, Lazk;->q:Ljava/lang/Integer;

    .line 3143
    iget-object v1, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->r:Ljava/lang/String;

    iput-object v1, v4, Lazk;->r:Ljava/lang/String;

    .line 3144
    iget-boolean v1, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->s:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v4, Lazk;->s:Ljava/lang/Boolean;

    .line 2124
    new-instance v1, Lbca$5;

    invoke-direct {v1, v3, v5}, Lbca$5;-><init>(Lbca;Lcmi;)V

    invoke-interface {v0, v4, v1}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->sendDingComment(Lazk;Liyv;)V

    goto/16 :goto_0
.end method
