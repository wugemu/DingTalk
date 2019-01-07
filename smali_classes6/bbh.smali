.class public final Lbbh;
.super Ljava/lang/Object;
.source "SubTaskListPresenter.java"

# interfaces
.implements Lbbg$a;


# instance fields
.field a:Lbbg$b;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field d:Z

.field private e:Landroid/app/Activity;

.field private f:Z

.field private g:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbbg$b;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lbbg$b;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbh;->b:Ljava/util/List;

    .line 43
    new-instance v0, Lbbh$1;

    invoke-direct {v0, p0}, Lbbh$1;-><init>(Lbbh;)V

    iput-object v0, p0, Lbbh;->g:Lckm$a;

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lbbh;->e:Landroid/app/Activity;

    .line 59
    if-nez p2, :cond_1

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "view cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 64
    const-string/jumbo v0, "[SelectUserPresenter]init failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "intent is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 1085
    :goto_0
    return-void

    .line 69
    :cond_2
    iput-object p2, p0, Lbbh;->a:Lbbg$b;

    .line 70
    iget-object v0, p0, Lbbh;->a:Lbbg$b;

    invoke-interface {v0, p0}, Lbbg$b;->setPresenter(Lcjd;)V

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1076
    const-string/jumbo v1, "ding_id"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1077
    const-string/jumbo v2, "intent_key_ding_is_sender"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbbh;->f:Z

    .line 1109
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1082
    iput-wide v0, p0, Lbbh;->c:J

    .line 1083
    iget-wide v0, p0, Lbbh;->c:J

    invoke-static {v0, v1}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1084
    const-string/jumbo v0, "[SelectUserPresenter]init failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "parentDingId is invalidate"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lbbh;->a:Lbbg$b;

    invoke-interface {v0}, Lbbg$b;->a()V

    goto :goto_0

    .line 1171
    :cond_3
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-wide v2, p0, Lbbh;->c:J

    iget-object v1, p0, Lbbh;->g:Lckm$a;

    invoke-virtual {v0, v2, v3, v1}, Lbbp;->a(JLckm$a;)V

    .line 2094
    new-instance v0, Lbbh$2;

    invoke-direct {v0, p0}, Lbbh$2;-><init>(Lbbh;)V

    .line 2125
    iget-object v1, p0, Lbbh;->e:Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 2126
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lbbh;->e:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 2128
    :cond_4
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-wide v2, p0, Lbbh;->c:J

    invoke-virtual {v1, v2, v3, v0}, Lbbp;->a(JLcom/alibaba/wukong/Callback;)V

    .line 1089
    iget-object v0, p0, Lbbh;->a:Lbbg$b;

    invoke-interface {v0}, Lbbg$b;->e()V

    goto :goto_0
.end method

.method static synthetic a(Lbbh;I)V
    .locals 8
    .param p0, "x0"    # Lbbh;
    .param p1, "x1"    # I

    .prologue
    .line 33
    .line 4132
    new-instance v7, Lbbh$3;

    invoke-direct {v7, p0, p1}, Lbbh$3;-><init>(Lbbh;I)V

    .line 4164
    iget-object v0, p0, Lbbh;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4165
    const-class v0, Lcma;

    iget-object v1, p0, Lbbh;->e:Landroid/app/Activity;

    invoke-static {v7, v0, v1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    move-object v7, v0

    .line 4167
    :cond_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-wide v2, p0, Lbbh;->c:J

    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lbbp;->a(JJILcma;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 180
    iget-boolean v1, p0, Lbbh;->d:Z

    if-eqz v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 183
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbbh;->d:Z

    .line 184
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    .line 185
    .local v4, "cursor":J
    iget-object v1, p0, Lbbh;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    iget-object v1, p0, Lbbh;->b:Ljava/util/List;

    iget-object v2, p0, Lbbh;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 187
    .local v0, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v4

    .line 2195
    .end local v0    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_1
    new-instance v1, Lbbh$4;

    invoke-direct {v1, p0, v4, v5}, Lbbh$4;-><init>(Lbbh;J)V

    const-class v2, Lcma;

    iget-object v3, p0, Lbbh;->e:Landroid/app/Activity;

    invoke-static {v1, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    .line 2227
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-wide v2, p0, Lbbh;->c:J

    const/16 v6, 0x14

    invoke-virtual/range {v1 .. v7}, Lbbp;->a(JJILcma;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 258
    iget-wide v0, p0, Lbbh;->c:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lbbh;->f:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lbbh;->e:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3}, Lbjx;->a(Ljava/lang/String;ZILandroid/app/Activity;)V

    .line 259
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public final i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 245
    .line 3175
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-wide v2, p0, Lbbh;->c:J

    iget-object v1, p0, Lbbh;->g:Lckm$a;

    invoke-virtual {v0, v2, v3, v1}, Lbbp;->b(JLckm$a;)V

    .line 246
    return-void
.end method
