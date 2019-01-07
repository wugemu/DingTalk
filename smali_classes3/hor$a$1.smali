.class final Lhor$a$1;
.super Lcmi;
.source "CalendarWidgetPresent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhor$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhjo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhor$a;


# direct methods
.method constructor <init>(Lhor$a;)V
    .locals 0
    .param p1, "this$1"    # Lhor$a;

    .prologue
    .line 138
    iput-object p1, p0, Lhor$a$1;->a:Lhor$a;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 165
    const-string/jumbo v0, "SW"

    const-string/jumbo v1, "uploadLocByBeacon"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "uploadLocByBeacon exception "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 166
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 138
    check-cast p1, Lhjo;

    .line 1141
    if-eqz p1, :cond_3

    iget-object v0, p1, Lhjo;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1143
    iget-object v0, p1, Lhjo;->b:Ljava/util/List;

    .line 1144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhjm;

    .line 2025
    if-nez v0, :cond_1

    .line 2026
    const/4 v0, 0x0

    .line 1148
    :goto_1
    if-eqz v0, :cond_0

    .line 1149
    iget-object v1, p0, Lhor$a$1;->a:Lhor$a;

    iget-object v1, v1, Lhor$a;->a:Lhor;

    .line 5229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 5230
    iget-wide v4, v0, Lhkm;->a:J

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 5232
    new-instance v3, Lckq;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    .line 5233
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {v3, v4, v5, v1}, Lckq;-><init>(III)V

    .line 1150
    iget-object v1, p0, Lhor$a$1;->a:Lhor$a;

    iget-object v1, v1, Lhor$a;->a:Lhor;

    .line 6034
    iget-object v1, v1, Lhor;->a:Lhfn;

    .line 7025
    invoke-static {v3}, Lhfn;->b(Lckq;)Ljava/lang/String;

    move-result-object v3

    .line 7037
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7040
    if-eqz v0, :cond_0

    .line 7043
    invoke-virtual {v1, v3, v0}, Lhfn;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2029
    :cond_1
    new-instance v1, Lhkm;

    invoke-direct {v1}, Lhkm;-><init>()V

    .line 2030
    iget-object v3, v0, Lhjm;->a:Ljava/lang/Long;

    .line 2044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 2030
    iput-wide v4, v1, Lhkm;->a:J

    .line 2031
    iget-object v3, v0, Lhjm;->b:Ljava/lang/Integer;

    .line 3033
    invoke-static {v3, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 2031
    iput v3, v1, Lhkm;->b:I

    .line 2032
    iget-object v3, v0, Lhjm;->c:Ljava/lang/Integer;

    .line 4033
    invoke-static {v3, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 2032
    iput v3, v1, Lhkm;->c:I

    .line 2033
    iget-object v3, v0, Lhjm;->d:Ljava/lang/String;

    iput-object v3, v1, Lhkm;->d:Ljava/lang/String;

    .line 2034
    iget-object v3, v0, Lhjm;->e:Ljava/lang/String;

    iput-object v3, v1, Lhkm;->e:Ljava/lang/String;

    .line 2035
    iget-object v0, v0, Lhjm;->f:Ljava/lang/Integer;

    .line 5033
    invoke-static {v0, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 2035
    iput v0, v1, Lhkm;->f:I

    move-object v0, v1

    .line 2037
    goto :goto_1

    .line 1155
    :cond_2
    iget-object v0, p0, Lhor$a$1;->a:Lhor$a;

    invoke-static {v0}, Lhor$a;->a(Lhor$a;)Lhoq$a;

    move-result-object v0

    invoke-interface {v0}, Lhoq$a;->c()V

    .line 138
    :cond_3
    return-void
.end method
