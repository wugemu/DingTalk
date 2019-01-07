.class public final Lbbp$97;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbeu;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbeu;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 913
    iput-object p1, p0, Lbbp$97;->c:Lbbp;

    iput-object p2, p0, Lbbp$97;->a:Lbeu;

    iput-object p3, p0, Lbbp$97;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 916
    iget-object v0, p0, Lbbp$97;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v2, p0, Lbbp$97;->a:Lbeu;

    iget-object v1, p0, Lbbp$97;->b:Lcma;

    .line 4341
    iget-object v3, v0, Lbbo;->h:Lbbk;

    new-instance v4, Lbbo$32;

    invoke-direct {v4, v0, v2, v1}, Lbbo$32;-><init>(Lbbo;Lbeu;Lcma;)V

    .line 4874
    if-nez v2, :cond_0

    .line 4876
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4878
    const-string/jumbo v0, "updateEventsWrapper failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "updateObject is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4879
    :goto_0
    return-void

    .line 5155
    :cond_0
    const/4 v0, 0x0

    .line 5156
    if-eqz v2, :cond_3

    .line 5157
    new-instance v1, Lbco;

    invoke-direct {v1}, Lbco;-><init>()V

    .line 5158
    iget-wide v6, v2, Lbeu;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lbco;->a:Ljava/lang/Long;

    .line 5159
    iget-wide v6, v2, Lbeu;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lbco;->b:Ljava/lang/Long;

    .line 5160
    iget-object v0, v2, Lbeu;->c:Ljava/lang/String;

    iput-object v0, v1, Lbco;->c:Ljava/lang/String;

    .line 5161
    iget-wide v6, v2, Lbeu;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lbco;->d:Ljava/lang/Long;

    .line 5162
    iget-wide v6, v2, Lbeu;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lbco;->e:Ljava/lang/Long;

    .line 5163
    iget-object v0, v2, Lbeu;->f:Ljava/lang/String;

    iput-object v0, v1, Lbco;->f:Ljava/lang/String;

    .line 5164
    iget-object v0, v2, Lbeu;->g:Ljava/util/List;

    iput-object v0, v1, Lbco;->g:Ljava/util/List;

    .line 5165
    iget v0, v2, Lbeu;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lbco;->h:Ljava/lang/Integer;

    .line 5166
    iget-wide v6, v2, Lbeu;->k:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lbco;->k:Ljava/lang/Long;

    .line 5167
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5168
    iget-object v0, v2, Lbeu;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 5169
    iget-object v0, v2, Lbeu;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 5170
    if-eqz v0, :cond_1

    .line 5171
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->toIDLModel()Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5175
    :cond_2
    iput-object v5, v1, Lbco;->i:Ljava/util/List;

    .line 5176
    iget-object v0, v2, Lbeu;->j:Ljava/util/List;

    iput-object v0, v1, Lbco;->j:Ljava/util/List;

    .line 5177
    iget-wide v6, v2, Lbeu;->l:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lbco;->l:Ljava/lang/Long;

    .line 5178
    iget-wide v6, v2, Lbeu;->m:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lbco;->m:Ljava/lang/Long;

    .line 5179
    iget-boolean v0, v2, Lbeu;->n:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lbco;->o:Ljava/lang/Boolean;

    .line 5180
    iget v0, v2, Lbeu;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lbco;->p:Ljava/lang/Integer;

    .line 5181
    iget-object v0, v2, Lbeu;->p:Ljava/util/Map;

    iput-object v0, v1, Lbco;->q:Ljava/util/Map;

    .line 5182
    iget-object v0, v2, Lbeu;->q:Ljava/util/List;

    iput-object v0, v1, Lbco;->r:Ljava/util/List;

    .line 5183
    iget-object v0, v2, Lbeu;->r:Ljava/lang/String;

    iput-object v0, v1, Lbco;->s:Ljava/lang/String;

    .line 5184
    iget v0, v2, Lbeu;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lbco;->t:Ljava/lang/Integer;

    .line 5185
    iget-object v0, v2, Lbeu;->t:Ljava/lang/String;

    iput-object v0, v1, Lbco;->u:Ljava/lang/String;

    .line 4884
    :goto_2
    new-instance v2, Lbbk$44;

    invoke-direct {v2, v3, v4}, Lbbk$44;-><init>(Lbbk;Lcma;)V

    .line 4901
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "IDLDingMeetingService updateMeeting."

    aput-object v5, v0, v4

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 4902
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;

    .line 4903
    new-instance v4, Lbbk$45;

    invoke-direct {v4, v3, v2}, Lbbk$45;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v1, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingMeetingService;->updateMeeting(Lbco;Liyv;)V

    goto/16 :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_2
.end method
