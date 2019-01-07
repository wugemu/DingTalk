.class final Lahq$1;
.super Ljava/lang/Object;
.source "AbsUpdateCalendarTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahq;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lahq;


# direct methods
.method constructor <init>(Lahq;)V
    .locals 0
    .param p1, "this$0"    # Lahq;

    .prologue
    .line 882
    iput-object p1, p0, Lahq$1;->a:Lahq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upload calendar network exception---> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->e(Ljava/lang/String;)I

    .line 995
    iget-object v0, p0, Lahq$1;->a:Lahq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lahq;->a(Lahq;Z)Z

    .line 996
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 882
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upload calendar exception----> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->e(Ljava/lang/String;)I

    .line 989
    iget-object v0, p0, Lahq$1;->a:Lahq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lahq;->a(Lahq;Z)Z

    .line 990
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 882
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;

    .line 1885
    if-nez p1, :cond_1

    .line 1886
    const-string/jumbo v0, "upload calendar failed, result is null"

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    .line 1898
    :cond_0
    :goto_0
    return-void

    .line 1889
    :cond_1
    const-string/jumbo v0, "upload calendar success"

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    .line 1890
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;->getCalendarsResult()Ljava/util/List;

    move-result-object v3

    .line 1891
    if-nez v3, :cond_2

    .line 1892
    const-string/jumbo v0, "upload calendar failed, updateResult is null"

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 1895
    :cond_2
    iget-object v0, p0, Lahq$1;->a:Lahq;

    invoke-static {v0}, Lahq;->a(Lahq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1896
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upload size is not equals to result size form server, upload size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lahq$1;->a:Lahq;

    invoke-static {v1}, Lahq;->a(Lahq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", updateResult size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1897
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1896
    invoke-static {v0}, Lzb;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 1901
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1902
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    .line 1903
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleCalendarUpdateResult;

    .line 1904
    const/16 v1, 0xc8

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleCalendarUpdateResult;->getResultCode()I

    move-result v5

    if-ne v1, v5, :cond_c

    .line 1905
    iget-object v1, p0, Lahq$1;->a:Lahq;

    invoke-static {v1}, Lahq;->a(Lahq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahq$a;

    .line 1906
    iget v5, v1, Lahq$a;->a:I

    .line 1907
    iget-wide v6, v1, Lahq$a;->b:J

    .line 1908
    const/4 v8, 0x1

    if-eq v8, v5, :cond_4

    const/4 v8, 0x2

    if-eq v8, v5, :cond_4

    const/4 v8, 0x7

    if-ne v8, v5, :cond_b

    .line 1911
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleCalendarUpdateResult;->getItemId()Ljava/lang/String;

    move-result-object v8

    .line 1913
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v9, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    iget-object v10, p0, Lahq$1;->a:Lahq;

    invoke-static {v10}, Lahq;->b(Lahq;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Events"

    invoke-direct {v1, v9, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    const-string/jumbo v9, "original_id"

    invoke-virtual {v1, v9}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 1915
    const-string/jumbo v9, "original_sync_id"

    invoke-virtual {v1, v9}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 1916
    const-string/jumbo v9, "_sync_id"

    invoke-virtual {v1, v9}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 1917
    const-string/jumbo v9, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1919
    if-nez v1, :cond_6

    .line 1920
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "action = "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", returnCode = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1921
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleCalendarUpdateResult;->getResultCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", returnItemId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1922
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleCalendarUpdateResult;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1920
    invoke-static {v0}, Lzb;->e(Ljava/lang/String;)I

    .line 1902
    :cond_5
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 1926
    :cond_6
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    iget-object v9, p0, Lahq$1;->a:Lahq;

    invoke-static {v9}, Lahq;->b(Lahq;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Events"

    invoke-direct {v0, v5, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    iget-wide v10, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->original_id:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-gtz v5, :cond_7

    iget-object v5, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->original_sync_id:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1929
    :cond_7
    iget-object v5, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->original_sync_id:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1930
    const-string/jumbo v5, "original_sync_id"

    invoke-virtual {v0, v5, v8}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1933
    :cond_8
    iget-object v1, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_sync_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1934
    const-string/jumbo v1, "_sync_id"

    iget-object v5, p0, Lahq$1;->a:Lahq;

    .line 1935
    invoke-static {v5, v8}, Lahq;->a(Lahq;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1934
    invoke-virtual {v0, v1, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1944
    :cond_9
    :goto_3
    const-string/jumbo v1, "dirty"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1945
    const-string/jumbo v1, "sync_data8"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1946
    const-string/jumbo v1, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    goto :goto_2

    .line 1939
    :cond_a
    iget-object v1, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_sync_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1940
    const-string/jumbo v1, "_sync_id"

    invoke-virtual {v0, v1, v8}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 1948
    :cond_b
    iget v0, v1, Lahq$a;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1949
    new-instance v0, Lagp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lagp;-><init>(Z)V

    invoke-virtual {v0, v6, v7}, Lagp;->c(J)I

    goto/16 :goto_2

    .line 1951
    :cond_c
    const/16 v1, 0x4b2

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleCalendarUpdateResult;->getResultCode()I

    move-result v5

    if-ne v1, v5, :cond_10

    .line 1953
    iget-object v1, p0, Lahq$1;->a:Lahq;

    invoke-static {v1}, Lahq;->a(Lahq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahq$a;

    .line 1954
    iget v5, v1, Lahq$a;->a:I

    .line 1955
    iget-wide v6, v1, Lahq$a;->b:J

    .line 1956
    const/4 v8, 0x1

    if-eq v8, v5, :cond_d

    const/4 v8, 0x2

    if-eq v8, v5, :cond_d

    const/4 v8, 0x7

    if-ne v8, v5, :cond_f

    .line 1959
    :cond_d
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v8, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    iget-object v9, p0, Lahq$1;->a:Lahq;

    invoke-static {v9}, Lahq;->b(Lahq;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Events"

    invoke-direct {v1, v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    const-string/jumbo v8, "original_id"

    invoke-virtual {v1, v8}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 1961
    const-string/jumbo v8, "original_sync_id"

    invoke-virtual {v1, v8}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 1962
    const-string/jumbo v8, "_sync_id"

    invoke-virtual {v1, v8}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 1963
    const-string/jumbo v8, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1965
    if-nez v1, :cond_e

    .line 1966
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "action = "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", returnCode = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1967
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleCalendarUpdateResult;->getResultCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", returnItemId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1968
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleCalendarUpdateResult;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1966
    invoke-static {v0}, Lzb;->e(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1972
    :cond_e
    iget-object v0, p0, Lahq$1;->a:Lahq;

    invoke-static {v0, v6, v7}, Lahq;->a(Lahq;J)V

    goto/16 :goto_2

    .line 1973
    :cond_f
    iget v0, v1, Lahq$a;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1974
    new-instance v0, Lagp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lagp;-><init>(Z)V

    invoke-virtual {v0, v6, v7}, Lagp;->c(J)I

    goto/16 :goto_2

    .line 1977
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update calendar error, result = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->e(Ljava/lang/String;)I

    goto/16 :goto_2
.end method
