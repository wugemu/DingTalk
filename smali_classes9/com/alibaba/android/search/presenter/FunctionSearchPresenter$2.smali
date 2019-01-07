.class final Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;
.super Ljava/lang/Object;
.source "FunctionSearchPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lepv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iput-object p2, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x50

    const/4 v2, 0x0

    .line 162
    check-cast p1, Lepv;

    .line 1186
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v3, v1, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MICRO_TEMPLATE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    iget-object v1, p1, Lepv;->a:Ljava/util/List;

    if-nez v1, :cond_4

    :cond_0
    move v1, v2

    .line 1187
    :goto_0
    if-nez p1, :cond_5

    :goto_1
    const/4 v5, 0x1

    .line 1186
    invoke-static {v3, v4, v1, v0, v5}, Letb;->a(Leoe;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1189
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1193
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1198
    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p1, Lepv;->d:Z

    if-nez v0, :cond_6

    .line 1199
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    sget-object v1, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;->None:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;

    .line 2061
    iput-object v1, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->m:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;

    .line 1200
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->g:I

    .line 1201
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    const-string/jumbo v1, "0"

    .line 3061
    iput-object v1, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->n:Ljava/lang/String;

    .line 1202
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->f:Z

    .line 1207
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a(Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;Lepv;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iput-boolean v2, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->j:Z

    .line 1212
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-boolean v0, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget v0, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->h:I

    if-le v0, v6, :cond_8

    .line 1213
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iput v2, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->h:I

    .line 1214
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->o()V

    .line 1218
    :cond_3
    :goto_3
    return-void

    .line 1186
    :cond_4
    iget-object v1, p1, Lepv;->a:Ljava/util/List;

    .line 1187
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lepv;->c:Ljava/lang/String;

    goto :goto_1

    .line 1204
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget v1, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->g:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->g:I

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    const/4 v1, 0x0

    .line 4061
    iput-object v1, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->n:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    :try_start_2
    const-string/jumbo v1, "searchFunctionFromSvr"

    invoke-static {v1, v0}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iput-boolean v2, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->j:Z

    .line 1212
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-boolean v0, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->f:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget v0, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->h:I

    if-le v0, v6, :cond_9

    .line 1213
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iput v2, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->h:I

    .line 1214
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->o()V

    goto :goto_3

    .line 1216
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a()V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a()V

    goto :goto_3

    .line 1211
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iput-boolean v2, v1, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->j:Z

    .line 1212
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-boolean v1, v1, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->f:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget v1, v1, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->h:I

    if-le v1, v6, :cond_b

    .line 1213
    :cond_a
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iput v2, v1, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->h:I

    .line 1214
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    invoke-virtual {v1}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->o()V

    .line 1216
    :goto_4
    throw v0

    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    invoke-virtual {v1}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a()V

    goto :goto_4
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    .line 1168
    iput-object p1, v0, Leoe;->i:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    .line 1176
    iput-object p2, v0, Leoe;->j:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MICRO_TEMPLATE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Letb;->a(Leoe;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$2;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->o()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 166
    return-void
.end method
