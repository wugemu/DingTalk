.class public final Lgqi;
.super Ljava/lang/Object;
.source "AtEditTextWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgqi$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/widget/EditText;

.field f:Lgqi$a;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Lgqi$a;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "etMessage"    # Landroid/widget/EditText;
    .param p3, "listener"    # Lgqi$a;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgqi;->d:Ljava/util/Map;

    .line 41
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p2, p0, Lgqi;->e:Landroid/widget/EditText;

    .line 46
    iput-object p1, p0, Lgqi;->g:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lgqi;->f:Lgqi$a;

    .line 1053
    iget-object v0, p0, Lgqi;->e:Landroid/widget/EditText;

    new-instance v1, Lgqi$1;

    invoke-direct {v1, p0}, Lgqi$1;-><init>(Lgqi;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 50
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 111
    .local p1, "uidAndNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v1, "atText":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 116
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 119
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 2044
    const-wide/16 v10, 0x0

    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    .line 119
    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_2

    .line 122
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0xa

    cmp-long v7, v10, v12

    if-nez v7, :cond_4

    iget-object v7, p0, Lgqi;->g:Landroid/content/Context;

    sget v9, Lfzs$h;->and_at_all_nick:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "name":Ljava/lang/String;
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 126
    iget-object v7, p0, Lgqi;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 127
    iget-object v7, p0, Lgqi;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_3
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "@"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    aput-object v6, v7, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "\u0007"

    aput-object v10, v7, v9

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 122
    .end local v6    # "name":Ljava/lang/String;
    :cond_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    goto :goto_2

    .line 132
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    iget-object v7, p0, Lgqi;->e:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 137
    .local v2, "cursor":I
    if-lez v2, :cond_6

    iget-object v7, p0, Lgqi;->e:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 138
    iget-object v7, p0, Lgqi;->e:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    add-int/lit8 v8, v2, -0x1

    invoke-interface {v7, v8, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 141
    :cond_6
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 142
    .local v0, "atSpan":Landroid/text/SpannableString;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 143
    invoke-virtual {v0, v5}, Landroid/text/SpannableString;->charAt(I)C

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_7

    .line 144
    const-string/jumbo v7, " "

    add-int/lit8 v8, v5, 0x1

    const/16 v9, 0x11

    invoke-virtual {v0, v7, v5, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 142
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 147
    :cond_8
    iget-object v7, p0, Lgqi;->e:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 148
    .local v3, "editable":Landroid/text/Editable;
    iget-object v7, p0, Lgqi;->e:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v7

    invoke-interface {v3, v7, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 150
    iget-object v7, p0, Lgqi;->f:Lgqi$a;

    iget-object v8, p0, Lgqi;->e:Landroid/widget/EditText;

    iget-object v9, p0, Lgqi;->d:Ljava/util/Map;

    invoke-interface {v7, v8, v9}, Lgqi$a;->a(Landroid/widget/EditText;Ljava/util/Map;)V

    .line 152
    iget-object v7, p0, Lgqi;->e:Landroid/widget/EditText;

    iget-object v8, p0, Lgqi;->e:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 153
    iget-object v7, p0, Lgqi;->e:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 97
    .local p1, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 101
    .local v0, "uidAndNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 102
    .local v1, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_2

    .line 105
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 107
    .end local v1    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    invoke-direct {p0, v0}, Lgqi;->a(Ljava/util/Map;)V

    goto :goto_0
.end method
