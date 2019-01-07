.class public final Laej;
.super Ljava/lang/Object;
.source "ReplyExpressionDataSource.java"

# interfaces
.implements Laek;
.implements Lael;


# static fields
.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laej;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Laee;

.field public c:Z

.field public d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laej;->g:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "accounName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Laej;->e:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laej;->a:Ljava/util/List;

    .line 41
    iput-object v1, p0, Laej;->b:Laee;

    .line 43
    iput-boolean v2, p0, Laej;->c:Z

    .line 45
    iput-object v1, p0, Laej;->d:Landroid/content/Context;

    .line 62
    iput-object p1, p0, Laej;->f:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static a(Ljava/lang/String;)Laej;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v1, Laej;->g:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laej;

    .line 53
    .local v0, "object":Laej;
    if-nez v0, :cond_0

    .line 54
    new-instance v0, Laej;

    .end local v0    # "object":Laej;
    invoke-direct {v0, p0}, Laej;-><init>(Ljava/lang/String;)V

    .line 55
    .restart local v0    # "object":Laej;
    sget-object v1, Laej;->g:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    return-object v0
.end method

.method static synthetic a(Laej;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Laej;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Laej;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Laej;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Laej;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 34
    iput-object p1, p0, Laej;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Laej;)V
    .locals 3
    .param p0, "x0"    # Laej;

    .prologue
    .line 34
    .line 2115
    iget-object v0, p0, Laej;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laej;->a:Ljava/util/List;

    .line 2119
    :cond_0
    iget-object v0, p0, Laej;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laej;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2120
    const-string/jumbo v0, "loadDefaultExpressions, expressionId and size is empty"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 2122
    iget-object v0, p0, Laej;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 2123
    iget-object v0, p0, Laej;->a:Ljava/util/List;

    iget-object v1, p0, Laej;->d:Landroid/content/Context;

    sget v2, Laxo$i;->dt_mail_common_expression1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2124
    iget-object v0, p0, Laej;->a:Ljava/util/List;

    iget-object v1, p0, Laej;->d:Landroid/content/Context;

    sget v2, Laxo$i;->dt_mail_common_expression2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2125
    iget-object v0, p0, Laej;->a:Ljava/util/List;

    iget-object v1, p0, Laej;->d:Landroid/content/Context;

    sget v2, Laxo$i;->dt_mail_common_expression3:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2126
    iget-object v0, p0, Laej;->a:Ljava/util/List;

    iget-object v1, p0, Laej;->d:Landroid/content/Context;

    sget v2, Laxo$i;->dt_mail_common_expression4:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_1
    return-void
.end method

.method static synthetic a(Laej;Z)V
    .locals 1
    .param p0, "x0"    # Laej;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Laej;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "saveVersionId"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 241
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Laej$3;

    invoke-direct {v1, p0, p1}, Laej$3;-><init>(Laej;Z)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 253
    return-void
.end method

.method static synthetic b(Laej;)V
    .locals 0
    .param p0, "x0"    # Laej;

    .prologue
    .line 34
    invoke-virtual {p0}, Laej;->b()V

    return-void
.end method

.method static synthetic c(Laej;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Laej;

    .prologue
    .line 34
    invoke-direct {p0}, Laej;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Laej;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Laej;

    .prologue
    .line 34
    iget-object v0, p0, Laej;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Laej;)Laee;
    .locals 1
    .param p0, "x0"    # Laej;

    .prologue
    .line 34
    iget-object v0, p0, Laej;->b:Laee;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 232
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Laej;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "common_experssions"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 236
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Laej;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "expressions_version"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Laej;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Laej;

    .prologue
    .line 34
    iget-object v0, p0, Laej;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Laej;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Laej;

    .prologue
    .line 34
    invoke-direct {p0}, Laej;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 75
    .line 1206
    invoke-direct {p0}, Laej;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1207
    invoke-direct {p0}, Laej;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Laej;->e:Ljava/lang/String;

    .line 1209
    iget-object v2, p0, Laej;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1210
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "expressionData, load version id:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Laej;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lafg;->a(Ljava/lang/String;)V

    .line 1213
    :cond_0
    if-eqz v1, :cond_1

    .line 1215
    :try_start_0
    const-class v2, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcor;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1216
    if-eqz v1, :cond_3

    .line 1217
    iput-object v1, p0, Laej;->a:Ljava/util/List;

    .line 1222
    :goto_0
    invoke-virtual {p0}, Laej;->b()V
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :cond_1
    :goto_1
    const-class v1, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 79
    .local v0, "service":Lcom/alibaba/alimei/idl/service/CMailIService;
    iget-object v1, p0, Laej;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 80
    iget-object v1, p0, Laej;->f:Ljava/lang/String;

    iget-object v2, p0, Laej;->e:Ljava/lang/String;

    new-instance v3, Laej$1;

    invoke-direct {v3, p0}, Laej$1;-><init>(Laej;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/alimei/idl/service/CMailIService;->queryQuickReply(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 111
    :cond_2
    return-void

    .line 1219
    .end local v0    # "service":Lcom/alibaba/alimei/idl/service/CMailIService;
    :cond_3
    :try_start_1
    const-string/jumbo v1, "local expression parse failure is null"

    invoke-static {v1}, Lafg;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1223
    :catch_0
    move-exception v1

    .line 1224
    const-string/jumbo v2, "local expression parse failure:"

    invoke-static {v2, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1225
    :catch_1
    move-exception v1

    .line 1226
    const-string/jumbo v2, "local expression load failure:"

    invoke-static {v2, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Laej;->b:Laee;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Laej;->b:Laee;

    iget-object v1, p0, Laej;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Laee;->a(Ljava/util/List;)V

    .line 136
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "expression"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 145
    iget-object v0, p0, Laej;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Laej;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 147
    iget-object v0, p0, Laej;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 152
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Laej;->c:Z

    .line 153
    invoke-virtual {p0}, Laej;->d()V

    .line 154
    invoke-virtual {p0}, Laej;->b()V

    .line 156
    :cond_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Laej;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Laej;->a:Ljava/util/List;

    return-object v0
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 177
    iget-boolean v1, p0, Laej;->c:Z

    if-eqz v1, :cond_0

    .line 178
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Laej;->a(Z)V

    .line 180
    const-class v1, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 181
    .local v0, "service":Lcom/alibaba/alimei/idl/service/CMailIService;
    iget-object v1, p0, Laej;->f:Ljava/lang/String;

    iget-object v2, p0, Laej;->a:Ljava/util/List;

    new-instance v3, Laej$2;

    invoke-direct {v3, p0}, Laej$2;-><init>(Laej;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/alimei/idl/service/CMailIService;->saveQuickReply(Ljava/lang/String;Ljava/util/List;Liyv;)V

    .line 202
    .end local v0    # "service":Lcom/alibaba/alimei/idl/service/CMailIService;
    :cond_0
    return-void
.end method
