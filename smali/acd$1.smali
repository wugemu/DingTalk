.class final Lacd$1;
.super Lcmi;
.source "ConversationSendMailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Labv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lacd;


# direct methods
.method constructor <init>(Lacd;)V
    .locals 0
    .param p1, "this$0"    # Lacd;

    .prologue
    .line 69
    iput-object p1, p0, Lacd$1;->a:Lacd;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    const-string/jumbo v0, "getReceiverListByConversationId"

    invoke-static {v0, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    iget-object v0, p0, Lacd$1;->a:Lacd;

    .line 1027
    iget-object v0, v0, Lacd;->b:Lcma;

    .line 94
    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lacd$1;->a:Lacd;

    .line 2027
    iget-object v0, v0, Lacd;->b:Lcma;

    .line 95
    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 69
    check-cast p1, Labv;

    .line 2072
    if-eqz p1, :cond_3

    .line 2073
    iget-object v0, p0, Lacd$1;->a:Lacd;

    iget-object v1, p1, Labv;->a:Ljava/lang/String;

    .line 3027
    iput-object v1, v0, Lacd;->d:Ljava/lang/String;

    .line 2074
    iget-object v0, p1, Labv;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2075
    iget-object v0, p1, Labv;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 2076
    iget-object v0, p0, Lacd$1;->a:Lacd;

    iget-object v1, p0, Lacd$1;->a:Lacd;

    .line 4027
    iget v1, v1, Lacd;->c:I

    .line 2076
    add-int/lit16 v1, v1, 0xc8

    .line 5027
    iput v1, v0, Lacd;->c:I

    .line 2077
    iget-object v0, p0, Lacd$1;->a:Lacd;

    .line 6027
    const/4 v1, 0x1

    iput-boolean v1, v0, Lacd;->e:Z

    .line 2079
    :cond_0
    iget-object v0, p1, Labv;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labw;

    .line 2080
    if-eqz v0, :cond_1

    .line 2081
    iget-object v2, v0, Labw;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2082
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lacd$1;->a:Lacd;

    .line 7101
    iget-object v4, v3, Lacd;->g:Ljava/util/regex/Pattern;

    if-nez v4, :cond_2

    .line 7102
    const-string/jumbo v4, "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

    .line 7103
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, v3, Lacd;->g:Ljava/util/regex/Pattern;

    .line 7105
    :cond_2
    iget-object v3, v3, Lacd;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 7106
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 2082
    if-eqz v3, :cond_1

    .line 2083
    iget-object v3, p0, Lacd$1;->a:Lacd;

    .line 8027
    iget-object v3, v3, Lacd;->f:Ljava/util/Map;

    .line 2083
    iget-object v0, v0, Labw;->a:Ljava/lang/String;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2088
    :cond_3
    iget-object v0, p0, Lacd$1;->a:Lacd;

    .line 9027
    invoke-virtual {v0}, Lacd;->a()V

    .line 69
    return-void
.end method
